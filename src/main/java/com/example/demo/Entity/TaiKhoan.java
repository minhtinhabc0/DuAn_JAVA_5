package com.example.demo.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
@Data
@Entity
@Table(name = "Tai_Khoan")
public class TaiKhoan {

@Id
@Column(name = "id", length = 5, nullable = false, unique = true)
private String id;

@Column(name = "Username",length = 50, nullable = false, unique = true)
private String username;

@Column(name = "Password",length = 50, nullable = false)
private String password;

//@Column(name = "Ma_GioHang")
//private String maGioHang;

@Column(name = "Ho_Ten")
private String hoTen;

@Column(name = "Email")
private String email;

@Column(name = "SDT")
private float sdt;

@Column(name = "Dia_Chi")
private String diaChi;

@Column(name = "Role")
private boolean role;


}
