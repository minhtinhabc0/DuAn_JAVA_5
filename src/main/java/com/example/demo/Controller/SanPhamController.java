package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.DAO.SanPhamDAO;
import com.example.demo.Entity.SanPham;

@Controller
public class SanPhamController {
@Autowired
SanPhamDAO sanPhamDAO;

@RequestMapping("/sanpham")
public String sanpham(Model model) {
	List<SanPham> sanPhams = sanPhamDAO.findAll();
	model.addAttribute("sanphamm", sanPhams);
	model.addAttribute("link", "../sanpham/danhsachsp.jsp");
	return "home/home";
}
}
