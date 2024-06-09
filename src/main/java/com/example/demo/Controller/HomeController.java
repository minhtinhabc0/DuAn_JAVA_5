package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.DAO.DanhMucDAO;
import com.example.demo.Entity.DanhMuc;

@Controller

public class HomeController {
	@Autowired
	private DanhMucDAO danhMucDAO;

	@RequestMapping("/")
	public String Home(Model model) {
		List<DanhMuc> danhMucList = danhMucDAO.findAll();
		model.addAttribute("danhMucList", danhMucList);
		model.addAttribute("link", "../sanpham/sp.jsp");
		return "home/home";
	}

	@RequestMapping("/coming")
	public String coming() {
		return "khac/coming";
	}

	@RequestMapping("/gioithieu")
	public String gt() {
		return "khac/gioithieu";
	}

}
