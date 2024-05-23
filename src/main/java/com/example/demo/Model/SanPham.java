package com.example.demo.Model;





import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name= "SanPham")
public class SanPham {
	  @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    private String tenSanPham;
	    private Double giaGoc;
	    private String moTa;
	    private String size;
	    private String mauSac;
	    @Transient
	    private int qty = 1;
	    // Getters and Setters
}
