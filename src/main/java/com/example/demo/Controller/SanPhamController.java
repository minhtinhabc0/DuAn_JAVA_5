package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.CartService;
import com.example.demo.DAO.SanPhamRepository;
import com.example.demo.Model.SanPham;
import com.example.demo.Service.SanPhamService;




@Controller
@RequestMapping("/sanphams")
public class SanPhamController {
	 @Autowired
	    private SanPhamService sanPhamService;
	 @Autowired
	    private SanPhamRepository sanPhamRepository;
	 @Autowired
	    private CartService cartService;
	 
	 @GetMapping
	 public String getAllSanPhams(Model model) {
	     List<SanPham> sanPhams = sanPhamService.getAllSanPhams();
	     model.addAttribute("sanPhams", sanPhams);
	     return "sanpham/danhsachsp";
	 }

	 
	 @RequestMapping("/sanphams/add/{id}")
	 public String add(@PathVariable("id") Integer id) {
	     SanPham sanPham = sanPhamRepository.findById(id).orElse(null);
	     if (sanPham != null) {
	         cartService.add(id);
	     }
	     return "redirect:/sanphams";
	 }
	
}
