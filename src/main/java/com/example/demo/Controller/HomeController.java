package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class HomeController {
@RequestMapping("/trangchu")
public String Home(Model model) {
	model.addAttribute("link", "../sanpham/sp.jsp");
	return"home/home";
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
