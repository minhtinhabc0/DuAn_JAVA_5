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
<div class="container" >
        <div style="background-color: rgba(255, 255, 255, 0.5);">
            <div class="ms-3">
        <h1>{{sp.name}}</h1>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#!home">trang chủ</a></li>
              <li class="breadcrumb-item"><a href="#!SP">Sản phẩm</a></li>
              <li class="breadcrumb-item active" aria-current="page">Giày abc</li>
            </ol>
          </nav>
        </div>
        <hr>
       <div class="row" >
        <div class="col-sm-3 ms-3" >
            <div id="carouselExampleIndicators" class="carousel slide">
               
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img ng-src="{{sp.hinh[0]}}" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img ng-src="{{sp.hinh[1]}}" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img ng-src="{{sp.hinh[2]}}" class="d-block w-100" alt="...">
                  </div>
                </div>
             
       
              </div>
              <hr>
              <img ng-src="{{sp.hinh[0]}}" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" aria-label="Slide 1" class="hinh">
              <img ng-src="{{sp.hinh[1]}}" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" class="hinh">
              <img ng-src="{{sp.hinh[2]}}"  data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"  class="hinh">
        </div>
        <div class="col-sm-9 row">
            <div class="col-sm-5">  
            <h1>{{sp.name}}</h1>
           <h2 class="text-danger">{{sp.gia | number:0}}</h2>
           size:
           <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
            <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
            <label class="btn" for="btnradio1">{{sp.size[0]}}</label>
            <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off" checked>
            <label class="btn" for="btnradio2">{{sp.size[1]}}</label>
            <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" checked>
            <label class="btn" for="btnradio3">{{sp.size[2]}}</label>
            <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off" checked>
            <label class="btn" for="btnradio4">{{sp.size[3]}}</label>
          
            
          </div>
          <div class="mt-5">
          <button type="button" class="btn btn-outline-primary me-5" ng-click="addToCart(sp)">thêm vào giỏ hàng</button>
         </div>
        </div>
        <div class="col-sm-7">
            <div class="accordion"  id="accordionExample">
                <div class="accordion-item" >
                  <h2 class="accordion-header">
                    <button class=" accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                     chất liệu
                    </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                     {{sp.chatlieu}}
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    tính năng
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      {{sp.tinhnang}}
                   </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      Phụ kiện kèm theo
                    </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                      {{sp.phukien}}
                   </div>
                  </div>
                </div>
              </div>
            </div> 
        </div>
        </div>
        <hr class="mt-5 ">
       


   
  
           
              
           
       </div>

  
      
    </div>
    </div>
</body>
</html>