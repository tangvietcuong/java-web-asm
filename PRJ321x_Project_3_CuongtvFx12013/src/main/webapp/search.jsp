<%@page import="dao.ListProductDAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
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

      <c:if test = "${listProduct.size() == 0}">
         <h4>Rất tiếc! Không tìm thấy sản phẩm</h4>
         <p>Quay lại <a href="home">TRANG CHỦ</a></p>
      </c:if>
      <c:forEach var="p" items="${listProduct}">
      		<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
				<a href="#"><img class="images" style="width: 60%; height: auto" src="${p.src}" alt="${p.name}"/></a>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
					<p><b>Mã sản phẩm: </b>${p.id}</p>
					<h5><strong>${p.name} </strong></h5>
					<p><b>Mô tả: </b>${p.description}</p>
					<p><b>Loại: </b>${p.type}</p>
					<p><b>Giá bán: </b><span style="color: red; font-size: 2em">${p.price}</span></p>
					<a href="${pageContext.request.contextPath}/addcart?action=add&id=${p.id}">
						<button style="border-radius: 8px;" class="btn-warning" type="submit">Thêm vào giỏ hàng</button>
					</a>
				</div>
			</div>
		<hr/>
      </c:forEach>
</div>
<!-- add footer -->
<c:import url="footer.jsp" />
</div>
</body>
</html>