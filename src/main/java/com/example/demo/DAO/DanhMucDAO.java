package com.example.demo.DAO;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.DanhMuc;

public interface DanhMucDAO extends JpaRepository<DanhMuc, Integer> {
    Optional<DanhMuc> findByMaDM(int maDM);
}