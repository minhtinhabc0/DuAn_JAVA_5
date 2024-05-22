package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
@RequestMapping("/trangchu")
public String Home() {
	return"home/home";
}
@RequestMapping("/giohang")
public String GH() {
	return "Giohang/giohang";
}
@RequestMapping("/coming")
public String coming() {
	return "khac/coming";
}
@RequestMapping("/gioithieu")
public String gt() {
	return "khac/gioithieu";
}
@RequestMapping("/dssp")
public String sp() {
	return "sanpham/danhsachsp";
}
}
