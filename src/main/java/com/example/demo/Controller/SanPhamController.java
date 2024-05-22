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

import com.example.demo.Model.SanPham;
import com.example.demo.Service.SanPhamService;
import com.example.demo.unitly.Cart;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/sanphams")
public class SanPhamController {
	 @Autowired
	    private SanPhamService sanPhamService;
	 @GetMapping
	    public String getAllSanPhams(Model model) {
	        List<SanPham> sanPhams = sanPhamService.getAllSanPhams();
	        model.addAttribute("sanPhams", sanPhams);
	        return "sanpham/danhsachsp";
	    }
	 @PostMapping("/addToCart/{id}")
	 public String addToCart(@PathVariable Long id, @RequestParam int quantity, HttpSession session) {
	     SanPham sanPham = sanPhamService.getSanPhamById(id);
	     Cart cart = (Cart) session.getAttribute("cart");
	     if (cart == null) {
	         cart = new Cart();
	         session.setAttribute("cart", cart);
	     }
	     cart.addItem(sanPham, quantity);
	     return "redirect:/sanphams/cart"; // Chuyển hướng đến trang giỏ hàng
	 }

	    @GetMapping("/cart")
	    public String viewCart(HttpSession session, Model model) {
	        Cart cart = (Cart) session.getAttribute("cart");
	        if (cart == null) {
	            cart = new Cart();
	            session.setAttribute("cart", cart);
	        }
	        model.addAttribute("cart", cart);
	        return "Cart/giohang";
	    }
}
