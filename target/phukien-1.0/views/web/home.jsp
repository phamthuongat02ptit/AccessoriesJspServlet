<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>trang chu</title>
</head>
<body>
	<!-- Page Content -->
	<div class="container">
		<div class="row"
			style="text-align: center; background-color: orange; font-weight: 600; color: white; height: 40px;">
			<div class="col-lg-3"
				style="background-color: #f77824; padding-top: 9px;">
				<a href="#" style="color: white;">DANH MỤC SẢN PHẨM</a>
			</div>
			<div class="col-lg-9">
				<div class="row" style="padding-top: 9px;">
					<div class="col-lg-2">
						<a href="#" style="color: white;">TRANG CHỦ</a>
					</div>
					<div class="col-lg-2">
						<a href="#" style="color: white;">GIỚI THIỆU</a>
					</div>
					<div class="col-lg-3">
						<a href="#" style="color: white;">TẤT CẢ SẢN PHẨM</a>
					</div>
					<div class="col-lg-2">
						<a href="#" style="color: white;">TIN TỨC</a>
					</div>
					<div class="col-lg-2">
						<a href="#" style="color: white;">LIÊN HỆ</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">

			<div class="col-lg-3">
				<ul class="list-group"
					style="font-weight: 600; color: rgb(110, 109, 109);">
					<c:forEach var="item" items="${categoryModel}">
						<li class="list-group-item">${item.getName()}</li>
					</c:forEach>
				</ul>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">
				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid"
								src="<c:url value='/assets/image/slide/${slideModel.get(0).getUrl()}' />"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid"
								src="<c:url value='/assets/image/slide/${slideModel.get(1).getUrl()}' />"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid"
								src="<c:url value='/assets/image/slide/${slideModel.get(2).getUrl()}' />"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<!-- /.col-lg-9 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-3">
				<div
					style="font-size: 120%; font-weight: 600; border-bottom: 4px solid orange; margin-bottom: 15px;">Sản
					phẩm nổi bật</div>
				<div class="row">
					<c:forEach var="item" items="${productHighlightsModel}">
						<div class="col-lg-12 col-md-6 mb-4">
						<div class="card h-100">
							<div class="row" style="height: 150px;">
								<div class="col-lg-6" style="padding-right: 0px;">
									<a href="#"><img class="card-img-top"
										src="<c:url value='/assets/image/product/${item.getThumbnail()}' />" alt=""></a>
								</div>
								<div class="col-lg-6" style="padding: 0px;">
									<div class="card-body" style="padding: 0px;">
										<h4 class="card-title">
											<a href="#" style="font-size: 50%; margin-left: 10%;">${item.getTitle()}</a>
										</h4>
										<c:if test="${item.getPriceNew() != 0}">
											<h5 style="font-size: 80%; margin-left: 10%;">${item.getPriceNew()} VNĐ  <del style="font-size: 70%; margin-left: 10%; color: #f77824;">${item.getPriceOld()} VNĐ</del></h5>
										</c:if>
										<c:if test="${item.getPriceNew() == 0}">
											<h5 style="font-size: 80%; margin-left: 10%;">${item.getPriceOld()} VNĐ</h5>
										</c:if>
										<span style="margin-left: 10%;"> 
											<c:forEach var = "i" begin = "1" end = "${item.getEvaluate()}">
												<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
      										</c:forEach>
											<c:forEach var = "i" begin = "1" end = "${5 - item.getEvaluate()}">
												<i class="fa fa-star" style="font-size: 80%; color: rgb(129, 128, 127);"></i>
											</c:forEach>
										</span>
									</div>
								</div>
								<p class="card-text" style="padding-left: 10%;">${item.getShortDescription()}</p>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
			<div class="col-lg-9">
				<div
					style="font-size: 120%; font-weight: 600; border-bottom: 4px solid orange; margin-bottom: 15px;">Sản
					phẩm khuyến mại</div>
				<div class="row">
					<c:forEach var="item" items="${productSaleModel}">
						<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="<c:url value='/assets/image/product/${item.getThumbnail()}' />" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">${item.getTitle()}</a>
								</h4>
								<c:if test="${item.getPriceNew() != 0}">
									<h5>${item.getPriceNew()} VNĐ  <del style="font-size: 70%; margin-left: 20%; color: #f77824;">${item.getPriceOld()} VNĐ</del></h5>
								</c:if>
								<c:if test="${item.getPriceNew() == 0}">
									<h5>${item.getPriceOld()} VNĐ</h5>
								</c:if>
								<p class="card-text">${item.getShortDescription()}</p>
							</div>
							<div class="card-footer">
								<span style="margin-left: 10%;"> 
									<c:forEach var = "i" begin = "1" end = "${item.getEvaluate()}">
										<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
      								</c:forEach>
									<c:forEach var = "i" begin = "1" end = "${5 - item.getEvaluate()}">
										<i class="fa fa-star" style="font-size: 80%; color: rgb(129, 128, 127);"></i>
      								</c:forEach>
								</span>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<!-- /.row -->
		<div class="row">
			<div class="col-lg-3">
				<div
					style="font-size: 120%; font-weight: 600; border-bottom: 4px solid orange; margin-bottom: 15px;">Sản
					phẩm bán chạy</div>
				<div class="row">
					<div class="col-lg-12 col-md-6 mb-4">
						<div class="card h-100">
							<div class="row" style="height: 150px;">
								<div class="col-lg-6" style="padding-right: 0px;">
									<a href="#"><img class="card-img-top"
										src="http://placehold.it/700x400" alt=""></a>
								</div>
								<div class="col-lg-6" style="padding: 0px;">
									<div class="card-body" style="padding: 0px;">
										<h4 class="card-title">
											<a href="#" style="font-size: 80%; margin-left: 10%;">Item
												One</a>
										</h4>
										<h5 style="font-size: 80%; margin-left: 10%;">$24.99  <del style="font-size: 70%; margin-left: 10%;">$24.99</del></h5>
										<span style="margin-left: 10%;"> <i class="fa fa-star"
											style="font-size: 80%; color: orange;"></i> <i
											class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star"
											style="font-size: 80%; color: rgb(129, 128, 127);"></i>
										</span>
									</div>
								</div>
								<p class="card-text" style="padding-left: 10%;">Lorem ipsum
									dolor sit amet</p>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-6 mb-4">
						<div class="card h-100">
							<div class="row" style="height: 150px;">
								<div class="col-lg-6" style="padding-right: 0px;">
									<a href="#"><img class="card-img-top"
										src="http://placehold.it/700x400" alt=""></a>
								</div>
								<div class="col-lg-6" style="padding: 0px;">
									<div class="card-body" style="padding: 0px;">
										<h4 class="card-title">
											<a href="#" style="font-size: 80%; margin-left: 10%;">Item
												One</a>
										</h4>
										<h5 style="font-size: 80%; margin-left: 10%;">$24.99  <del style="font-size: 70%; margin-left: 10%;">$24.99</del></h5>
										<span style="margin-left: 10%;"> <i class="fa fa-star"
											style="font-size: 80%; color: orange;"></i> <i
											class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star"
											style="font-size: 80%; color: rgb(129, 128, 127);"></i>
										</span>
									</div>
								</div>
								<p class="card-text" style="padding-left: 10%;">Lorem ipsum
									dolor sit amet</p>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-6 mb-4">
						<div class="card h-100">
							<div class="row" style="height: 150px;">
								<div class="col-lg-6" style="padding-right: 0px;">
									<a href="#"><img class="card-img-top"
										src="http://placehold.it/700x400" alt=""></a>
								</div>
								<div class="col-lg-6" style="padding: 0px;">
									<div class="card-body" style="padding: 0px;">
										<h4 class="card-title">
											<a href="#" style="font-size: 80%; margin-left: 10%;">Item
												One</a>
										</h4>
										<h5 style="font-size: 80%; margin-left: 10%;">$24.99  <del style="font-size: 70%; margin-left: 10%;">$24.99</del></h5>
										<span style="margin-left: 10%;"> <i class="fa fa-star"
											style="font-size: 80%; color: orange;"></i> <i
											class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star"
											style="font-size: 80%; color: rgb(129, 128, 127);"></i>
										</span>
									</div>
								</div>
								<p class="card-text" style="padding-left: 10%;">Lorem ipsum
									dolor sit amet</p>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-6 mb-4">
						<div class="card h-100">
							<div class="row" style="height: 150px;">
								<div class="col-lg-6" style="padding-right: 0px;">
									<a href="#"><img class="card-img-top"
										src="http://placehold.it/700x400" alt=""></a>
								</div>
								<div class="col-lg-6" style="padding: 0px;">
									<div class="card-body" style="padding: 0px;">
										<h4 class="card-title">
											<a href="#" style="font-size: 80%; margin-left: 10%;">Item
												One</a>
										</h4>
										<h5 style="font-size: 80%; margin-left: 10%;">$24.99  <del style="font-size: 70%; margin-left: 10%;">$24.99</del></h5>
										<span style="margin-left: 10%;"> <i class="fa fa-star"
											style="font-size: 80%; color: orange;"></i> <i
											class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
											<i class="fa fa-star"
											style="font-size: 80%; color: rgb(129, 128, 127);"></i>
										</span>
									</div>
								</div>
								<p class="card-text" style="padding-left: 10%;">Lorem ipsum
									dolor sit amet</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<div
					style="font-size: 120%; font-weight: 600; border-bottom: 4px solid orange; margin-bottom: 15px;">Sản
					phẩm mới</div>
				<div class="row">
					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Item One</a>
								</h4>
								<h5>$24.99  <del style="font-size: 70%; margin-left: 20%;">$24.99</del></h5>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Amet numquam aspernatur!</p>
							</div>
							<div class="card-footer">
								<span style="margin-left: 10%;"> <i class="fa fa-star"
									style="font-size: 80%; color: orange;"></i> <i
									class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star"
									style="font-size: 80%; color: rgb(129, 128, 127);"></i>
								</span>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Item Two</a>
								</h4>
								<h5>$24.99  <del style="font-size: 70%; margin-left: 20%;">$24.99</del></h5>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor
									sit amet.</p>
							</div>
							<div class="card-footer">
								<span style="margin-left: 10%;"> <i class="fa fa-star"
									style="font-size: 80%; color: orange;"></i> <i
									class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star"
									style="font-size: 80%; color: rgb(129, 128, 127);"></i>
								</span>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Item Three</a>
								</h4>
								<h5>$24.99  <del style="font-size: 70%; margin-left: 20%;">$24.99</del></h5>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Amet numquam aspernatur!</p>
							</div>
							<div class="card-footer">
								<span style="margin-left: 10%;"> <i class="fa fa-star"
									style="font-size: 80%; color: orange;"></i> <i
									class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star"
									style="font-size: 80%; color: rgb(129, 128, 127);"></i>
								</span>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Item Four</a>
								</h4>
								<h5>$24.99  <del style="font-size: 70%; margin-left: 20%;">$24.99</del></h5>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Amet numquam aspernatur!</p>
							</div>
							<div class="card-footer">
								<span style="margin-left: 10%;"> <i class="fa fa-star"
									style="font-size: 80%; color: orange;"></i> <i
									class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star"
									style="font-size: 80%; color: rgb(129, 128, 127);"></i>
								</span>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Item Five</a>
								</h4>
								<h5>$24.99  <del style="font-size: 70%; margin-left: 20%;">$24.99</del></h5>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Amet numquam aspernatur! Lorem ipsum dolor
									sit amet.</p>
							</div>
							<div class="card-footer">
								<span style="margin-left: 10%;"> <i class="fa fa-star"
									style="font-size: 80%; color: orange;"></i> <i
									class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star"
									style="font-size: 80%; color: rgb(129, 128, 127);"></i>
								</span>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="#"><img class="card-img-top"
								src="http://placehold.it/700x400" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#">Item Six</a>
								</h4>
								<h5>$24.99  <del style="font-size: 70%; margin-left: 20%;">$24.99</del></h5>
								<p class="card-text">Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Amet numquam aspernatur!</p>
							</div>
							<div class="card-footer">
								<span style="margin-left: 10%;"> <i class="fa fa-star"
									style="font-size: 80%; color: orange;"></i> <i
									class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star" style="font-size: 80%; color: orange;"></i>
									<i class="fa fa-star"
									style="font-size: 80%; color: rgb(129, 128, 127);"></i>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- /.row -->
	</div>
</body>
</html>