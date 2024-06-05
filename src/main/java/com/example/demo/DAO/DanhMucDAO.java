package com.example.demo.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entity.DanhMuc;

public interface DanhMucDAO extends JpaRepository<DanhMuc, Integer> {

}
