<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Đăng Nhập</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<!-- add header -->
<c:import url="header.jsp"></c:import>
<div class="container mt-3">
  <h2>Đăng Nhập</h2>
  <form action="login" method="post">
    <div class="mb-3">
      <label for="username">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Nhập email" name="username">
    </div>
    <div class="mb-3">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Nhập mật khẩu" name="password">
    </div>
    
    <!-- message login fail -->
    <p class="message-login">${message}</p>
    
    <div class="form-check mb-3">
      <label class="form-check-label" for="remember">
        <input class="form-check-input" type="checkbox" name="remember" id="remember"> Remember me <a href="#">Forget password</a>
      </label>
      
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
<!-- add footer -->
<c:import url="footer.jsp"></c:import>
</body>
</html>
