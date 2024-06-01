<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<link href="/css/indexx.css">
</head>
<body>
<div class="toast-container position-fixed bottom-0 end-0 p-3">
    <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
            <img src="img/Skey.jpg" class="rounded me-2" alt="..." height="20px" width="20px" style="border-radius: 50%;">
            <strong class="me-auto">Skey suppost</strong>
            <small class="text-body-secondary">just now</small>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">
            Hi! welcome to SkeyShop
        </div>
    </div>
</div>
<jsp:include page="../header/header.jsp" />


 <jsp:include page="${link}" />
 <script src="https://kit.fontawesome.com/e907e5cd51.js" crossorigin="anonymous"></script>
 
<footer class="row" style="padding-top: 30px;">
    <div class="col-sm-4">
        <h5>Thông tin <i class="fa-solid fa-folder"></i></h5>
        <p>CN1: Ngã 3 đường gần đó, Quận ngay đây, TP.HCM</p>
        <p>CN2: 1999/đường 30/2,Quận kế bên, TP.HCM</p>
        <p><a href="https://www.youtube.com/watch?v=iyF0GIcC8d4">Chính sách bảo mật</a></p>
        <p><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">điều khoảng</a></p>
    </div>
    <div class="col-sm-4">
        <h5>Liên hệ <i class="fa-solid fa-phone-volume fa-shake"></i></h5>
        <P>Khiếu nại: 0987678999</P>
        <p>Bảo Hành: 0892345432</p>
    </div>
    <div class="col-sm-4">
        <h5>Theo dõi chúng tôi <i class="fa-solid fa-plus"></i></h5>
        <p>Theo dõi chúng tôi trên mạng xã hội để cập nhật thông tin mới nhất về sản phẩm và khuyến mãi.</p>
        <div class="row">
            <a class="col-md-4" href="https://www.facebook.com/groups/sp24.web207.sd18304"><i class="fa-brands fa-facebook"></i>  Facebook</a>
            <a class="col-md-4" href="#!SP"> <i class="fa-brands fa-instagram"></i> instagram</a>
            <a class="col-md-4" href=""><i class="fa-brands fa-discord"></i> discord</a>
        </div>
    </div>
</footer>



</body>
</html>
