<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<header class="site-navbar py-1" role="banner">

	<div class="container">
		<div class="row align-items-center">

			<div class="col-6 col-xl-2">
				<h1 class="mb-0">
					<a href="index.html" class="text-black h2 mb-0"><strong>ITjob</strong></a>
				</h1>
			</div>

			<div class="col-10 col-xl-10 d-none d-xl-block">
				<nav class="site-navigation text-right" role="navigation">

					<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block font-weight-bold">
						
						<c:choose>

							<c:when test="${not empty company}">
								<li class="active"><a href="<c:url value="/trang-chu-cong-ty"/>">Trang chủ</a></li>

								<li><a href="blog.html">Blog</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Thông tin liên hệ</a></li>
							
								<li class="has-children"><a href=""><span>${company.getName() }
									</span> </a>
									<ul class="dropdown">
										<li><a href="<c:url value="/trang-chu-cong-ty/cong-ty"/>">Các bài viết đã đăng</a></li>
	
										<li><a href="<c:url value="/dang-ky-ung-vien"/>">Đổi
												mật khẩu</a></li>
										<li><a href="<c:url value="/dang-xuat"/>">Đăng
												xuất</a></li>
									</ul></li>
								<img style="height: 27px; padding-bottom: 5px" class="btnLogin"
									src="/ITJOB/template/web/images/avatar.png">
							</c:when>

							<c:when test="${not empty candidate}">
							
							<li class="active"><a href="<c:url value="/"/>">Trang chủ</a></li>

							<li><a href="blog.html">Blog</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="contact.html">Thông tin liên hệ</a></li>
								<li class="has-children"><a href=""><span>${candidate.getName() }
									</span> </a>
									<ul class="dropdown">
										<li><a href="<c:url value="/cac-bai-ung-tuyen"/>">Bài viết đã ứng tuyển</a></li>
										<li><a href="<c:url value="/chi-tiet-ung-vien/${candidate.getId()}"/>">Thông tin cá nhân</a></li>
										<li><a href="<c:url value="/dang-ky-ung-vien"/>">Đổi
												mật khẩu</a></li>
										<li><a href="<c:url value="/dang-xuat"/>">Đăng
												xuất</a></li>
									</ul></li>
								<img style="height: 27px; padding-bottom: 5px" class="btnLogin"
									src="/ITJOB/template/web/images/avatar.png">
							</c:when>

							<c:otherwise>
								<li class="active"><a href="<c:url value="/"/>">Trang chủ</a></li>

								<li><a href="blog.html">Blog</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Thông tin liên hệ</a></li>
								<li><a href="<c:url value="/dang-nhap"/>">Đăng nhập</a></li>
								<li class="has-children"><a href=""><span>Đăng
											ký </span> </a>
									<ul class="dropdown">
										<li><a href="<c:url value="/dang-ky-cong-ty"/>">Công
												Ty</a></li>
										<li><a href="<c:url value="/dang-ky-ung-vien"/>">Ứng
												Viên</a></li>
									</ul></li>
								<img style="height: 27px; padding-bottom: 5px" class="btnLogin"
									 src="/ITJOB/template/web/images/avatar.png" hidden>
							</c:otherwise>
						</c:choose>


					</ul>
				</nav>
			</div>

			<div class="col-6 col-xl-2 text-right d-block">

				<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
					style="position: relative; top: 3px;">
					<a href="#" class="site-menu-toggle js-menu-toggle text-black"><span
						class="icon-menu h3"></span></a>
				</div>

			</div>

		</div>
	</div>

</header>
