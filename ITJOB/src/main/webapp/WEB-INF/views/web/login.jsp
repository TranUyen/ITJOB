<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
</head>
<body>
	
    <div class="container-fluid ">
	            <div class="col-sm-12 login">
	                <form class="form-login" action="<c:url value="/dang-nhap"/>" method="post" >
	                    <h2><strong>Đăng nhập</strong></h2>
	                    <c:if test="${not empty errLogin}">
                    	   <div class="thongbao">${errLogin} </div> 
                    	</c:if>
	                    
	                    <select class="select_login" name="role">
								<option value="1">Ứng Viên</option>
								<option value="2">Công ty</option>
						</select>
	                    <input name="email" type="email" required="" placeholder="Email"  > 
	                    <input name="password" type="password" required="" placeholder="Password" style="margin-bottom: 20px;">
	                    <input type="submit" class="btn btn-primary btn-block" value="Dang nhap">
	                    <div class="row">
	                      <div class="col-md-6 col-md-push-1" >
	                        <a href="#">Quên mật khẩu?</a>
	                      </div>
	                      <div class="col-md-6 float: right;">
	                        <span>Chưa có tài khoản?</span><a class="next" href="<c:url value = "/dang-ky-cong-ty"/>">Đăng Ký</a>
	                      </div>
	                   </div>
	                </form>
	            </div>

        	</div>
        

</body>
</html>