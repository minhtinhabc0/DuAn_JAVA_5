<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/e907e5cd51.js" crossorigin="anonymous"></script>
</head>
<body>

<a href=""><video autoplay loop muted playsinline class="pt-5">
  <source src="img/newtl.mp4" type="video/mp4">
</video></a>
<div class="container pb-5" >
  <div class="row">
  <div class="col-10">
  <form class="d-flex mb-5" role="search">
    <input class="form-control me-2 " type="search" placeholder="Tìm kiếm" aria-label="Search" ng-model="keyword" ng-model-options="{debounce:500}">
    <button class="btn btn-outline-info" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
  </form>
</div>
<div class="col-2">
  <select class="form-select" id="sortOrder" ng-model="selectedSort">
    <option value="">Mặc Định</option>
    <option value="gia">Giá tăng dần </option>
    <option value="-gia">Giá giảm dần </option>
</select>

</div>
</div>
    <div class="row  shadow-lg pt-4">

      <div class="col-sm-2 col-md-3 "  ng-repeat="p in dsSPN | filter:{name:keyword}|orderBy:selectedSort " >  
          <a href="#!chitiet/{{p.id}}" style="text-decoration: none; color: black;" class="position-relative" ng-mouseover="showButton=true" ng-mouseout="showButton=false">     
              <img ng-src="{{p.hinh[0]}}" style="height: 300px; width: 300px;">     
                    <button ng-show="showButton" class="btn btn-sm btn-outline-warning position-absolute top-50 start-50 translate-middle">Chi tiết</button>
              <p>{{p.name}} </p>
              <b><p>{{p.gia|number:0}}đ</p></b>
       </a>

      </div>
        
       </div>
       </div>
  
 
</body>
</html>