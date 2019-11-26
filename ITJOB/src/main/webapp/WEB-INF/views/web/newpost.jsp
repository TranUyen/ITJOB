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
	<style>
label.error {
	color: red;
}
</style>
	<div class="unit-5 overlay"
		style="background-image: url('template/web/images/hero_bg_2.jpg');">
		<div class="container text-center">
			<h2 class="mb-0">Đăng bài viết</h2>
			<p class="mb-0 unit-6">
				<a href="index.html">Trang chủ</a> <span class="sep">></span> <span>Đăng
					bài</span>
			</p>
		</div>
	</div>
	<div class="site-section bg-light">
		<div class="container">
			<form action="<c:url value="/dang-bai"/>"class="p-5 bg-white" id="myform" method="post">
				<div class="row">

					<div class="col-md-12 col-lg-6 mb-5">

						<h3>Thông tin tuyển dụng nhanh</h3>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold">Chức vụ</label> <input
									type="text" id="position" class="form-control" name="position"
									placeholder="eg. 10-20 triệu">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold">Mức lương</label> <input
									type="text" class="form-control" id="salary" name="salary"
									placeholder="eg. 10-20 triệu">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold">Số lượng</label> <input
									type="text" class="form-control" id="number" name="number"
									placeholder="eg.10">
							</div>
						</div>


						<div class="row form-group" >
							<div class="col-md-12">
								<h3>Hình thức làm việc</h3>
							</div>
							<div class="col-md-6 mb-3 mb-md-0">
								<label for="option-job-type-1"> <input type="radio" value="full time"
									id="option-job-type-1" name="jobtype"> Full Time
								</label>
							</div>
							<div class="col-md-6 mb-3 mb-md-0">
								<label for="option-job-type-2"> <input type="radio" value="part time"
									id="option-job-type-2" name="jobtype"> Part Time
								</label>
							</div>

							<div class="col-md-6 mb-3 mb-md-0">
								<label for="option-job-type-3"> <input type="radio" value="free type"
									id="option-job-type-3" name="jobtype"> Tự do
								</label>
							</div>
							<div class="col-md-6 mb-3 mb-md-0">
								<label for="option-job-type-4"> <input type="radio" value="inter"
									id="option-job-type-4" name="jobtype"> Thực tập
								</label>
							</div>

						</div>

						<div class="row form-group mb-4">
							<div class="col-md-12">
								<h3>Địa điểm</h3>
							</div>
							<div class="col-md-12 mb-3 mb-md-0">
								<input type="text" class="form-control" id="address"
									name="address" placeholder="Hà Nội">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<h3>Mô tả công việc</h3>
							</div>
							<div class="col-md-12 mb-3 mb-md-0">
								<textarea name="mota" class="form-control" cols="30" id="mota"
									rows="4"></textarea>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<h3>Quyền lợi được hưởng</h3>
							</div>
							<div class="col-md-12 mb-3 mb-md-0">
								<textarea name="quyenloi" class="form-control" cols="30"
									rows="4" id="quyenloi"></textarea>
							</div>
						</div>



					</div>

					<div class="col-lg-6">
						<h3>Yêu cầu công việc</h3>
						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold" for="fullname">Ngôn ngữ
									lập trình</label> <input type="text" class="form-control" id="ngonngu"
									name="ngonngu" placeholder="eg.Java, net, javascript">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold" for="fullname">Kinh
									nghiêm</label> <input type="text" class="form-control"
									name="kinhnghiem" id="kinhnghiem" placeholder="eg.6 tháng">
							</div>
						</div>
						<div class="row form-group ">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold">Bằng cấp</label> <input
									name="bangcap" id="bangcap" type="text" class="form-control"
									placeholder="eg.tốt nghiệp ĐH/CĐ CNTT">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<label class="font-weight-bold" for="fullname">Yêu cầu
									khác</label>
							</div>
							<div class="col-md-12 mb-3 mb-md-0">
								<textarea name="yeucaukhac" class="form-control" cols="30" rows="7" id=""></textarea>
							</div>
						</div>
						<h3>Thông tin liên hệ</h3>
						<div class="row form-group ">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold">Tên người liên hệ</label> <input
									type="text" class="form-control" placeholder="eg.Tran Van A"
									name="name" id="name">
							</div>
						</div>
						<div class="row form-group ">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold">Số điện thoại</label> <input
									type="text" class="form-control" placeholder="eg.0123456789"
									id="phone" name="phone">
							</div>
						</div>
						<div class="row form-group md-5">
							<div class="col-md-12 mb-3 mb-md-0">
								<label class="font-weight-bold">Email</label> <input
									type="text" id="email" class="form-control" name="email"
									placeholder="eg.abc@gmail.com">
							</div>
						</div>


						<div class="row form-group" style="margin-top: 50px">
							<div class="col-md-12">
								<input type="submit" value="Đăng"
									class="btn btn-primary  py-2 px-5">
							</div>
						</div>


					</div>
				</div>
			</form>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script>
		
		$("#myform").validate({
			rules : {
				position : {
					required : true
				},
				salary : {
					required : true
				},
				number : {
					required : true,
					number : true
				},
				address : {
					required : true
				},
				mota : {
					required : true
				},
				quyenloi : {
					required : true
				},
				ngonngu : {
					required : true
				},
				bangcap : {
					required : true
				},
				kinhnghiem : {
					required : true
				},
				name : {
					required : true
				},
				phone : {
					required : true
					//rangelength : 10
				},
				email : {
					required : true,
					email : true
				}
	
			},
		 messages: {
			 position: {
			      required: "Vui lòng điền chức vụ" 
			    },
			    salary : {
					required : "Vui lòng điền mức lương"
				},
			    number : {
					required : "Vui lòng điền số lượng",
					number : "Số lượng phải là dạng số"
				},
				address : {
					required : "Vui lòng điền địa điểm"
				},
				mota : {
					required : "Vui lòng điền mô tả về công việc"
				},
				quyenloi : {
					required : "Vui lòng điền phần này"
				},
				ngonngu : {
					required : "Vui lòng điền phần này"
				},
				bangcap : {
					required : "Vui lòng điền phần này"
				},
				kinhnghiem : {
					required : "Vui lòng điền phần này"
				},
				
				name : {
					required : "Vui lòng điền phần này"
				},
				phone : {
					required : "vui lòng điền số điên thoại"
					//rangelength : " Số điện thoại không hợp lệ"
					//validatePhone :" số điện thoại không hợp lê"
				},
				email : {
					required : "Vui lòng điền phần này",
					email : "Email không hợp lệ"
				}
				
			  }
			
		});
		
		

	</script>
</body>








</html>