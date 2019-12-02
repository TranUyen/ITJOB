<%@ include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>



	<div class="container">
		<h1 class="text-center">Đăng nhập</h1>
		<form action="#" class="needs-validation"
			action="<c:url value="/dang-nhap"/>" method="post" novalidate
			style="margin-left: 20%; margin-right: 20%;">
			<c:if test="${not empty errLogin}">
				<div class="thongbao">${errLogin}</div>
			</c:if>
			<select class="select_login" name="role" style="height: 45px;">
				<option value="1">Ứng Viên</option>
				<option value="2">Công ty</option>
			</select>
			<div class="form-group">
				<label for="inputEmail">Email</label> <input type="email"
					class="form-control" id="inputEmail" placeholder="Email" required
					name="email">
				<div class="invalid-feedback">Please enter a valid email
					address.</div>
			</div>
			<div class="form-group">
				<label for="inputPassword">Password</label> <input type="password"
					class="form-control" id="inputPassword" placeholder="Password"
					required name="password">
				<div class="invalid-feedback">Please enter your password to
					continue.</div>
			</div>
			<div class="form-group">
				<label class="form-check-label"><input type="checkbox">
					Remember me</label>
			</div>
			<button type="submit" class="btn btn-primary" style="margin-bottom: 20px;">Sign in</button>
		</form>
	</div>

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
	</script>

</body>
</html>