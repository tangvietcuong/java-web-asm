<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
  <title>Đăng Nhập</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link href="<c:url value='/static/css/style2.css' />" rel="stylesheet"></link>
<script>
function validateEmail(email)
{
  let regexEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.
	  					[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  if (email.match(regexEmail)) {
    return true; 
  } else {
    return false;
  }
}
</script>

</head>
<body>
<!-- add header -->
<%@ include file="header.jsp" %>
<div class="container mt-3">
  <h2>Đăng Nhập</h2>
  <form style="width: 30%" action="login.html" onsubmit="validateEmail(email)" method="post">
    <div class="mb-3 mt-3">
      <label for="username">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Nhập email" name="username" value="${param.username}">
    </div>
    <div class="mb-3">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Nhập mật khẩu" name="password" value="${param.password}">
    </div>
    
    <!-- message login fail -->
    <p class="message-login" >${error}</p>
    
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me <a href="#">Forget password</a>
      </label>
      
    </div>
    <button type="submit" class="btn btn-primary" name="submit">Submit</button>
  </form>
</div>
<!-- add footer -->
<%@ include file="footer.jsp" %>
</body>
</html>
