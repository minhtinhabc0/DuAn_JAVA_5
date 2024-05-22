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


 <jsp:include page="../sanpham/sp.jsp" />
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

<div class="modal fade" id="login" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="login">Đăng Nhập</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form class="col-sm-6 needs-validation" novalidate>
                        <div class="mb-3">
                            <label for="emaildn" class="form-label">Email</label>
                            <input type="email" class="form-control" id="emaildn" required aria-describedby="emailHelp">
                            <div id="emailHelp" class="form-text"></div>
                            <div class="valid-feedback"> good</div>
                            <div class="invalid-feedback">Vui lòng nhập đầy đủ email của bạn</div>
                        </div>
                        <div class="mb-3">
                            <label for="mkdn" class="form-label">Mật khẩu</label>
                            <input type="password" class="form-control" id="mkdn" required>
                            <div class="valid-feedback"> good</div>
                            <div class="invalid-feedback">Mật khẩu không đúng</div>
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="checkdn">
                            <label class="form-check-label" for="checkdn">Ghi nhớ mật khẩu</label>
                        </div>
                        <button type="submit" class="btn btn-primary">đăng nhập</button>
                    </form>
                    <div class="col-sm-6 text-center">
                        <img src="img/Skey.jpg" alt="" height="200px" width="200px">
                        <p> <a href=""data-bs-target="#quenmk" data-bs-toggle="modal">Quên Mật khẩu?</a></p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <p>bạn chưa có tài khoản? <a href="" data-bs-target="#dangky" data-bs-toggle="modal">Đăng ký</a> ngay</p>
            </div>
        </div>
    </div>
</div>

<!-- other modals -->
<div class="modal fade" id="dangky" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabe2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Đăng ký</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="col" name="checkmk" ng-submit="submitForm()" novalidate>
          <div class="mb-3">
            <label for="exampleInputEmail2" class="form-label">Địa chỉ Email</label>
            <input type="email" class="form-control" id="emaildk" aria-describedby="emailHelp"required>
            <div id="emailHelp" class="form-text">Nhập địa chỉ Email của bạn</div>
            <div class="invalid-feedback">Vui lòng nhập đầy đủ email của bạn</div>
          </div>
          <div class="mb-3">
            <label for="mk1" class="form-label">Mật khẩu</label>
            <input type="password" class="form-control" id="mkdk1" ng-model="mk1" required>
            <div class="invalid-feedback">mật khẩu không được để trống</div>
          </div>
          <div class="mb-3">
              <label for="mk2" class="form-label">nhập lại Mật khẩu</label>
              <input type="password" class="form-control" id="mkdk2" ng-model="mk2" required>
              <div class="invalid-feedback">mật khẩu không được để trống</div>
              <div ng-show="checkmk.mk2.$dirty && mk1 !== mk2">
                <span class="text-danger">Passwords do not match.</span>
              </div>
            </div>
          <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="checkdk">
            <label class="form-check-label" for="checkdk">đồng ý điều khoản</label>
          </div>
          <button type="submit" class="btn btn-primary">Đăng ký</button>
        </form>
      </div>
      <div class="modal-footer">
        <p>Bạn đã có tài khoản <a href=""data-bs-target="#login" data-bs-toggle="modal">Đăng nhập</a></p>
      </div>
    </div>
  </div>
</div>
<!-- modal đổi mk -->
<div class="modal fade" id="pass" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabe2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5 text-black" id="exampleModalToggleLabel"> Đổi mật khẩu</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="col">
          <div class="mb-3">
            <label for="mkdnn" class="form-label">Mật khẩu cũ</label>
            <input type="password" class="form-control" id="mkdnn" required>
          </div>
          <div class="mb-3">
            <label for="mkq1" class="form-label">Mật khẩu Mới</label>
            <input type="password" class="form-control" id="mkq1" required>
          </div>
          <div class="mb-3">
              <label for="mkq2" class="form-label">nhập lại Mật khẩu</label>
              <input type="password" class="form-control" id="mkq2" required>
            </div>
          <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="checkq">
            <label class="form-check-label" for="checkq">đồng ý điều khoản</label>
          </div>
          <button type="submit" class="btn btn-primary">Xác nhận</button>
        </form>
      </div>
  
    </div>
  </div>
</div>
<!-- quên mk -->
<div class="modal fade" id="quenmk" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabe2" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5 text-black" id="exampleModalToggleLabel"> quên mật khẩu</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class="col" novalidate>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">nhập Email</label>
            <input type="email" class="form-control" id="emaill" required>
          </div>
          <div class="mb-3 row">
            <div class="col-auto">
              <label for="token" class="visually-hidden">Mã xác nhận</label>
              <input type="text" class="form-control" id="token" placeholder="Mã được gửi về Gmail">
            </div>
            <div class="col-auto">
              <button type="button" class="btn btn-primary mb-3">Gửi mã</button>
            </div>
          </div>
          <div class="mb-3">
              <label for="mknew" class="form-label">Mật khẩu</label>
              <input type="password" class="form-control" id="mknew" required>
            </div>
      
          <button type="submit" class="btn btn-primary">Xác nhận</button>
        </form>
      </div>
    </div>
  </div>
</div>

</body>
</html>
