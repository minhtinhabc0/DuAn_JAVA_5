<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/e907e5cd51.js" crossorigin="anonymous"></script>
</head>
<body>

<a href=""><video autoplay loop muted playsinline class="pt-5">
  <source src="img/newtl.mp4" type="video/mp4">
</video></a>
<div class="container pb-5" >
  <div class="row">
  <div class="col-10">
  <form class="d-flex mb-5" role="search">
    <input class="form-control me-2 " type="search" placeholder="Tìm kiếm" aria-label="Search" ">
    <button class="btn btn-outline-info" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
  </form>
</div>
<div class="col-2">
  <select class="form-select" id="sortOrder" ng-model="selectedSort">
    <option value="">Mặc Định</option>
    <option value="gia">Giá tăng dần </option>
    <option value="-gia">Giá giảm dần </option>
</select>

</div>
</div>
    <div class="row  shadow-lg pt-4">

     <h1>Danh sách sản phẩm</h1>
    <a href="/sanphams/new">Thêm sản phẩm mới</a>
    <a href="/sanphams/cart">Xem giỏ hàng</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá gốc</th>
            <th>Mô tả</th>
            <th>Size</th>
            <th>Màu sắc</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="sanPham" items="${sanPhams}">
            <tr>
                <td>${sanPham.id}</td>
                <td>${sanPham.tenSanPham}</td>
                <td>${sanPham.giaGoc}</td>
                <td>${sanPham.moTa}</td>
                <td>${sanPham.size}</td>
                <td>${sanPham.mauSac}</td>
                <td>
                    <form action="/sanphams/addToCart/${sanPham.id}" method="post">
                        <input type="number" name="quantity" value="1" min="1" />
                        <button type="submit">Thêm vào giỏ hàng</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
        
       </div>
       </div>
  
 
</body>
</html>