<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>

<body>
	<div ng-app="myApp" ng-controller="myCtrl">
	<div class="site-blocks-cover" style="background-image: url(http://imagedata01.sage-fox.com/2018/09/02/Vector-globe_125102650_original.jpg)" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row row-custom align-items-center">
          <div class="col-md-10">
            <h1 class="mb-2 text-white w-75"><span class="font-weight-bold">Developer tiềm năng</span></h1>
            <div class="job-search">
           
           
              <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active py-3" id="pills-job-tab" data-toggle="pill" href="#pills-job" role="tab" aria-controls="pills-job" aria-selected="true">Tìm kiếm ứng viên tiềm năng </a>
                  
                </li>
                </ul>
                       <div class="tab-content bg-white p-4 rounded" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-job" role="tabpanel" aria-labelledby="pills-job-tab">
                  
                    <div class="row">
                      <div class="col-md-8 col-lg-8 mb-3 mb-lg-0 col-sm-8">
                        <input type="text" class="form-control" placeholder="Java,PHP,Ruby..." ng-model = "search.$">
                      </div>
                      
                      <div class="col-md-4 col-lg-4 mb-3 mb-lg-0 sol-sm-4">
                        <input type="submit" class="btn btn-primary btn-block" value="Tìm kiếm">
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
            <h2 class="font-weight-bold text-black">Ứng viên ưu tú</h2>
          </div>
         
	          <div class="col-md-3" data-aos="fade" data-aos-delay="200">
	            <a href="<c:url value="/dang-bai"/>" class="btn btn-primary py-3 btn-block"><span class="h5">+</span> Đăng bài</a>
	          </div>
         
        </div>

	  
        <div class="row" data-aos="fade" ng-repeat="x in list | filter:search">
         <div class="col-md-12">
           <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">

              <div class="mb-4 mb-md-0 mr-5">
               <div class="job-post-item-header d-flex align-items-center">
                 <h2 class="mr-3 text-black h4">{{x.name}}</h2>
                 <div class="badge-wrap">
                  <span class="bg-warning text-white badge py-2 px-4">{{x.profile.experience_years}}</span>
                 </div>
               </div>
               <div class="job-post-item-body d-block d-md-flex">
                 <div class="mr-3"><span class="fl-bigmug-line-portfolio23"></span> <a href="#">{{x.profile.technology_skill}}</a></div>
                 <div><span class="fl-bigmug-line-big104"></span> <span>${x.email}</span></div>
               </div>
              </div>

              <div class="ml-auto">
                <a href="#" class="btn btn-secondary rounded-circle btn-favorite text-gray-500"><span class="icon-heart"></span></a>
                <a href='<c:url value="/chi-tiet-ung-vien
                /{{x.id}}"/>' class="btn btn-primary py-2">Ứng tuyển</a>
              </div>

           </div>
         </div>
        </div>
	  
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


    

    

    <div class="site-section">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-6" data-aos="fade" >
            <h2 class="text-black">Why Job<strong>start</strong> </h2>
          </div>
        </div>
        <div class="row hosting">
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-4" data-aos="fade" data-aos-delay="100">

            <div class="unit-3 h-100 bg-white">
              
              <div class="d-flex align-items-center mb-3 unit-3-heading">
                <div class="unit-3-icon-wrap mr-4">
                  <svg class="unit-3-svg" xmlns="http://www.w3.org/2000/svg" width="59px" height="68px">
                    <path fill-rule="evenodd" stroke-width="2px" stroke-linecap="butt" stroke-linejoin="miter" fill="none" d="M29.000,66.000 L1.012,49.750 L1.012,17.250 L29.000,1.000 L56.988,17.250 L56.988,49.750 L29.000,66.000 Z"></path>
                  </svg><span class="unit-3-icon icon fl-bigmug-line-portfolio23"></span>
                </div>
                <h2 class="h5">Search Millions of Jobs</h2>
              </div>
              <div class="unit-3-body">
                <p>Lorem ipsum dolor sit amet consectetur is a nice adipisicing elita ssumenda a similique perferendis dolorem eos.</p>
              </div>
            </div>

          </div>
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-4" data-aos="fade" data-aos-delay="200">
            
            <div class="unit-3 h-100 bg-white">
              
              <div class="d-flex align-items-center mb-3 unit-3-heading">
                <div class="unit-3-icon-wrap mr-4">
                  <svg class="unit-3-svg" xmlns="http://www.w3.org/2000/svg" width="59px" height="68px">
                    <path fill-rule="evenodd" stroke-width="2px" stroke-linecap="butt" stroke-linejoin="miter" fill="none" d="M29.000,66.000 L1.012,49.750 L1.012,17.250 L29.000,1.000 L56.988,17.250 L56.988,49.750 L29.000,66.000 Z"></path>
                  </svg><span class="unit-3-icon icon fl-bigmug-line-big104"></span>
                </div>
                <h2 class="h5">Location Search</h2>
              </div>
              <div class="unit-3-body">
                <p>Lorem ipsum dolor sit amet consectetur is a nice adipisicing elita ssumenda a similique perferendis dolorem eos.</p>
              </div>
            </div>

          </div>
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-4" data-aos="fade" data-aos-delay="300">
            
            <div class="unit-3 h-100 bg-white">
              
              <div class="d-flex align-items-center mb-3 unit-3-heading">
                <div class="unit-3-icon-wrap mr-4">
                  <svg class="unit-3-svg" xmlns="http://www.w3.org/2000/svg" width="59px" height="68px">
                    <path fill-rule="evenodd" stroke-width="2px" stroke-linecap="butt" stroke-linejoin="miter" fill="none" d="M29.000,66.000 L1.012,49.750 L1.012,17.250 L29.000,1.000 L56.988,17.250 L56.988,49.750 L29.000,66.000 Z"></path>
                  </svg><span class="unit-3-icon icon fl-bigmug-line-airplane86"></span>
                </div>
                <h2 class="h5">Top Careers</h2>
              </div>
              <div class="unit-3-body">
                <p>Lorem ipsum dolor sit amet consectetur is a nice adipisicing elita ssumenda a similique perferendis dolorem eos.</p>
              </div>
            </div>

          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-4" data-aos="fade" data-aos-delay="400">

            <div class="unit-3 h-100 bg-white">
              
              <div class="d-flex align-items-center mb-3 unit-3-heading">
                <div class="unit-3-icon-wrap mr-4">
                  <svg class="unit-3-svg" xmlns="http://www.w3.org/2000/svg" width="59px" height="68px">
                    <path fill-rule="evenodd" stroke-width="2px" stroke-linecap="butt" stroke-linejoin="miter" fill="none" d="M29.000,66.000 L1.012,49.750 L1.012,17.250 L29.000,1.000 L56.988,17.250 L56.988,49.750 L29.000,66.000 Z"></path>
                  </svg><span class="unit-3-icon icon fl-bigmug-line-user144"></span>
                </div>
                <h2 class="h5">Search Expert Candidates</h2>
              </div>
              <div class="unit-3-body">
                <p>Lorem ipsum dolor sit amet consectetur is a nice adipisicing elita ssumenda a similique perferendis dolorem eos.</p>
              </div>
            </div>

          </div>
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-4" data-aos="fade" data-aos-delay="500">
            
            <div class="unit-3 h-100 bg-white">
              
              <div class="d-flex align-items-center mb-3 unit-3-heading">
                <div class="unit-3-icon-wrap mr-4">
                  <svg class="unit-3-svg" xmlns="http://www.w3.org/2000/svg" width="59px" height="68px">
                    <path fill-rule="evenodd" stroke-width="2px" stroke-linecap="butt" stroke-linejoin="miter" fill="none" d="M29.000,66.000 L1.012,49.750 L1.012,17.250 L29.000,1.000 L56.988,17.250 L56.988,49.750 L29.000,66.000 Z"></path>
                  </svg><span class="unit-3-icon icon fl-bigmug-line-clipboard68"></span>
                </div>
                <h2 class="h5">Easy To Manage Jobs</h2>
              </div>
              <div class="unit-3-body">
                <p>Lorem ipsum dolor sit amet consectetur is a nice adipisicing elita ssumenda a similique perferendis dolorem eos.</p>
              </div>
            </div>

          </div>
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-4" data-aos="fade" data-aos-delay="600">
            
            <div class="unit-3 h-100 bg-white">
              
              <div class="d-flex align-items-center mb-3 unit-3-heading">
                <div class="unit-3-icon-wrap mr-4">
                  <svg class="unit-3-svg" xmlns="http://www.w3.org/2000/svg" width="59px" height="68px">
                    <path fill-rule="evenodd" stroke-width="2px" stroke-linecap="butt" stroke-linejoin="miter" fill="none" d="M29.000,66.000 L1.012,49.750 L1.012,17.250 L29.000,1.000 L56.988,17.250 L56.988,49.750 L29.000,66.000 Z"></path>
                  </svg><span class="unit-3-icon icon fl-bigmug-line-user143"></span>
                </div>
                <h2 class="h5">Online Reviews</h2>
              </div>
              <div class="unit-3-body">
                <p>Lorem ipsum dolor sit amet consectetur is a nice adipisicing elita ssumenda a similique perferendis dolorem eos.</p>
              </div>
            </div>

          </div>

        </div>
      
      </div>
    </div>

    <div class="site-section block-4 bg-light">

      <div class="container">

        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-6" data-aos="fade" >
            <h2 class="text-black">Happy Employers</h2>
          </div>
        </div>

        <div class="nonloop-block-4 owl-carousel" data-aos="fade">
          <div class="item col-md-8 mx-auto">
            
            <div class="block-38 text-center bg-white p-4">
              <div class="block-38-img">
                <div class="block-38-header"> 
                  <img src="images/person_1.jpg" alt="Image placeholder">
                  <h3 class="block-38-heading">Elizabeth Graham</h3>
                  <p class="block-38-subheading">Creative Director, XYG Company</p>
                </div>
                <div class="block-38-body">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
                </div>
              </div>
            </div>

          </div>
          <div class="item col-md-8 mx-auto">
            <div class="block-38 text-center bg-white p-4">
              <div class="block-38-img">
                <div class="block-38-header">
                  <img src="images/person_2.jpg" alt="Image placeholder">
                  <h3 class="block-38-heading">Jennifer Greive</h3>
                  <p class="block-38-subheading">Lead Designer, Mig Company</p>
                </div>
                <div class="block-38-body">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
                </div>
              </div>
            </div>
          </div>

          <div class="item col-md-8 mx-auto">
            
            <div class="block-38 text-center bg-white p-4">
              <div class="block-38-img">
                <div class="block-38-header"> 
                  <img src="images/person_1.jpg" alt="Image placeholder">
                  <h3 class="block-38-heading">Elizabeth Graham</h3>
                  <p class="block-38-subheading">Creative Director, XYG Company</p>
                </div>
                <div class="block-38-body">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
                </div>
              </div>
            </div>

          </div>
          <div class="item col-md-8 mx-auto">
            <div class="block-38 text-center bg-white p-4">
              <div class="block-38-img">
                <div class="block-38-header">
                  <img src="images/person_2.jpg" alt="Image placeholder">
                  <h3 class="block-38-heading">Jennifer Greive</h3>
                  <p class="block-38-subheading">Lead Designer, Mig Company</p>
                </div>
                <div class="block-38-body">
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

    

    <div class="site-section">
      <div class="container">
        <div class="row justify-content-center text-center mb-5">
          <div class="col-md-6" data-aos="fade" >
            <h2 class="text-black">Latest Blog</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-5 mb-lg-0 col-lg-3" data-aos="fade">
            <div class="position-relative unit-8">
            <a href="#" class="mb-3 d-block img-a"><img src="images/img_1.jpg" alt="Image" class="img-fluid rounded"></a>
            <span class="d-block text-gray-500 text-normal small mb-3">By <a href="#">Colorlib</a> <span class="mx-2">&bullet;</span> Jan 20th, 2019</span>
            <h2 class="h5 font-weihgt-normal line-height-sm mb-3"><a href="#" class="text-black">Lorem ipsum dolor sit amet consectetur adipisicing elit</a></h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In pariatur nostrum asperiores corrupti delectus.</p>
            </div>
            
          </div>
          <div class="col-md-6 mb-5 mb-lg-0 col-lg-3" data-aos="fade">
            <div class="position-relative unit-8">
            <a href="#" class="mb-3 d-block img-a"><img src="images/img_2.jpg" alt="Image" class="img-fluid rounded"></a>
            <span class="d-block text-gray-500 text-normal small mb-3">By <a href="#">Colorlib</a> <span class="mx-2">&bullet;</span> Jan 20th, 2019</span>
            <h2 class="h5 font-weihgt-normal line-height-sm mb-3"><a href="#" class="text-black">Lorem ipsum dolor sit amet consectetur adipisicing elit</a></h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In pariatur nostrum asperiores corrupti delectus.</p>
            </div>
          </div>
          <div class="col-md-6 mb-5 mb-lg-0 col-lg-3" data-aos="fade">
            <div class="position-relative unit-8">
            <a href="#" class="mb-3 d-block img-a"><img src="images/img_3.jpg" alt="Image" class="img-fluid rounded"></a>
            <span class="d-block text-gray-500 text-normal small mb-3">By <a href="#">Colorlib</a> <span class="mx-2">&bullet;</span> Jan 20th, 2019</span>
            <h2 class="h5 font-weihgt-normal line-height-sm mb-3"><a href="#" class="text-black">Lorem ipsum dolor sit amet consectetur adipisicing elit</a></h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In pariatur nostrum asperiores corrupti delectus.</p>
            </div>
          </div>
          <div class="col-md-6 mb-5 mb-lg-0 col-lg-3" data-aos="fade">
            <div class="position-relative unit-8">
            <a href="#" class="mb-3 d-block img-a"><img src="images/img_4.jpg" alt="Image" class="img-fluid rounded"></a>
            <span class="d-block text-gray-500 text-normal small mb-3">By <a href="#">Colorlib</a> <span class="mx-2">&bullet;</span> Jan 20th, 2019</span>
            <h2 class="h5 font-weihgt-normal line-height-sm mb-3"><a href="#" class="text-black">Lorem ipsum dolor sit amet consectetur adipisicing elit</a></h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In pariatur nostrum asperiores corrupti delectus.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="py-5 bg-primary">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h2 class="text-white h4 font-weihgt-normal mb-4">Subscribe Newsletter</h2>
          </div>
        </div>  
        <form action="" class="row">
          <div class="col-md-9">
            <input type="text" class="form-control border-0 mb-3 mb-md-0" placeholder="Enter Your Email">
          </div>
          <div class="col-md-3">
            <input type="submit" value="Send" class="btn btn-dark btn-block" style="height: 45px;">  
          </div>
        </form>
      </div>
    </div>
   </div>
 <script >
  var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	$http({
        method: 'GET',
        url: '/ITJOB/trang-chu-cong-ty/listcadidate'
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