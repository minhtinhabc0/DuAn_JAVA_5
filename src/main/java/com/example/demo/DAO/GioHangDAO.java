package com.example.demo.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.GioHang;

public interface GioHangDAO extends JpaRepository<GioHang, String> {

}
