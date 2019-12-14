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
			<h2 class="mb-0">Các bài viết đã ứng tuyển</h2>
			<p class="mb-0 unit-6">
				<a href="index.html">Trang chủ</a> <span class="sep">></span> <span>Các bài viết</span>
			</p>
		</div>
	</div>
	<div class="site-section bg-light">
		<div class="container">
			<div class="row">

				<div class="col-md-8 col-lg-8 mb-5">



					

						<h3 class="font-weight-bold" >Danh sách các bài viết</h3>
					<c:forEach items="${listpost }"  var="post">
					
						<div class="row">
					         <div class="col-md-12">
					           <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">
													              <div class="mb-4 mb-md-0 mr-5">
					               <div class="job-post-item-header d-flex align-items-center">
					                 <h2 class="mr-3 text-black h4">${post.getPosition() }</h2>
					                 <div class="badge-wrap">
					                  <span class="bg-warning text-white badge py-2 px-4">${post.getCompanyEntity().getName() }</span>
					                 </div>
					               </div>
					               <div class="job-post-item-body d-block d-md-flex">
					                 <div class="mr-3"><span class="fl-bigmug-line-portfolio23"></span>${post.getSalary() }</div>
					                 <div class="mr-3"><span class="fl-bigmug-line-big104"></span>${post.getProvince()}   <span></span></div>
					                 
					                 <div><span class="fl-bigmug-line-alarm31"></span> ${post.getTypejob()}<span></span></div>
					               </div>
					              </div>
					
					              <div class="ml-auto">
					                
					                <a href='<c:url value="/chi-tiet-bai-dang/${post.getId() }"/>' class="btn btn-primary py-2">Chi tiết</a>
					              </div>
					
					           </div>
					         </div>
					        </div>
					       
					       </c:forEach>
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
									<strong>Bằng cấp:${candidate.getProfileDTO().getDegree() }</strong> <span> </span>
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