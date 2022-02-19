<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style.css" type="text/css">
<title>Trang Chủ FPT Shop</title>
</head>
<body>
<div class="container-fluid">
<!-- add header -->
<%@ include file="header.jsp" %>
<!-- home content -->
<div class="products row">
	<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 col-xl-8">
		<h5>THÔNG TIN SẢN PHẨM</h5>
		<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<a href="#"><img class="images" src="images/iPhone-13.jpg" alt="iphone-13-promax"/></a>
				<p>Apple</p>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<a href="#"><img class="images" src="images/samsung-galaxy-s21-ultra-fpt-1.jpg" alt="samsung-s21"/></a>
				<p>Samsung</p>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<a href="#"><img class="images" src="images/oppo-f17-pro.jpg" alt="oppo-s21"/></a>
				<p>Oppo</p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<a href="#"><img class="images" src="images/oppo-f17-pro3.jpg" alt="iphone-12"/></a>
				<p>V-Smart</p>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<a href="#"><img class="images" src="images/samsung-galaxy-s21-ultra-fpt-3.jpg" alt="samsung-s20"/></a>
				<p>Xiaomi</p>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
				<a href="#"><img class="images" src="images/oppo-f17-pro2.jpg" alt="oppo-f11-pro"/></a>
				<p>Nokia</p>
			</div>
		</div>
	</div>
	<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xl-4" >
		<h5> Giỏ Hàng</h5>
		<p>Mặt hàng bạn đã thêm vào </p>
		<br/><br/>
		<h5>Sản phẩm nổi bật</h5>
		<div>
			<a href="#"><p>Samsung Galaxy S21 Ultra</p></a>
			<a href="#"><p>Iphone 13 promax</p></a>
			<a href="#"><p>Oppo F17 Pro</p></a>
		</div>
	</div>
</div>
<br/>
<div class="row" style="border: 1px solid #c0c0c0; border-radius: 10px;">
	<h5>KHUYẾN MÃI HOT</h5>
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-3">
		<a href="#"><img class="images" src="images/iPhone-13.jpg" alt="iphone-13"/></a>
		<p><strong>Iphone 13 128GB</strong></p>
		<span>23.499.000đ</span> &emsp;&emsp;&emsp;&emsp; <span style="text-decoration:line-through;"><i>24.499.000đ</i></span>
	</div>
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-3">
		<a href="#"><img class="images" src="images/vsmarttt.jpg" alt="vsmart"/></a>
		<p><strong>Vsmart Aris 8GB-128GB</strong></p>
		<span>3.499.000đ</span> &emsp;&emsp;&emsp;&emsp; <span style="text-decoration:line-through;"><i>4.499.000đ</i></span>
	</div>
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-3">
		<a href="#"><img class="images" src="images/samsung-galaxy-s21-ultra.jpg" alt="samsung-s21-ultra"/></a>
		<p><strong>Samsung Galaxy S21 Ultra</strong></p>
		<span>25.500.000đ</span> &emsp;&emsp;&emsp;&emsp; <span style="text-decoration:line-through;"><i>26.000.000đ</i></span>
	</div>
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-3">
		<a href="#"><img class="images" src="images/oppo-f17-pro22.jpg" alt="Oppo-Reno6-5G"/></a>
		<p><strong>Oppo Reno6 5G</strong></p>
		<span>13.499.000đ</span> &emsp;&emsp;&emsp;&emsp; <span style="text-decoration:line-through;"><i>14.499.000đ</i></span>
	</div>
</div>
<!-- add footer -->
<%@ include file="footer.jsp" %>
</div>
</body>
</html>