package com.example.demo.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
@Data
@Entity
@Table(name = "Gio_Hang")
public class GioHang {
	@Id
	@Column(name = "MaGH")
	private String maGH;

	@ManyToOne
	@JoinColumn(name = "MaSP")
	private SanPham sanPham;

	@ManyToOne
	@JoinColumn(name = "MaKH")
	private TaiKhoan taiKhoan;

}
