<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#"> <i class="fa fa-phone"></i> Hotline: 0398 615 636</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa fa-sign-in"></i>  Đăng Nhập</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa fa-key"></i>  Đăng Ký</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><i class="fa fa-shopping-cart"></i>  Giỏ hàng</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container">
    <div class="row" style="height: 130px; color: orange;">
      <div class="col-lg-3" style="height: 100%">
        <img src="<c:url value='/template/web/image/logo.PNG' />" alt="" style="height: 100%; width: 100%;">
      </div>
      <div class="col-lg-9">
        <div class="row" style="height: 40px; margin-top: 14px">
          <div class="col-lg-4" style="text-align: center;"> <i class="fa fa-truck"></i>  Giao Hàng Miễn Phí</div>
          <div class="col-lg-4" style="text-align: center;"><i class="fa fa-money"></i>  Thanh Toán Linh Hoạt</div>
          <div class="col-lg-4" style="text-align: center;"><i class="fa fa-refresh"></i>  Trả Hàng Trong 30 Ngày</div>
        </div>
        <div class="row">
          <div class="col-lg-9">
            <div class="input-group" style="width: 70%; margin-left: 12%;">
              <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
                aria-describedby="search-addon" />
              <button type="button" class="btn btn-outline-primary">search</button>
            </div>
          </div>
          <div class="col-lg-3">
            <i class="fa fa-shopping-cart" style="color: orange; font-size: 200%;"></i>
            0sp-0đ
          </div>
        </div>
      </div>
    </div>
  </div>