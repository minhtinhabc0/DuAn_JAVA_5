package com.example.demo.Entity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "San_Pham")
public class SanPham implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MaSP")
	private String maSP;

	@Column(name = "TenSP")
	private String tenSP;

	@Column(name = "Gia")
	private float gia;

	@Column(name = "Img")
	private String img;

	@ManyToOne
	@JoinColumn(name = "MaDM")
	private DanhMuc danhMuc;

	@ManyToOne
	@JoinColumn(name = "MaNV")
	private TaiKhoan taiKhoan;

	@Column(name = "chitiet")
	private String chitiet;

	@Column(name = "Mo_Ta")
	private String moTa;

	@Column(name = "Img1")
	private String img1;

	@Column(name = "Img2")
	private String img2;

	@Column(name = "mau1")
	private String mau1;

	@Column(name = "mau2")
	private String mau2;

	@Column(name = "mau3")
	private String mau3;

	@Column(name = "KT1")
	private int kt1;

	@Column(name = "KT2")
	private int kt2;

	@Column(name = "KT3")
	private int kt3;

	@Column(name = "KT4")
	private int kt4;

}
