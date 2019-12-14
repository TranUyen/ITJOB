<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	
    <div class="container" style="height: auto; width: 50%">
    		  <div class="text-center" style="margin-top: 10px;">
    		  	 <h1>Đăng kí ứng viên</h1>
    		  </div>
	      	  <form class="needs-validation" method="post" action="<c:url value="/dang-ky-ung-vien"/>" novalidate>
	      	  		<c:if test="${not empty error}">
						<div class="thongbao" style="color: red">${error}</div>
					</c:if>
	      	   		<div class="form-group">
			           <label for="inputComany">Name</label>
			           <input type="text" class="form-control" id="inputComany" placeholder="Your Name" required name="name">
			           <div class="invalid-feedback">Tên không được để trống</div>
			       </div>
			       <div class="form-group">
			           <label for="inputEmail">Email</label>
			           <input type="email" class="form-control" id="inputEmail" placeholder="Email" required name="email">
			           <div class="invalid-feedback">Email không hợp lệ</div>
			       </div>
			        <div class="form-group">
			            <label for="inputPassword">Password</label>
			            <input type="password" class="form-control" id="inputPassword" placeholder="Password" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$" 
			            required name="password">
			            <div class="invalid-feedback">
			            	<p>Mật khẩu phải có ít nhất 1 chữ hoa, chữ thường và số, dài ít nhất 8 ký tự</p>
			            </div>
			        </div>
			        <div class="form-group">
			           <label for="inputPhone">Phone</label>
			           <input type="text" class="form-control" id="inputEmail" placeholder="Phone Number" pattern="^[0-9]{10,11}$"  required name="phone">
			           <div class="invalid-feedback">Số điện thoại không hợp lệ</div>
			       	</div>
			       	
			       	<div class="row">
			       		<div class="form-group col-md-4 col-sm-12">
			       			<label for="inputSex" >Giới tính</label>
			       			<select class="select" style="width: 100%; height: 47px" name="sex">
			       				<option value="0">Nữ</option>
			       				<option value="1">Nam </option>
			       			</select>
			       		</div>
			       		<div class="form-group col-md-8 col-sm-12">
			       			<label for="inputDate" >Ngày sinh</label>
			       			<input type="date" class="form-control" id="inputDate" placeholder="ngày sinh" style="width: 100%"  required name="birthday">
			                <div class="invalid-feedback">Bạn chưa điền ngày sinh</div>
			       		</div>
			       	</div>
			       
	        		<div style="margin-top: 20px; margin-bottom: 30px">
	        			<button type="submit" class="btn btn-block btn-primary">Đăng ký</button>
	        		</div>
	    	</form>
	      </div>
	        
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src='<c:url value="/template/web/js/bootstrap.min.js"/>'></script>
	<script src='<c:url value="/template/web/js/jquery-3.3.1.min.js"/>'></script>
	<script>
		// Self-executing function
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
		
// 		$(document).ready(function(){
// 			$("#btn_submit").on("click", function(){
// 				v
// 			}
// 		}
		
	</script>
	
	
</body>
</html>