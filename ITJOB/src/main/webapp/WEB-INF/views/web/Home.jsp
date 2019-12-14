<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>

<body >
	<div ng-app="myApp"  ng-controller="myCtrl">
	<div class="site-blocks-cover" style="background-image: url(template/web/images/bit.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row row-custom align-items-center">
          <div class="col-md-10">
            <h1 class="mb-2 text-white w-75"><span class="font-weight-bold">Việc làm IT cho các developer chất</span></h1>
            <div class="job-search">
           
               <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active py-3" id="pills-candidate-tab" data-toggle="pill" href="#pills-candidate" role="tab" aria-controls="pills-candidate" aria-selected="false">Tìm kiếm việc làm phù hợp</a>
                </li>
              </ul>
              <div class="tab-content bg-white p-4 rounded" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-job" role="tabpanel" aria-labelledby="pills-job-tab">
                  
                    <div class="row">
                      <div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
                        <input type="text" class="form-control" placeholder="eg. Web Developer" ng-model = "search.$">
                      </div>
                      <div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
                        <div class="select-wrap">
                          <span class="icon-keyboard_arrow_down arrow-down"></span>
                          <select name="" id="" class="form-control" ng-model = "search.typejob">
                            <option value="">Hình thức</option>
                            <option value="full time">Full time</option>
                            <option value="part time">Part Time</option>
                            <option value="freelance">Thực tập sinh</option>
                            <option value="internship">Tự do</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
                         <div class="select-wrap">
                          <span class="icon-keyboard_arrow_down arrow-down"></span>
                          <select name="" id="" class="form-control" ng-model = "search.province" >
                           	<option value="">Địa điểm</option>
                            <option value="Hà Nội">Hà Nội</option>
                            <option value="Đà Nẵng">Đà Nẵng</option>
                            <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6 col-lg-3 mb-3 mb-lg-0">
                        <input type="submit" class="btn btn-primary btn-block" value="Tìm kiếm" >
                      </div>
                    </div>
                  
                </div>
                
              	</div>
            </div>
          </div>
        </div>
      </div>
    </div>  
    

    <div class="site-section bg-light">
      <div class="container" >
        <div class="row justify-content-start text-left mb-5">
          <div class="col-md-9" data-aos="fade">
            <h2 class="font-weight-bold text-black">Việc làm phổ biến</h2>
          </div>
          
        </div>

<%-- 	   <c:forEach items="${listposts}" var ="post"> --%>
        <div class="row" data-aos="fade" ng-repeat="x in list| filter:search  " >
         <div class="col-md-12">
           <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">

              <div class="mb-4 mb-md-0 mr-5">
               <div class="job-post-item-header d-flex align-items-center">
                 <h2 class="mr-3 text-black h4">{{x.position}}</h2>
                 <div class="badge-wrap">
                  <span class="bg-warning text-white badge py-2 px-4">{{x.typejob}}</span>
                 </div>
               </div>
               <div class="job-post-item-body d-block d-md-flex">
                 <div class="mr-3"><span class="fl-bigmug-line-portfolio23"></span> <a href="#">{{x.companyEntity.name}}</a></div>
                 <div><span class="fl-bigmug-line-big104"></span> <span>{{x.province}}</span></div>
               </div>
              </div>

              <div class="ml-auto">
                <a href="#" class="btn btn-secondary rounded-circle btn-favorite text-gray-500"><span class="icon-heart"></span></a>
                <a href='<c:url value="/chi-tiet-bai-dang/{{x.id}}" />' class="btn btn-primary py-2">Ứng tuyển</a>
              </div>

           </div>
         </div>
        </div>
<%-- 	   </c:forEach> --%>
        <div class="row mt-5">
          <div class="col-md-12 text-center">
            <div class="site-block-27">
              <ul>
                <li><a href="#"><i class="icon-keyboard_arrow_left h5"></i></a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><i class="icon-keyboard_arrow_right h5"></i></a></li>
              </ul>
            </div>
          </div>
        </div>


      </div>
    </div>    


    

    

    
    
    
   </div>
 <script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	$http({
        method: 'GET',
        url: '/ITJOB/lists'
    }).then(function(response) {
      $scope.list = response.data;
     
  }, function(response) {
      $scope.content = "Something went wrong";
  },
  function(response) { 
      console.log("Error: " + response.status + " : " + response.data);
  }
  );
	
	
});


</script>
 
   
	
</body>