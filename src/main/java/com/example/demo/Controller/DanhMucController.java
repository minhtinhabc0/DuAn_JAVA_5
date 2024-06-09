package com.example.demo.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import jakarta.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.DAO.DanhMucDAO;
import com.example.demo.DAO.SanPhamDAO;
import com.example.demo.Entity.DanhMuc;
import com.example.demo.Entity.SanPham;

@Controller
public class DanhMucController {

    @Autowired
    private ServletContext servletContext;

    @Autowired
    private DanhMucDAO danhMucDAO;

    @Autowired
    private SanPhamDAO sanPhamDAO;

    @GetMapping("/danhmuc")
    public String getDanhMuc(Model model) {
        List<DanhMuc> danhMucList = danhMucDAO.findAll();
        model.addAttribute("danhMucList", danhMucList);
        return "header/header"; // Return the header JSP file
    }

    @GetMapping("/danhmuc/{maDM}")
    public String getDanhMucByMaDM(@PathVariable("maDM") int maDM, Model model) {
        Optional<DanhMuc> optionalDanhMuc = danhMucDAO.findByMaDM(maDM);
        if (optionalDanhMuc.isPresent()) {
            DanhMuc danhMuc = optionalDanhMuc.get();
            List<SanPham> sanPhamList = sanPhamDAO.findByMaDM(maDM);
            model.addAttribute("danhMuc", danhMuc);
            model.addAttribute("sanPhamList", sanPhamList);
            return "danhmuc-detail";
        } else {
            // Handle the case when no DanhMuc is found
            return "error"; // or throw an exception, depending on your requirements
        }
    }

    @GetMapping("/image/{maSP}/{imgType}")
    @ResponseBody
    public ResponseEntity<byte[]> getImage(@PathVariable("maSP") String maSP, @PathVariable("imgType") String imgType) {
        SanPham sanPham = sanPhamDAO.findByMaSP(maSP);
        String imgPath = "";
        if (imgType.equals("img")) {
            imgPath = sanPham.getImg();
        } else if (imgType.equals("img1")) {
            imgPath = sanPham.getImg1();
        } else if (imgType.equals("img2")) {
            imgPath = sanPham.getImg2();
        }

        byte[] imageBytes = getImageBytes(imgPath);
        if (imageBytes == null) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.setCacheControl(CacheControl.noCache().getHeaderValue());
        return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
    }

    private byte[] getImageBytes(String imgPath) {
        String fullPath = servletContext.getRealPath("/WEB-INF/hinh/" + imgPath);
        File imageFile = new File(fullPath);
        if (!imageFile.exists()) {
            return null;
        }
        try (FileInputStream fis = new FileInputStream(imageFile)) {
            byte[] imageBytes = new byte[(int) imageFile.length()];
            fis.read(imageBytes);
            return imageBytes;
        } catch (IOException e) {
            // Handle the exception
            return null;
        }
    }
}
