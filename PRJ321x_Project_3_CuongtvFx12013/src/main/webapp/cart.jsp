<%@page import="model.CartModel"%>
<%@page import="dao.ListProductDAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
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
<title>FPT Shop - Giỏ hàng</title>
</head>
<body>
<div class="container-fluid">
<!-- add header -->
<c:import url="header.jsp"></c:import>
<!-- home content -->

<h5> Giỏ Hàng</h5>


<table class="table">
	<tr>
		<th>STT</th>
		<th>Tên sản phẩm</th>
		<th>Giá sản phẩm</th>
		<th>Số lượng</th>
		<th>Thành tiền</th>
		<th>Action</th>
	</tr>
		<c:set var="shopping" value="${sessionScope.cart}"/>
		<c:set var="count" value="0"/>
		<c:forEach var="product" items="${shopping.items}">
		<c:set var="count" value="${count + 1}" />
	<tr>
		<td>${count}</td>
		<td>${product.name}</td>
		<td>${product.price}</td>
		<td>${product.number}</td>
		<td><fmt:formatNumber pattern="##.##" value="${product.price*product.number}"></fmt:formatNumber></td>
		<td>	
			<a href="${pageContext.request.contextPath}/addcart?action=delete&id=${product.id}">
				<button style="border-radius: 8px;" class="btn-warning" type="submit">Xóa sản phẩm</button>
			</a>
		</td>
	</tr>
		</c:forEach>
</table>
<br/>

<form action="checkout" method="post">
	<input type="submit" value="THANH TOÁN"/>
</form>
<br/> <br/>

<a href="home.jsp">Tiếp tục mua hàng</a>
	
<hr/>

<!-- add footer -->
<c:import url="footer.jsp" />
</div>
</body>
</html>