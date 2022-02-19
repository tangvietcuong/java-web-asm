<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link href="<c:url value='/static/css/style2.css' />" rel="stylesheet"></link>
<title>Trang Chủ FPT Shop</title>

</head>
<body>
<div class="container-fluid">
<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
        	<a href="#"><img src="<c:url value='/static/images/logo-fpt.jpg'/>" alt="logo-fpt" style="width:80px;"></a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="#" class="nav-item nav-link active">TRANG CHỦ</a>
                    <a href="#" class="nav-item nav-link">LIÊN HỆ</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">SẢN PHẨM</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">IPHONE</a>
                            <a href="#" class="dropdown-item">SAMSUNG</a>
                            <a href="#" class="dropdown-item">OPPO</a>
                        </div>
                    </div>
                </div>
                <form class="d-flex p-search">
			        <input class="form-control me-2" type="search" placeholder="Tìm kiếm" aria-label="Search">
			        <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>
			    <div class="navbar-nav">
                    <a href="login.jsp" class="nav-item nav-link ">LOGIN</a>
                    <a href="register.jsp" class="nav-item nav-link">REGISTER</a>
                </div>
            </div>
        </div>
    </nav>
</div>
<!-- home content -->

<div class="container mt-3">
<br/> <br/>
<h5>DANH SÁCH SẢN PHẨM</h5>

<sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver"
		url ="jdbc:mysql://localhost/ShoppingDB" user="root" password="admin123"/>

<sql:query dataSource="${ds}" sql="SELECT * FROM PRODUCTS" var="results" />

		<div class="row">
			<c:forEach var="image" items="${results.rows}" varStatus="row">
				<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 ">
					<a href="<c:url value="/product?action=image&image=${image.product_id}" />"> 
					<img class="images" src="${image.product_img_source}" alt="${image.product_name}"/> 
					<br/> <br/> <br/> </a>
					<div style="padding-left: 10%;">
						<p style="color:gray;">${image.product_type}</p>
						<p><a href="<c:url value="/product?action=image&image=${image.product_id}" />"><strong style="font-size: 1.5em;">${image.product_name}</strong></a></p>
						<span>Cost: </span><span style="color:red;">$${image.product_price}</span>
						<form name="f" action="" method="POST">
							<button style="border-radius: 8px;" class="btn-warning" type="submit" onclick="buy('${image.product_id}') ">Thêm vào giỏ hàng</button>
						</form>
					</div>
				</div> 
			</c:forEach> 
		</div>
</div>
<hr/>
<br/>
<div class="row">
	<h5>SẢN PHẨM HOT</h5>
<sql:query dataSource="${ds}" sql="SELECT * FROM PRODUCTS LIMIT 4" var="results"></sql:query>
	<c:forEach var="image" items="${results.rows}">
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-3">
		<a href="<c:url value="/product?action=image&image=${image.product_id}" />"> 
			<img style="padding-left:10%" class="images" src="${image.product_img_source}" alt="${image.product_name}"/> 
					<br/> <br/> <br/> </a>
					<div style="padding-left: 10%;">
						<p style="color:gray;">${image.product_type}</p>
						<p><a href="<c:url value="/product?action=image&image=${image.product_id}" />"><strong style="font-size: 1.5em;">${image.product_name}</strong></a></p>
						<span>Cost: </span><span style="color:red">$${image.product_price} &emsp; &emsp; <button style="border-radius: 8px;" class="btn-warning" type="button">Thêm vào giỏ hàng</button></span>
					</div>
	</div>
	</c:forEach>
</div>
<!-- add footer -->
<c:import url="footer.jsp"></c:import>
</div>
</body>
</html>


