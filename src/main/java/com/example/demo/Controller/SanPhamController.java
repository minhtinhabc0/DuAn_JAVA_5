package com.example.demo.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.DAO.SanPhamDAO;
import com.example.demo.Entity.SanPham;

import jakarta.servlet.http.HttpSession;

@Controller
public class SanPhamController {
    @Autowired
    SanPhamDAO sanPhamDAO;

    @RequestMapping("/sanpham")
    public String product(Model model, @RequestParam("keywords") Optional<String> keywords,
                          @RequestParam("page") Optional<Integer> p, HttpSession session,
                          @RequestParam("sortOrder") Optional<String> sortOrder) {
        String kwords = keywords.orElse((String) session.getAttribute("keywords"));
        if (kwords == null) {
            kwords = "";
        }
        session.setAttribute("keywords", kwords);

        
        String sortField = "id";
        Sort.Direction sortDirection = Sort.Direction.ASC;

        if (sortOrder.isPresent()) {
            String order = sortOrder.get();
            if (order.startsWith("-")) {
                sortField = order.substring(1);
                sortDirection = Sort.Direction.DESC;
            } else {
                sortField = order;
                sortDirection = Sort.Direction.ASC;
            }
        }

        Sort sort = Sort.by(sortDirection, sortField);
        Pageable pageable = PageRequest.of(p.orElse(0), 6, sort);
        Page<SanPham> pages = sanPhamDAO.findByKeywords("%" + kwords + "%", pageable);
        model.addAttribute("page", pages);
        model.addAttribute("keywords", kwords);
        model.addAttribute("sortOrder", sortOrder.orElse("")); 
        model.addAttribute("link", "../sanpham/danhsachsp.jsp");
        return "home/home";
    }
    
    @GetMapping("/sanpham/chitiet/{id}")
    public String viewProductDetail(@PathVariable("id") String id, Model model) {
        SanPham sanPham = sanPhamDAO.findById(id).orElse(null);
        
        if (sanPham != null) {
            model.addAttribute("sanPham", sanPham);
                    
            return "chitiet/show";
        } else {
        
            return "error";
        }
    }

}
    


