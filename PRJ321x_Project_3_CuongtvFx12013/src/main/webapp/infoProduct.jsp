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
  <link rel="stylesheet" href="style.css" type="text/css">
<title>FPT Shop - Thông tin sản phẩm</title>
</head>
<body>
<div class="container-fluid">
<!-- add header -->
<c:import url="header.jsp"></c:import>
<!-- home content -->

<div class="container mt-3">
<br/> <br/>
<h5>THÔNG TIN SẢN PHẨM</h5>
	
	<c:set scope="page" var="p" value="${sessionScope.product}"></c:set>
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
				<a href="${p.src}">
					<img class="images" src="${p.src}" alt="${p.name}"/>
				</a> 
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
				<h5><a href="#"><strong>Sản phẩm: ${p.name}</strong></a></h5>
				<p> Mã sản phẩm: ${p.id} - ${p.type}</p>
				<p> Nhãn hiệu: ${p.brand}</p>
				<p> Mô tả sản phẩm: ${p.description}</p>
				<span> Giá Bán: </span> <span style="color:red; padding-left: 5%; font-size: 2em;">$${p.price}</span>
				<p/>
				<a href="${pageContext.request.contextPath}/addcart?action=add&id=${p.id}">
					<button style="border-radius: 8px;" class="btn-warning" type="submit">Thêm vào giỏ hàng</button>
				</a>
			</div> 
		</div>
</div>
<hr/>
<br/>
<div class="row">
	<h5>SẢN PHẨM HOT</h5>
<sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver"
		url ="jdbc:mysql://localhost/ShoppingDB" user="root" password="admin123"/>
<sql:query dataSource="${ds}" sql="SELECT * FROM PRODUCTS LIMIT 4" var="results"></sql:query>
	<c:forEach var="image" items="${results.rows}">
	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 col-xl-3">
		<a href="<c:url value="/product?id=${image.product_id}" />"> 
			<img style="padding-left:10%" class="images" src="${image.product_img_source}" alt="${image.product_name}"/> 
					<br/> <br/> <br/> 
		</a>
		<div style="padding-left: 10%;">
			<p><a href="<c:url value="/product?id=${image.product_id}" />"><strong>${image.product_name}</strong></a></p>
			<span>Cost: </span><span style="color:red">$${image.product_price} &emsp; &emsp; 
			<a href="${pageContext.request.contextPath}/addcart?action=add&id=${image.product_id}">
				<button style="border-radius: 8px;" class="btn-warning" type="submit">Thêm vào giỏ hàng</button>
			</a> </span>
		</div>
	</div>
	</c:forEach>
</div>
<br/><br/>
<!-- add footer -->
<c:import url="footer.jsp"></c:import>
</div>
</body>
</html>