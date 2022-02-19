<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="style.css" type="text/css">
<title>Admin Page</title>
</head>
<body>
<div class="container-fluid">
<!-- add header -->
<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
			<a href="home.jsp"><img src="images/logo-fpt.jpg" alt="logo-fpt" style="width:80px;"></a>
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
            </div>
        </div>
    </nav>
</div>

<!-- home content -->

	<div class="row" style="text-align:center">
		<h4>Welcome to admin page:
		<%
			String name = (String)session.getAttribute("username");
			out.println(" " + name);
		%></h4>
		<a href="logout">Logout</a>
	</div>
<div class="container mt-3">
  <h2>Danh sách Quản Trị Viên</h2>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Họ Và Tên</th>
        <th>Roles</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Tăng Viết Cương</td>
        <td>Admin</td>
        <td>cuongtvfx12013@funix.edu.vn</td>
      </tr>
      <tr>
        <td>Vũ Văn Thanh</td>
        <td>Admin</td>
        <td>vanthanh007@example.com</td>
      </tr>
      <tr>
        <td>Ngọc Trinh</td>
        <td>Mod</td>
        <td>ngoctrinhxinhgai@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
<!-- add footer -->
<!--  Footer -->
    <footer id="footer" class="footer-1">
      <div class="main-footer widgets typo-light">
      <div class="row">
                  <!--  cột 1-->
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">       
          <div class="widget subscribe ">
            <h5 class="widget-title">FPT Shop</h5>
            <p>Tư vấn mua hàng (Miễn phí)</p>
			<p>1800 6601 (Nhánh 1)</p>
			<p>Hỗ trợ kỹ thuật</p>			
			<p>1800 6601 (Nhánh 2)</p>
          </div>
        </div>
                   <!--    cột 2 -->
       <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
         <div class="widget">
           <h5 class="widget-title">Danh mục:</h5>
           <p><a href="#">Tin Tuyển Dụng</a></p>
           <p><a href="#">Tin Khuyến Mại</a></p>
           <p><a href="#">Hệ Thống Cửa Hàng</a></p>
           <p><a href="#">Trả Góp 0%</a></p>
           <p><a href="#">Hỗ Trợ Đổi Trả</a></p>
          </div>
        </div>
                    <!-- cột 3 -->
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
          <div class="widget">
            <h5 class="widget-title">Góp ý:</h5>
            <p>Khiếu nại dịch vụ (8h00-22h00)</p>
            <p>1800 6616</p>
          </div>
        </div>
                    <!-- cột 4 -->
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
          <div class="widget">
          <h5 class="widget-title">Thông tin liên hệ:</h5>
          <p>Hãy để lại email để nhận những thông tin mới nhất về sản phẩm bạn quan tâm</p>
            <div class="emailfield">
              <form>
                <input type="text" name="email" required>
                <input class="submitbutton ripplelink text-adjust" type="submit" value="Gửi đi!">
              </form>  
            </div>
          </div>
        </div>
    </div>
       <!-- bản quyền -->
    <div class="footer-copyright">
      <div class="col-md-12 text-center">
      <p><i>Copyright &copy; FPT Shop! 2021.</i></p>
      </div>
    </div>
    </div>
    </footer>
</div>
</body>
</html>