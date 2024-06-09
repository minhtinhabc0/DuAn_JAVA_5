<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.Entity.DanhMuc"%>
<%@ page import="com.example.demo.Entity.SanPham"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Danh Muc Detail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    integrity="sha384-eSEIk2rN/4Rxd4W1JQGb4tu2uKz7g5gouFj6m+LDCvMW0klv39F2n6lZcc2JELXJ"
    crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }
    h1, h2 {
        color: #333;
    }
    .product-images img {
        width: 100%;
        height: auto;
        object-fit: cover;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        margin-bottom: 10px;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Danh Mục Chi Tiết</h1>
        <table class="table table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Mã DM</th>
                    <th>Tên DM</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${danhMuc.maDM}</td>
                    <td>${danhMuc.tenDN}</td>
                </tr>
            </tbody>
        </table>

        <h2>Sản Phẩm</h2>
        <div class="row">
            <c:forEach var="sanPham" items="${sanPhamList}">
          
                <div class="col-md-4 mb-4">
                  <a href="/sanpham/chitiet/${sanPham.maSP}" class="text-decoration-none text-dark">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">${sanPham.tenSP}</h5>
                            <p class="card-text">Mã SP: ${sanPham.maSP}</p>
                            <p class="card-text">Giá: ${sanPham.gia}</p>
                            <div class="product-images">
                                <img src="${pageContext.request.contextPath}/hinh/${sanPham.img}" class="card-img-top" alt="Image">
                     <%--            <img src="${pageContext.request.contextPath}/hinh/${sanPham.img1}" class="card-img-top" alt="Image">
                                <img src="${pageContext.request.contextPath}/hinh/${sanPham.img2}" class="card-img-top" alt="Image"> --%>
                            </div>
                        </div>
                    </div>
                    </a>
                </div>
                
            </c:forEach>
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
