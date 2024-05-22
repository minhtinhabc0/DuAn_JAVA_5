package com.example.demo.unitly;

import java.util.ArrayList;
import java.util.List;

import com.example.demo.Model.SanPham;

public class Cart {
	 private List<CartItem> items = new ArrayList<>();

	    public void addItem(SanPham sanPham, int quantity) {
	        for (CartItem item : items) {
	            if (item.getSanPham().getId().equals(sanPham.getId())) {
	                item.setQuantity(item.getQuantity() + quantity);
	                return;
	            }
	        }
	        items.add(new CartItem(sanPham, quantity));
	    }

	    public List<CartItem> getItems() {
	        return items;
	    }

	    public double getTotalPrice() {
	        return items.stream().mapToDouble(CartItem::getTotalPrice).sum();
	    }
}
