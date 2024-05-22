<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</head>
<body>
   <h2 class="mt-4 mb-4 text-white pt-5">Lịch sử mua hàng</h2>
<div style="height: 1000px;">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th scope="col">Ngày mua</th>
                <th scope="col">Mã đơn hàng</th>
                <th scope="col">Tổng tiền</th>
                <th scope="col">Tình trạng đơn hàng</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>2024-01-01</td>
                <td>#DH001</td>
                <td>$100.00</td>
                <td><span class="badge bg-success">Đã giao hàng</span></td>
                <td><a data-bs-toggle="collapse" href="#LS" role="button" aria-expanded="false">chi tiết</a></td>
            </tr>
            <tr>
                <td>2024-02-05</td>
                <td>#DH002</td>
                <td>$150.00</td>
                <td><span class="badge bg-warning text-dark">Đang xử lý</span></td>
                <td><a data-bs-toggle="collapse" href="#LS" role="button" aria-expanded="false">chi tiết</a></td>
            </tr>
            <tr>
                <td>2024-02-07</td>
                <td>#DH003</td>
                <td>500.000đ</td>
                <td><span class="badge bg-danger text-dark">đã hủy</span></td>
                <td><a  data-bs-toggle="collapse" href="#LS" role="button" aria-expanded="false">chi tiết</a></td>
            </tr>
        </tbody>
    </table>
    <!-- chi tiết LS giao hàng -->
<div class="collapse" id="LS">
    <div class="card card-body">
      <div class="listsp">
        <div class="form-check d-flex align-items-center">
  
            <label class="form-check-label mx-5" for="sanpham1">
              
        
    <div class="card mb-3 col-sm-6 listsanpham" style="max-width: 500px;">
        <div class="row g-0">
          <div class="col-md-4">
            <img src="img/giay.webp" class="img-fluid rounded-start" alt="...">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title">Giày kudo</h5>
              <p class="card-text">Giày size: 37 | màu: đen | quà tặng: không</p>
              <p class="card-text"><small class="text-body-secondary"><b>Số Lượng: </b> 1</small></p>
            </div>
          </div>
        </div> 
       </label>
          </div>
          </div>
    </div>
  </div>
  


</div>

</body>
</html>