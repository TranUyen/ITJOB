<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
</head>
<body>
	
    <div class="container-fluid ">
	            <div class="col-sm-12 login">
	                <form class="form-login" >
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