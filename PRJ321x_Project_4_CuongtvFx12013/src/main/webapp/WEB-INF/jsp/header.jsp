<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

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
                    <a href="login.jsp" class="nav-item nav-link" style="display:none">LOGIN</a>
                    <a href="register.jsp" class="nav-item nav-link">REGISTER</a>
                </div>
            </div>
        </div>
    </nav>
</div>
