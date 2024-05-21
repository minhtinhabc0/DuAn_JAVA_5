<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="image/logoo.webp">
    <title>YAME</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ775/rFt6ab00/1rLwVX5ykgC0ft0cXYk5" 
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/trangchinh.css">
    <style>
        /* Màu nền và chữ khi tab không được chọn */
        .nav-pills .nav-link {
            background-color: white;
            color: black;
        }

        /* Màu nền và chữ khi tab được chọn */
        .nav-pills .nav-link.active {
            background-color: black;
            color: white;
        }
    </style>
</head>

<body>
    <div class="container-fluid">
        <header class="container-fluid">
            <!-- Include your header HTML here -->
        </header>

        <div>
            <!-- Your view content goes here -->
        </div>

    </div>
    <div>
        <div class="modal fade" id="staticBackdrop" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="margin-left: 730px;"></button>
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pills-login-tab" data-bs-toggle="pill" data-bs-target="#pills-login" type="button" role="tab" aria-controls="pills-login" aria-selected="true" style="margin-left: 400px;">Đăng nhập</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-register-tab" data-bs-toggle="pill" data-bs-target="#pills-register" type="button" role="tab" aria-controls="pills-register" aria-selected="false">Đăng ký</button>
                            </li>
                        </ul>
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="pills-login-tab" tabindex="0">
                                <form class="row needs-validation" novalidate>

                                    <div class="col-md-6">
                                        <img src="image/dangnhap.jpg" class="img-fluid">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group mt-4">
                                            <input type="text" id="username" placeholder="Tên đăng nhập" name="username" class="form-control" required pattern=".{8,}">
                                            <div class="invalid-feedback">
                                                Không hợp lệ.
                                            </div>
                                        </div>
                                        <div class="form-group mt-4">
                                            <input type="password" id="password" placeholder="Mật khẩu" name="password" class="form-control" required>
                                        </div>
                                        <div class="form-group mt-3">
                                            <a href="#" style="text-decoration: none;" type="button" data-bs-toggle="modal" data-bs-target="#QuenMatKhau"><label>Quên mật khẩu?</label></a>
                                        </div>
                                        <div class="form-group mt-3">
                                            <button type="submit" class="btn btn-outline-dark" style="margin-left: 130px;">Đăng nhập</button>
                                        </div>
                                        <div class="form-group mt-3" style="text-align: center;">
                                            <label>Hoặc đăng nhập bằng</label>
                                        </div>
                                        <div class="form-group mt-3" style="text-align: center;">
                                            <span><i class="fa-brands fa-google" style="color: #e33131;font-size: 30px; "></i></span>
                                            <span><i class="fa-brands fa-facebook" style="color: #276fec;font-size: 30px; margin-left: 10px;"></i></span>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab" tabindex="0">
                                <form class="row needs-validation" novalidate>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <img src="image/dangnhap.jpg" class="img-fluid">
                                        </div>
                                        <div class="col-sm-5">
                                            <label>Vui lòng điền đầy đủ thông tin
                                            </label>
                                            <div class="form-group mt-4">
                                                <input type="text" placeholder="Họ và tên" class="form-control" required>
                                                <div class="invalid-feedback">
                                                    Họ và tên là bắt buộc.
                                                </div>
                                            </div>
                                            <div class="form-group mt-4">
                                                <input type="email" placeholder="Email" class="form-control" required>
                                                <div class="invalid-feedback">
                                                    Sai định dạng.
                                                </div>
                                            </div>
                                            <div class="form-group mt-4">
                                                <input type="text" placeholder="Tên đăng nhập" class="form-control" required pattern=".{8,}">
                                                <div class="invalid-feedback">
                                                    Sai định dạng.
                                                </div>
                                            </div>
                                            <div class="form-group mt-4">
                                                <input type="password" placeholder="Mật khẩu" class="form-control" id="password" required>
                                                <div class="invalid-feedback">
                                                    Sai định dạng.
                                                </div>
                                            </div>
                                            <div class="form-group mt-4">
                                                <input type="number" placeholder="Số điện thoại (Không bắt buộc)" class="form-control" pattern=".{9,}">
                                            </div>
                                            <div class="form-group mt-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required>
                                                    <label class="form-check-label" for="flexCheckDefault">
                                                        Tôi chấp nhận với mọi điều khoản
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group mt-3">
                                                <button class="btn btn-outline-dark" style="width: 307px;">Đăng ký</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer style="background-color: black" class="container-fluid">
        <div class="row ms-12">
            <a href="" style="text-align: center;margin-top: 20px;"> <img src="image/logo.png" alt=""></a>
            <hr>

            <div class="aaa" style="color: white; text-align: center;">
                <span>Đặt hàng và thu tiền tận nơi trên toàn quốc</span>
                <p></p>
                <span style="font-size: 20px;">Liên hệ: (028) 7307 xxxx</span>
                <p></p>
                <span style="font-size: 20px;color: #00FFFF;">THÔNG TIN THỜI TRANG KHUYẾN MÃI</span>
                <hr>
                <span style="font-size: 15px;color: #00FFFF;">Xem thêm Thông tin YaMe
                </span>
                <p></p>
                <span style="font-size: 15px;color: #00FFFF;">Danh sách CH YaMe trên toàn quốc </span>
            </div>
            <div class="a" style="color: white;">
                <p style="margin-bottom: 0;">© 2024 - CÔNG TY TNHH YAME VN</p>
                <span style="font-size: 10px;">Giấy CNĐKDN: 0310874914 – Ngày cấp: 25/11/2011 - Cơ quan cấp: Phòng Đăng Ký Kinh Doanh – Sở Kế Hoạch và Đầu Tư TP.HCM</span><br>
                <span style="font-size: 10px;">Địa chỉ đăng ký kinh doanh: 766/3B-3C Sư Vạn Hạnh (Nối dài), Phường 12, Quận 10, TP.HCM - Điện thoại: (028) 3868 xxxx - Mua hàng: (028) 7307 xxxx - Email:cskh@yame.vn</span>
            </div>
        </div>
    </footer>

    <script src="bootstrap-5.3.2-dist/bootstrap-5.3.2-dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/9d2a0e113b.js" crossorigin="anonymous"></script>
</body>

</html>
