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
    <div class="container" style="height: auto;">
    		  <div class="text-center" style="margin-top: 10px;">
    		  	 <h1>Đăng kí công ty</h1>
    		  </div>
	      	  <form action="#" class="needs-validation" method="post" novalidate>
	      	   		<div class="form-group">
			           <label for="inputComany">Company</label>
			           <input type="text" class="form-control" id="inputComany" placeholder="Company Name" required name="name">
			           <div class="invalid-feedback">Please enter your company name.</div>
			       </div>
			       <div class="form-group">
			           <label for="inputEmail">Email</label>
			           <input type="email" class="form-control" id="inputEmail" placeholder="Email" required name="email">
			           <div class="invalid-feedback">Please enter a valid email address.</div>
			       </div>
			        <div class="form-group">
			            <label for="inputPassword">Password</label>
			            <input type="password" class="form-control" id="inputPassword" placeholder="Password" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$" 
			            required name="password">
			            <div class="invalid-feedback">
			            	<p>At least one upper case. At least one lower case. At least one digit. Minimum eight characters</p>
			            </div>
			        </div>
			         <div class="form-group">
					    <label for="exampleFormControlSelect1">Address</label>
					    <select class="form-control" id="exampleFormControlSelect1" name="address">
					      <option value="Hà Nội">Hà Nội</option>
					      <option value="Đà Nẵng">Đà Nẵng</option>		     
					      <option value="TP HCM">TP HCM</option>
					    </select>
  					</div>
			        <div class="form-group">
			           <label for="inputPhone">Phone</label>
			           <input type="text" class="form-control" id="inputEmail" placeholder="Phone Number" pattern="^[0-9]{10,11}$" required name="phone">
			           <div class="invalid-feedback">Invalid phone number.</div>
			       	</div>
			       
	        		<div style="margin-top: 20px;">
	        			<button type="submit" class="btn btn-block btn-primary">Register</button>
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
	</script>
        

</body>
</html>