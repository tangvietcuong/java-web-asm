<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a href="home"><img src="images/logo-fpt.jpg" alt="logo-fpt" style="width:80px;"></a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="home" class="nav-item nav-link active">TRANG CHỦ</a>
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
                <form method="POST" action="search" class="d-flex p-search">
			        <input class="form-control me-2" name="search" placeholder="Tìm kiếm" aria-label="Search" value="<%= request.getAttribute("search")%>">
			        <button class="btn btn-outline-success" type="submit">Search</button>
			    </form>
                <div class="navbar-nav">
                    <a href="login.jsp" class="nav-item nav-link">LOGIN</a>
                    <a href="#" class="nav-item nav-link">REGISTER</a>
                </div>
            </div>
        </div>
    </nav>
</div>
