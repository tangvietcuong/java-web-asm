<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
  <title>Welcome page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link href="<c:url value='/static/css/style2.css' />" rel="stylesheet"></link>
</head>
<body>
<!-- add header -->
<%@ include file="header.jsp" %>
<div style="text-align:center; padding-bottom:3%">

	Welcome <b style="color: blue">${username}</b>
	<br/>
	<p>Click below button to go to Home page</p>
	
	<form method ="GET" action = "/PRJ321x_Project_4_CuongtvFx12013/redirect">
         <input type = "submit" value = "GO TO HOMEPAGE"/>
    </form>
</div>

<!-- add footer -->
<%@ include file="footer.jsp" %>
</body>
</html>