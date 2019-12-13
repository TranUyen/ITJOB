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
			<h2 class="mb-0">Các bài viết đã đăng</h2>
			<p class="mb-0 unit-6">
				<a href="index.html">Trang chủ</a> <span class="sep">></span> <span>Các bài viết</span>
			</p>
		</div>
	</div>
	<div class="site-section bg-light">
		<div class="container">
			<div class="row">

				<div class="col-md-8 col-lg-8 mb-5">



					

						<h3 class="font-weight-bold" >Danh sách ứng viên</h3>
					<c:forEach items="${listpost}" var="post">
						<div class="row">
					         <div class="col-md-12">
					           <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">
					
					              <div class="mb-4 mb-md-0 mr-5">
					               <div class="job-post-item-header d-flex align-items-center">
					                 <h2 class="mr-3 text-black h4">${post.getPosition() }</h2>
					                 <div class="badge-wrap">
					                  <span class="bg-warning text-white badge py-2 px-4">${post.getSalary() }</span>
					                 </div>
					               </div>
					               <div class="job-post-item-body d-block d-md-flex">
					                 <div class="mr-3"><span class="fl-bigmug-line-portfolio23"></span>${post.getRequirementEntity().getDegree() }</div>
					                 <div class="mr-3"><span class="fl-bigmug-line-big104"></span> ${post.getProvince() }<span></span></div>
					                 <div><span class="fl-bigmug-line-alarm31"></span> ${post.getTime()}<span></span></div>
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
					<h3 class="font-weight-bold" >Thông tin bài viết</h3>
					
					<div class="p-4 mb-3 bg-white">
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<img alt="" src="data:image/png;base64,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">
							</div>
						</div>
					
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Tên công ty:${company.getName() }</strong> <span> </span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Địa chỉ:${company.getAddress() }</strong> <span> </span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Email:${company.getEmail() }</strong> <span> </span>
								</p>
							</div>
						</div>
						<div class="row form-group " style="margin-bottom: 0;">
							<div class="col-md-12 mb-3 mb-md-0">
								<p>
									<strong>Hot line:</strong> <span> </span>
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