<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/e907e5cd51.js"
	crossorigin="anonymous"></script>
<style>
body {
	background-color: #f8f9fa;
}

.video-container {
	text-align: center;
	margin-top: 20px;
	margin-bottom: 20px;
}

.video-container video {
	width: 100%;
	max-width: 800px;
	border-radius: 10px;
}

.search-container {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-bottom: 20px;
}

.table-container {
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.card {
	margin-bottom: 20px;
}

.card-body p {
	margin: 0;
}
</style>
</head>
<body>

	<div class="container video-container">
		<a href="#"><video autoplay loop muted playsinline>
				<source src="img/newtl.mp4" type="video/mp4">
			</video></a>
	</div>

	<div class="container pb-5">
		<div class="row search-container">
			<div class="col-md-10">
				<form class="d-flex mb-5" role="search">
					<input class="form-control me-2" type="search"
						placeholder="Tìm kiếm" aria-label="Search">
					<button class="btn btn-outline-info" type="submit">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</form>
			</div>
			<div class="col-md-2">
				<select class="form-select" id="sortOrder" ng-model="selectedSort">
					<option value="">Mặc Định</option>
					<option value="gia">Giá tăng dần</option>
					<option value="-gia">Giá giảm dần</option>
				</select>
			</div>
		</div>

		<div class="row shadow-lg pt-4 table-container">
			<h1>Danh sách sản phẩm</h1>
			<div class="mb-3">
				<a href="/sanphams/new" class="btn btn-primary btn-sm">Thêm sản
					phẩm mới</a> <a href="/sanphams/cart" class="btn btn-secondary btn-sm">Xem
					giỏ hàng</a>
			</div>
			<div class="row">
				<c:forEach var="sanPham" items="${sanPhams}">
					<div class="col-md-4">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">${sanPham.tenSanPham}</h5>
								<p class="card-text">
									<strong>Giá:</strong> ${sanPham.giaGoc} đ
								</p>
								<p class="card-text">
									<strong>Mô tả:</strong> ${sanPham.moTa}
								</p>
								<p class="card-text">
									<strong>Size:</strong> ${sanPham.size}
								</p>
								<p class="card-text">
<strong>Màu sắc:</strong> ${sanPham.mauSac}
								</p>
								<form action="/cart/add/${sanPham.id}" method="post"
									class="d-flex align-items-center">
									
									<button type="submit" class="btn btn-outline-success btn-sm">Thêm
										vào giỏ hàng</button>
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>