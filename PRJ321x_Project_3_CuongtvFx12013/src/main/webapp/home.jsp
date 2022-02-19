<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@ taglib uri ="http://java.sun.com/jsp/jstl/fmt" prefix ="fmt" %> 
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
<c:import url="header.jsp"></c:import>
<!-- home content -->
<div class="cartEdit">
<c:set var="size" value ="${sessionScope.size}"/>
<h4>Xin chào <b style="color: red">${sessionScope.acount.name}</b> </h4>
<a href="logout">Logout</a>
<p><img style="text-align:right" src="./images/cart-icon.png" width="35" height="35">
	<a href="cart.jsp"> Your cart with (${size}) items </a>
</p>
</div>

<div class="container mt-3">
<br/> <br/>
<h4>DANH SÁCH SẢN PHẨM</h4>
<div class="row">
	<c:set var="list" value="${request.getAttribute('allProduct')}" />
	<c:forEach var="p" items="${list}">
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 ">
					<a href="<c:url value="/product?id=${p.id}" />"> 
					<img class="images" src="${p.src}" alt="${p.name}"/> 
					<br/> <br/> <br/> </a>
					<div style="padding-left: 10%;">
						<p style="color:gray;">${p.type}</p>
						<p><a href="<c:url value="/product?id=${p.id}" />"><strong style="font-size: 1.5em;">${p.name}</strong></a></p>
						<span>Cost: </span><span style="color:red;">$${p.price}</span>
						<a href="${pageContext.request.contextPath}/addcart?action=add&id=${p.id}">
							<button style="border-radius: 8px;" class="btn-warning" type="submit">Thêm vào giỏ hàng</button>
						</a>
					</div>
				</div> 
	</c:forEach>
</div>
<hr/>
<br/>
<div class="row">
	<h5>SẢN PHẨM HOT</h5>
<sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver"
		url ="jdbc:mysql://localhost/ShoppingDB" user="root" password="admin123"/>
<sql:query dataSource="${ds}" sql="SELECT * FROM PRODUCTS Limit 3" var="results"></sql:query>
	<c:forEach var="image" items="${results.rows}">
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xl-4">
		<a href="<c:url value="/product?id=${image.product_id}" />"> 
			<img style="padding-left:10%" class="images" src="${image.product_img_source}" alt="${image.product_name}"/> 
				<br/>
		</a>
		<div style="padding-left: 10%;">
			<p style="color:gray;">${image.product_type}</p>
			<p><a href="<c:url value="/product?id=${image.product_id}" />"><strong style="font-size: 1.5em;">${image.product_name}</strong></a></p>
			<span>Cost: </span><span style="color:red">$${image.product_price}</span> &emsp; &emsp;
			<a href="${pageContext.request.contextPath}/addcart?action=add&id=${image.product_id}">
				<button style="border-radius: 8px;" class="btn-warning" type="submit">Thêm vào giỏ hàng</button>
			</a>
		</div>
	</div>
	</c:forEach>
</div>
</div>
<!-- add footer -->
<c:import url="footer.jsp"></c:import>
</div>
</body>
</html>


