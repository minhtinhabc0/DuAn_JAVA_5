package com.example.demo.DAO;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.Entity.SanPham;

public interface SanPhamDAO extends JpaRepository<SanPham, String> {

    @Query("SELECT o FROM SanPham o WHERE o.tenSP LIKE %?1%")
    Page<SanPham> findByKeywords(String keywords, Pageable pageable);

    @Query("SELECT o FROM SanPham o WHERE o.danhMuc.maDM =?1")
    List<SanPham> findByMaDM(int maDM);

    SanPham findByMaSP(String maSP);
}