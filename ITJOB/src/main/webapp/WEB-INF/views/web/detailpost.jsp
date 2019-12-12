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
		style="background-image: url('template/web/images/hero_bg_3.jpg');">
		<div class="container text-center">
			<h2 class="mb-0">Chi tiết bài đăng</h2>
			<p class="mb-0 unit-6">
				<a href="index.html">Trang chủ</a> <span class="sep">></span> <span>Chi
					tiết bài đăng</span>
			</p>
		</div>
	</div>
	<div class="site-section bg-light">
		<div class="container">
			<div class="row">

				<div class="col-md-12 col-lg-8 mb-5">



					<form action="#" class="p-5 bg-white">

						<h3 class="font-weight-bold" >Thông tin tuyển dụng nhanh</h3>

						<div class="row form-group" style="margin-bottom: 0">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Chức vụ:</strong> <span> ${post.getPosition() }</span>
								</p>
							</div>
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Mức lương:</strong> <span> ${post.getSalary() }</span>
								</p>
							</div>
						</div>
						<div class="row form-group" style="margin-bottom: 0">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Số lượng:</strong> <span>${post.getNo_member()}</span>
								</p>
							</div>
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Hình thức làm việc:</strong> <span> ${post.getTypejob()}</span>
								</p>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-6 mb-3 mb-md-0">
								<p>
									<strong>Địa điểm:</strong> <span>${post.getCompanyDTO().getAddress()}</span>
								</p>
							</div>

						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<h3 class="font-weight-bold" >Mô tả công việc</h3>
							</div>
							<div class="col-md-12 mb-3 mb-md-0">
								<p>${post.getJD() }</p>
							</div>
						</div>
						<h3 class="font-weight-bold" >Yêu cầu công việc</h3>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Ngôn ngữ lập trình:</strong> <span> ${post.getRequirementDTO().getTechnology_skill() }</span>
								</p>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Kinh Nghiệm:</strong> <span>${post.getRequirementDTO().getExperience() }</span>
								</p>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Bằng cấp:</strong> <span>${post.getRequirementDTO().getDegree() }</span>
								</p>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Yêu cầu khác:</strong> <span> ${post.getOther_requirements()}</span>
								</p>
							</div>
						</div>

						<h3 class="font-weight-bold" >Quyền lợi được hưởng</h3>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									${post.getBenefit() }

								</p>
							</div>
						</div>


						<div class="row form-group">
							<div class="col-md-12">
								<input type="button" id="ung_tuyen" value="Ứng Tuyển"
									class="btn btn-primary  py-2 px-5">
							</div>
						</div>


					</form>
				</div>

				<div class="col-lg-4">
					<div class="p-4 mb-3 bg-white">
					<h3 class="h5 text-black mb-3 font-weight-bold ">Thông tin công ty</h3>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Tên công ty:</strong> <span> ${post.getCompanyDTO().getName()}</span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Địa chỉ:</strong> <span>${post.getCompanyDTO().getAddress()} </span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Email:</strong> <span>${post.getCompanyDTO().getEmail()} </span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Hot line:</strong> <span>${post.getCompanyDTO().getPhone()} </span>
								</p>
							</div>
						</div>
						<h3 class="h5 text-black mb-3 font-weight-bold">Thông tin liên hệ</h3>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Tên người liên hệ:</strong> <span> ${post.getContactDTO().getName()} </span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Số điện thoại:</strong> <span> ${post.getContactDTO().getPhone()}</span>
								</p>
							</div>
						</div>
						<div class="row form-group "style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Email:</strong> <span>${post.getContactDTO().getEmail()}</span>
								</p>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script type="text/javascript">
 	$("#ung_tuyen").on("click", function(){
 		
 		var id = ${post.getId()};
 		$.ajax({
		    url: "/ITJOB/chi-tiet-bai-dang/" + id + "/ung-tuyen",
			method: "GET",
			success : function(response){
				if(response == "OK"){
					alert("ung tuyen thanh cong");
				}else{
					alert("ung tuyen khong thanh cong");
				}
			}
 		});
 	});
 	
 </script>








</body>
</html>