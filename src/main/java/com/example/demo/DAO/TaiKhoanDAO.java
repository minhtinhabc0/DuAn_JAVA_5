package com.example.demo.DAO;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.TaiKhoan;

public interface TaiKhoanDAO extends JpaRepository<TaiKhoan, String> {
	Optional<TaiKhoan> findByUsername(String username);
}
