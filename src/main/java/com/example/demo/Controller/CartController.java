package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.CartService;
import com.example.demo.DAO.SanPhamRepository;
import com.example.demo.Model.SanPham;

@Controller
public class CartController {
	@Autowired
    CartService cartService;
	@Autowired
	SanPhamRepository sanPhamRepository;
    @RequestMapping("/cart/view")
    public String view(Model model) {
        model.addAttribute("cart", cartService);
        model.addAttribute("count", cartService.getCount());
        model.addAttribute("amount", cartService.getAmount());
        return "Cart/giohang";
    }

    @RequestMapping("/cart/add/{id}")
    public String add(@PathVariable("id") Integer id) {
        cartService.add(id);
        return "redirect:/cart/view";
    }

    @RequestMapping("/cart/remove/{id}")
    public String remove(@PathVariable("id") Integer id) {
        cartService.remove(id);
        return "redirect:/cart/view";
    }
    @PostMapping("/cart/update/{id}/{qty}")
    public String update(@PathVariable("id") Integer id, @RequestParam("actions") String actions) {
        SanPham sanPham = sanPhamRepository.findById(id).orElse(null);
        if (sanPham != null) {
            cartService.update(id, actions);
        }
        return "redirect:/cart/view";
    }


    @RequestMapping("/cart/clear")
    public String clear() {
        cartService.clear();
        return "redirect:/cart/view";
    }
}
