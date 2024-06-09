package com.example.demo.Entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@Entity
@Table(name = "Tai_Khoan")
public class TaiKhoan implements Serializable {

    @Id
    @Column(name = "id", length = 5, nullable = false, unique = true)
    private String id;

    @Column(name = "Username", length = 50, nullable = false, unique = true)
    private String username;

    @Column(name = "Password", length = 50, nullable = false)
    private String password;

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

    @OneToMany(mappedBy = "taiKhoan", cascade = CascadeType.ALL)
    private List<GioHang> giohang;
}
