package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import jakarta.annotation.PostConstruct;

@Component
public class Checkdatabase {
	@Autowired
    private JdbcTemplate jdbcTemplate;

    @PostConstruct
    public void checkConnection() {
        try {
            jdbcTemplate.execute("SELECT 1");
            System.out.println("Kết nối với cơ sở dữ liệu thành công!");
        } catch (Exception e) {
            System.err.println("Kết nối với cơ sở dữ liệu thất bại: " + e.getMessage());
        }
    }
}
