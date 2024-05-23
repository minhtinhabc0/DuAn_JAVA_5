package com.example.demo.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.SanPham;

@Service
public class SanPhamService {
	@Autowired
    SanPhamRepository sanPhamRepository;

    public List<SanPham> getAllSanPhams() {
        return sanPhamRepository.findAll();
    }


    public SanPham getSanPhamById(Integer id) {
        return sanPhamRepository.findById(id).orElse(null);
    }

 
}
