<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    integrity="sha384-eSEIk2rN/4Rxd4W1JQGb4tu2uKz7g5gouFj6m+LDCvMW0klv39F2n6lZcc2JELXJ"
    crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    
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

.pagination {
    margin-top: 20px;
}

.pagination a {
    margin-right: 10px;
}

.pagination li {
    display: inline-block;
    margin-right: 10px;
    font-weight: bold;
    color: #007bff;
}

.pagination li.current {
    color: #000;
    text-decoration: underline;
}
.hinh{
	height: 200px;
	width: 200px;
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
                <form class="d-flex mb-5" role="search" action="/sanpham">
                    <input class="form-control me-2" type="search"
                        placeholder="Tìm kiếm" aria-label="Search" name="keywords"
                        value="${keywords}" placeholder="Enter keywords">
            <!--         <button class="btn btn-outline-info" type="submit">
                        <i class="fas fa-search"></i>
                    </button> -->
                </form>
            </div>
            <div class="col-md-2">
                <form id="sortForm" method="get" action="/sanpham">
                    <select class="form-select" id="sortOrder" name="sortOrder"
                        onchange="this.form.submit()">
                        <option value="" th:selected="${sortOrder == ' '}">Mặc Định</option>
                        <option value="gia" th:selected="${sortOrder == 'gia'}">Giá tăng dần</option>
                        <option value="-gia" th:selected="${sortOrder == '-gia'}">Giá giảm dần</option>
                    </select>
                </form>
            </div>
        </div>

        <div class="row shadow-lg pt-4 table-container">
            <h1>Danh sách sản phẩm</h1>
            <div class="row" id="sanphamupp">
                <c:forEach var="item" items="${page.content}">
                    <div class="col-md-4">
                    <a href="/sanpham/chitiet/${item.maSP}" class="text-decoration-none text-dark">
                        <div class="card">
                            <div class="card-body">
                                <img src="../../hinh/${item.img}" class="card-img-top" alt="Product Image">
                                <h5 class="card-title">${item.tenSP}</h5>
                                <p class="card-text">
                                    <strong>Giá:</strong> ${item.gia} đ
                                </p>
                                <p class="card-text">
                                    <strong>Mô tả:</strong> ${item.moTa}
                                </p>
                            
                            </div>
                        </div>
					</a>
                    </div>
                </c:forEach>
            </div>
         <nav aria-label="Page navigation example" class="mt-4">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="/sanpham?page=0">First</a></li>
                <li class="page-item ${page.number == 0 ? 'disabled' : ''}">
                    <a class="page-link" href="/sanpham?page=${page.number - 1}">Previous</a>
                </li>
                <li class="page-item"><a class="page-link" href="#"><strong>${page.number + 1}</strong></a></li>
                <li class="page-item ${page.number == page.totalPages - 1 ? 'disabled' : ''}">
                    <a class="page-link" href="/sanpham?page=${page.number + 1}">Next</a>
                </li>
                <li class="page-item"><a class="page-link" href="/sanpham?page=${page.totalPages - 1}">Last</a></li>
            </ul>
        </nav>
        </div>
    </div>
</body>
</html>

