package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.DAO.GioHangDAO;
import com.example.demo.DAO.SanPhamDAO;
import com.example.demo.DAO.TaiKhoanDAO;
import com.example.demo.Entity.GioHang;
import com.example.demo.Entity.SanPham;
import com.example.demo.Entity.TaiKhoan;

@Controller

public class GioHangController {
	  @Autowired
	    private GioHangDAO gioHangDAO;

	    @Autowired
	    private SanPhamDAO sanPhamDAO;

	    @Autowired
	    private TaiKhoanDAO taiKhoanDAO;

	    @GetMapping("/user/{userId}")
	    public String viewCart(@PathVariable("userId") String userId, Model model) {
	        TaiKhoan taiKhoan = taiKhoanDAO.findById(userId).orElse(null);
	        if (taiKhoan == null) {
	            return "error";
	        }

	        List<GioHang> gioHang = gioHangDAO.findByTaiKhoan(taiKhoan);
	        model.addAttribute("gioHang", gioHang);
	        return "giohang/view";
	    }

	    @PostMapping("/add")
	    @ResponseBody
	    public String addToCart(@RequestParam("productId") String productId, @RequestParam("userId") String userId) {
	        TaiKhoan taiKhoan = taiKhoanDAO.findById(userId).orElse(null);
	        SanPham sanPham = sanPhamDAO.findById(productId).orElse(null);

	        if (taiKhoan == null || sanPham == null) {
	            return "error";
	        }

	        GioHang gioHang = new GioHang();
	        gioHang.setTaiKhoan(taiKhoan);
	        gioHang.setSanPham(sanPham);
	        gioHang.setMaGH(generateMaGH());

	        gioHangDAO.save(gioHang);
	        return "success";
	    }

	    @PostMapping("/remove")
	    @ResponseBody
	    public String removeFromCart(@RequestParam("cartId") String cartId) {
	        gioHangDAO.deleteById(cartId);
	        return "success";
	    }

	    private String generateMaGH() {
	        return "GH" + System.currentTimeMillis(); 
	    }
}
