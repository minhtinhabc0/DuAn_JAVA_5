package com.example.demo.unitly;

import com.example.demo.Model.SanPham;

public class CartItem {
	private SanPham sanPham;
    private int quantity;

    public  CartItem(SanPham sanPham, int quantity) {
        this.sanPham = sanPham;
        this.quantity = quantity;
    }

    public SanPham getSanPham() {
        return sanPham;
    }

    public void setSanPham(SanPham sanPham) {
        this.sanPham = sanPham;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return sanPham.getGiaGoc() * quantity;
    }
}
