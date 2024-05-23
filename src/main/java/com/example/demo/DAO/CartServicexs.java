package com.example.demo.DAO;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;


import com.example.demo.Model.SanPham;

@SessionScope
@Service
public class CartServicexs implements CartService {
    private Map<Integer, SanPham> map = new HashMap<>();

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Override
    public SanPham add(Integer id) {
        SanPham sanPham = map.get(id);
        if (sanPham == null) {
            sanPham = sanPhamRepository.findById(id).orElse(null);
            if (sanPham != null) {
                sanPham.setQty(1);
                map.put(id, sanPham);
            }
        } else {
            sanPham.setQty(sanPham.getQty() + 1);
        }
        return sanPham;
    }

    @Override
    public void remove(Integer id) {
        map.remove(id);
    }


    public SanPham update(Integer id, String actions) { 
        SanPham sanPham = map.get(id);
        if (sanPham != null) {
            if ("dis".equals(actions) && sanPham.getQty() > 0) {
                sanPham.setQty(sanPham.getQty() - 1);
            } else if ("plus".equals(actions) && sanPham.getQty() < 100) {
                sanPham.setQty(sanPham.getQty() + 1);
            }
        }
        return sanPham; 
    }
    @Override
    public void clear() {
        map.clear();
    }

    @Override
    public Collection<SanPham> getItems() {
        return map.values();
    }

    @Override
    public int getCount() {
        return map.values().stream().mapToInt(SanPham::getQty).sum();
    }

    @Override
    public double getAmount() {
        return map.values().stream().mapToDouble(item -> item.getGiaGoc() * item.getQty()).sum();
    }


}
