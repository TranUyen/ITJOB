<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>ITjob</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/bootstrap.min.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/style.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/bootstrap-datepicker.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/aos.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/animate.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/custom.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/fl-bigmug-line.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/jquery-ui.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/magnific-popup.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/owl.carousel.min.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/css/owl.theme.default.min.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/fonts/icomoon/style.css"/>'/>
	<link rel="stylesheet" type="text/css" media="all" href='<c:url value="/template/web/fonts/flaticon/font/flaticon.css"/>'/>
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
</head>
<body>
	<div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    <%@include file="/common/web/header.jsp" %>
    <div class="container-fluid ">
	            <div class="col-sm-12 login">
	                <form class="form-login">
	                    <h2><strong>Đăng ký công ty</strong></h2>
	                    <input name="name" type="text" required placeholder="Tên công ty"  >
	                    <input name="email" type="email" required placeholder="Email"  > 
	                    <input name="password" type="password" required placeholder="Password" >
	                    <input name="address" type="text" required placeholder="Địa chỉ">
	                    <input name="phone" type="text" required placeholder="Số điện thoại" style="margin-bottom: 20px;">
	                    <button type="button" class="btn btn-primary btn-block">Đăng ký</button>
	                    <div class="row">
	                      <div class="col-md-6 col-md-push-1" >
	                        <a href="#">Quên mật khẩu?</a>
	                      </div>
	                      <div class="col-md-6 float: right;">
	                        <span>Đã có tài khoản?</span><a class="next" href="<c:url value = "/dang-nhap"/>">Đăng nhập</a>
	                      </div>
	                   </div>
	                </form>
	            </div>

        	</div>
        

</body>
</html>