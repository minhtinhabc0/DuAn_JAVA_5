package com.example.demo.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.GioHang;
import com.example.demo.Entity.TaiKhoan;

public interface GioHangDAO extends JpaRepository<GioHang, String> {
	 List<GioHang> findByTaiKhoan(TaiKhoan taiKhoan);
}
