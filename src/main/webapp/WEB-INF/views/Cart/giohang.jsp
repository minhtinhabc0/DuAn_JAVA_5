<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</head>
<body>
 <div class="container" style="margin-bottom: 210px;" ng-if="cart.length > 0">
        
        <!-- Button trigger modal -->



     
        <div class="row backgr pt-5" >
               <h2>Giỏ hàng </h2>
               
            <div class="col-sm-9">
              <button ng-click="removeAllFromCart()" class="btn float-end">xóa hết</button>
             
                     
              <div class="listsp" ng-repeat="sp in cart">
               
                
            <div class="card mb-3 col-sm-6 listsanpham" style="width: 100%;">
                <div class="row g-0">
                  <div class="col-md-4">
                    <img ng-src="{{sp.hinh[0]}}" class="img-fluid rounded-start" alt="...">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title"></h5>
                      <p class="text-danger"></p>
                      <p class="card-text">Giày size: </p>
                      <div class="input-group input-group-sm mb-3">
                        <button class="btn btn-outline-secondary decreaseBtn border-black"
                          >-</button>
                        <span class="quantitySpan btn border-black"></span>
                        <button class="btn btn-outline-secondary increaseBtn border-black"
                           >+</button>
                    </div>
                    
                    </div>
                  </div>
                  <button class="btn" ><i class="fa-solid fa-xmark"></i></button>
                </div> 
               </label>
                  </div>
                
      
        <hr>
</div>      
</div>

  
                 
                      


                
              
                     
                 





            <div class="col-sm-3 float-end" >
              <h2>Thanh Toán</h2>
              <div style="padding-bottom: 100px;">
            Địa chỉ :{{diachi}},  {{xa.Name}}, {{huyen.Name}},  {{tinh.Name}}  <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">chỉnh sửa</a>

              </div>
           





              
                  <b>TỔNG CỘNG: <p style="color: red;">  {{getTotalPrice() | number:0 }} đ</p> </b>
              <div class="float-end">
        <a href="#">  <button type="button" class="btn btn-outline-success " ><i class="fa-solid fa-cart-shopping"></i> Thanh Toán</button></a> 
          </div>
            </div>
            </div>
            

           
        </div>
  
      </div>

<!-- Modal -->
<div class="modal fade modal-xl" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">địa chỉ</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">


<form name="formDatHang">
  <div class="alert alert-danger" ng-show="formDatHang.$invalid">Vui lòng nhập đầy đủ thông tin</div>
  <div class="row">
    <div class="col-md-4">
      Tỉnh: {{tinh.Name}}
      <select name="tinh" required id="" class="form-control" ng-model="tinh" ng-options="x.Name for x in dsTinh">
        <!-- <option value="{{tinh.id}}" ng-repeat="tinh in dsTinh">{{tinh.name}}</option> -->
      </select>
    </div>
    <div class="col-md-4">
      Quận/Huyện: {{huyen.Name}}
      <select name="huyen" required id="" class="form-control" ng-model="huyen"
        ng-options="x.Name for x in tinh.Districts">
        <!-- <option value="{{tinh.id}}" ng-repeat="tinh in dsTinh">{{tinh.name}}</option> -->
      </select>
    </div>
    <div class="col-md-4">
      Xã: {{xa.Name}}
      <select name="xa" required id="" class="form-control" ng-model="xa" ng-options="x.Name for x in huyen.Wards">
        <!-- <option value="{{tinh.id}}" ng-repeat="tinh in dsTinh">{{tinh.name}}</option> -->
      </select>
    </div>
  </div>
  <label for="diachi">Nhập tên đường, số nhà cụ thể</label>
  <input type="text" ng-model="diachi" class="form-control">
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-bs-dismiss="modal">xác nhận</button>
       
      </div>
    </div>
  </div>
</div>
<div class="container" style="padding-top: 150px;" ng-if="cart.length == null" >
  <div style="text-align: center; padding-bottom: 350px;" >

  <img  src="img/giohangtrong.webp"   alt="">
  <p><a href="#!home"> tiếp tục mua hàng</a> </p>
  </div>
</div> 
       <c:forEach var="item" items="${cart.items}">
            <tr>
                <td>${item.sanPham.id}</td>
                <td>${item.sanPham.tenSanPham}</td>
                <td>${item.sanPham.giaGoc}</td>
                <td>${item.sanPham.mauSac}</td>
            </tr>
            <hr>
        </c:forEach>
</body>
</html>