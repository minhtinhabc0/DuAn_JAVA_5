package com.example.demo.DAO;



import java.util.Collection;



import com.example.demo.Model.SanPham;

public interface CartService {

	SanPham add(Integer id);
    void remove(Integer id);
    SanPham update(Integer id, String actions);
    void clear();
    Collection<SanPham> getItems();
    int getCount();
    double getAmount();

}
