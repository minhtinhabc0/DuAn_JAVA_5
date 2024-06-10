package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.DAO.TaiKhoanDAO;
import com.example.demo.Entity.TaiKhoan;
import com.example.demo.service.SessionService;

import jakarta.servlet.http.HttpSession;



@Controller
public class LoginController {
	
	@Autowired
	TaiKhoanDAO tkDao;
	
	@Autowired
	SessionService session;
	
	@GetMapping("/login")
	public String index(@ModelAttribute("taiKhoan") TaiKhoan tk) {
		return "login/login";
	}
	
	@PostMapping("/login")
	public String login(Model model, @Validated @ModelAttribute("taiKhoan") TaiKhoan tk, BindingResult result, HttpSession session) {
	    if (!result.hasErrors()) {
	        TaiKhoan acc = null;
	        try {
	            acc = tkDao.findByUsername(tk.getUsername()).orElse(null);
	            if (acc != null && acc.getPassword().equals(tk.getPassword())) {
	                session.setAttribute("user", acc);  // Lưu thông tin người dùng vào session
	                String uri = (String) session.getAttribute("security-uri");

	                if (acc.isRole()) {  // Kiểm tra nếu là admin
	                    if (uri != null) {
	                        if (!uri.equals("") && uri.contains("/admin/")) {
	                            return "redirect:/admin/index";
	                        } else if (uri.contains("/account/")) {
	                            return "redirect:/account/index";
	                        } else {
	                            return "redirect:/account/index";  // Chuyển hướng đến trang tài khoản
	                        }
	                    } else {
	                        return "redirect:/account/index";  // Chuyển hướng đến trang tài khoản
	                    }
	                } else {
	                    return "redirect:/";  // Chuyển hướng đến trang chủ
	                }
	            } else {
	                model.addAttribute("error_loginPass", "Password không đúng!");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            model.addAttribute("error_loginUsername", "Username không tồn tại!");
	        }
	    }
	    return "login";
	}

	
	 @GetMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate();  // Xóa tất cả các thuộc tính trong session
	        return "redirect:/login";  // Chuyển hướng về trang đăng nhập
	    }
}
