package com.example.demo.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.SanPham;

public interface SanPhamDAO extends JpaRepository<SanPham, String> {

}
