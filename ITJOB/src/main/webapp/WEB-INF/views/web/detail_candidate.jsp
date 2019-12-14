<%@ include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="unit-5 overlay"
		style="background-image: url('https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-blue-tech-theme-globe-poster-background-image_153891.jpg');">
		<div class="container text-center">
			<h2 class="mb-0">Hồ sơ ứng viên</h2>
			<p class="mb-0 unit-6">
				<a href="index.html">Trang chủ</a> <span class="sep">></span> <span>Hồ sơ ứng viên</span>
			</p>
		</div>
	</div>
	<div class="site-section bg-light">
		<div class="container">
			<div class="row">

				<div class="col-md-8 col-lg-8 mb-5 ">
					<h3 class="font-weight-bold" >Hồ sơ ứng viên</h3>
					<div class=" p-4 mb-3 bg-white">
						
					
					<div class="row form-group ">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Trình độ học vấn:</strong> <span> ${candidateEntity.getProfile().getDegree() }</span>
								</p>
							</div>
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
								<c:if test="${candidateEntity.getSex()eq 1}">
									<strong>Giới tính:</strong> <span>Nữ</span>
								</c:if>
								
								<c:if test="${candidateEntity.getSex() eq 0} ">
									<strong>Giới tính:</strong> <span>Nam</span>
								</c:if>
								
								</p>
							</div>

						</div>

	  				<div class="row form-group">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Kỹ năng công nghệ: ${candidateEntity.getProfile().getTechnology_skill()}</strong> 
								</p>
								<p>
								</p>
							</div>
							
						</div>
					<div class="row form-group">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Kinh nghiệm: ${candidateEntity.getProfile().getExperience_years()} </strong> 
								</p>
								<p>
								</p>
							</div>
							
						</div>      
					<div class="row form-group">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Dự án đã tham dự: ${candidateEntity.getProfile().getProject()}</strong> 
								</p>
								<p>
								</p>
							</div>
							
						</div>   
	  				
	  				
	  				
	  				
	  				
	  				<div class="row form-group">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Kỹ năng khác:${candidateEntity.getProfile().getOther_skill()}</strong>
								</p>
								<p>
								</p>
							</div>
							
						</div>  
					
					
				</div>
				<c:if test="${not empty candidate}">
					<a href='<c:url value=""/>' class="btn btn-primary py-2">Chỉnh sửa thông tin </a>
				</c:if>
				</div>
						
				<div class="col-lg-4">
					<h3 class="font-weight-bold" >Thông tin cá nhân</h3>
					
					<div class="p-4 mb-3 bg-white" style="">
						<div class="row form-group " style="margin-bottom: 5%;margin-left: 7%">
							<div class="col-md-12 mb-3 mb-md-0">
								<img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq7HH4YLTanJ128a-wj4Iw0LxDtNhhqtt6T0VbihRxoNj8_X1cQg&s">
							</div>
						</div>
					
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Họ và tên: ${candidate.getName() }</strong> <span> </span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Email:${candidate.getEmail() }</strong> <span> </span>
								</p>
							</div>
						</div>

						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Số điện thoại:${candidate.getPhone() }</strong> <span> </span>
								</p>
							</div>
						</div>
						
						

					</div>

				</div>
			</div>
		</div>
	</div>
	
	








</body>
</html>