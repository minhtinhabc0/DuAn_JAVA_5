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
    table {
        width: 100%;
        margin-bottom: 20px;
        border-collapse: collapse;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        background-color: #fff;
    }
    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f8f8f8;
        font-weight: bold;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    img {
        width: 100px;
        height: 100px;
        object-fit: cover;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        margin-right: 10px;
    }
    .product-images {
        display: flex;
        gap: 10px;
    }
</style>
</head>
<body>
	<h1>Danh Mục Chi Tiết</h1>
	<table>
		<thead>
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
	<table>
		<thead>
			<tr>
				<th>Mã SP</th>
				<th>Tên SP</th>
				<th>Giá</th>
				<th>Hình Ảnh</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="sanPham" items="${sanPhamList}">
				<tr>
					<td>${sanPham.maSP}</td>
					<td>${sanPham.tenSP}</td>
					<td>${sanPham.gia}</td>
					<td>
						<div class="product-images">
							<img src="${pageContext.request.contextPath}../hinh/${sanPham.img}" alt="Image">
							<img src="${pageContext.request.contextPath}../hinh/${sanPham.img1}" alt="Image">
							<img src="${pageContext.request.contextPath}../hinh/${sanPham.img2}" alt="Image">
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
