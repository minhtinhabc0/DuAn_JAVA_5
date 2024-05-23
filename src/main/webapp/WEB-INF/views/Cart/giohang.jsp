<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>

<div class="container" style="margin-bottom: 210px;">
    <div class="row backgr pt-5">
        <h2>Giỏ hàng</h2>
        <div class="col-sm-9">
        <form action="/cart/clear" method="post">
    <button type="submit">Xóa giỏ hàng</button>
</form>
            
          <c:forEach var="item" items="${cart.getItems()}">
                <div class="card mb-3 col-sm-6 listsanpham" style="width: 100%;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="" class="img-fluid rounded-start" alt="">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">${item.tenSanPham}</h5>
                                <p class="text-danger">${item.giaGoc}</p>
                               <form action="/cart/update/${item.id}/${item.qty}" method="post">
                            <button type="submit" name="actions" value="dis">-</button>
                            ${item.qty}
                           <button type="submit" name="actions" value="plus">+</button>

                        </form>
                            </div>
                        </div>
                    </div>
                    <a href="" class="btn"><i class="fa-solid fa-xmark"></i></a>
                        <form action="/cart/remove/${item.id}" method="post">
                <button type="submit">Xóa</button>
            </form>
                </div>
                <hr>
            </c:forEach>
        </div>

        <div class="col-sm-3 float-end">
            <h2>Thanh Toán</h2>
            <div style="padding-bottom: 100px;">
                Địa chỉ: 
                <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">chỉnh sửa</a>
            </div>
            <b>TỔNG CỘNG: <p style="color: red;">${amount} đ</p></b>
             <p>Tổng số lượng: ${count}</p>
    <p>Tổng tiền: ${amount}</p>
            <div class="float-end">
                <a href="#"><button type="button" class="btn btn-outline-success"><i class="fa-solid fa-cart-shopping"></i> Thanh Toán</button></a>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade modal-xl" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Địa chỉ</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form name="formDatHang">
                    <div class="alert alert-danger" ng-show="formDatHang.$invalid">Vui lòng nhập đầy đủ thông tin</div>
                    <div class="row">
                        <div class="col-md-4">
                            Tỉnh: <c:out value=""/>
                            <select name="tinh" required class="form-control" ng-model="tinh" ng-options="x.Name for x in dsTinh">
                            </select>
                        </div>
                        <div class="col-md-4">
                            Quận/Huyện: <c:out value=""/>
                            <select name="huyen" required class="form-control" ng-model="huyen" ng-options="x.Name for x in tinh.Districts">
                            </select>
                        </div>
                        <div class="col-md-4">
                            Xã: <c:out value=""/>
                            <select name="xa" required class="form-control" ng-model="xa" ng-options="x.Name for x in huyen.Wards">
                            </select>
                        </div>
                    </div>
                    <label for="diachi">Nhập tên đường, số nhà cụ thể</label>
                    <input type="text" ng-model="diachi" class="form-control">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-bs-dismiss="modal">Xác nhận</button>
            </div>
        </div>
    </div>
</div>

<div class="container" style="padding-top: 150px;" <c:if test="${cart.items.size() == 0}">style="display: none;"</c:if>>
    <div style="text-align: center; padding-bottom: 350px;">
       
        <p><a href="/sanphams">Tiếp tục mua hàng</a></p>
    </div>
</div>

</body>
</html>
