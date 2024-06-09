<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg fixed-top navbar-light"
		id="navbar-example2">
		<div class="container-fluid">
			<a class="navbar-brand"
				style="color: aqua; font-size: 40px; text-decoration: underline; font-weight: bold;"
				href="/"><b>SKEY</b></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
					<li class="nav-item "><a class="nav-link " aria-current="page"
						href="/">Trang chủ</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle " href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Danh Mục </a>
						<ul class="dropdown-menu">
							<c:forEach var="danhMuc" items="${danhMucList}">
								<li><a class="dropdown-item"
									href="/danhmuc/${danhMuc.maDM}">${danhMuc.tenDN}</a></li>
							</c:forEach>
						</ul></li >
					<li class="nav-item"><a class="nav-link  " aria-current="page"
						href="#!gioithieu">Giới thiệu</a></li>
					<li class="nav-item"><a class="nav-link  " aria-current="page"
						href="#">sắp ra mắt</a></li>
				</ul>
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0"	${session.user != null ? '' : 'hidden'}>
					<li class="nav-item dropstart"><a
						class="nav-link dropdown-toggle" href="" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <img
							src="../img/avt.webp" alt="" height="40px" width="40px"
							style="border-radius: 20px;"> <span
							class="position-absolute translate-middle badge rounded-pill bg-RED"
							style="background-color: rgb(226, 35, 76);"> <span
								class="visually-hidden"></span></span> <!--thêm tên-->
					</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"><i
									class="fa-solid fa-user"></i> Tài Khoản</a></li>
							<li><a class="dropdown-item" href="#"><i
									class="fa-solid fa-key"></i> đổi mật khẩu</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="/cart/view"><i
									class="fa-solid fa-cart-shopping"></i> Giỏ hàng <span
									class="position-absolute translate-middle badge rounded-pill bg-RED"
									style="background-color: rgb(226, 35, 76);"> <span
										class="visually-hidden"></span></span></a></li>
							<li><a class="dropdown-item" href="#!LS"><i
									class="fa-solid fa-calendar-days"></i> Lịch sử mua hàng</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#" type="button"
								class="btn btn-primary" id="liveToastBtn"><i
									class="fa-solid fa-circle-info"></i> trợ giúp</a></li>
									
									<li><hr class="dropdown-divider"></li>									
							<li><a class="dropdown-item" href="#" type="button"
								class="btn btn-primary" id="liveToastBtn"><i
									class="fa-solid fa-circle-info"></i> Đăng xuất</a></li>
									
									
						</ul></li>
				</ul>
				
				<a href="/login" ${session.user != null ? 'hidden' : ''}>đăng nhập</a>
			</div>
		</div>
	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>
