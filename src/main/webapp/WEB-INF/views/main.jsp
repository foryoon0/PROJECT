<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>밀슐랭</title>
<style>
.b{border : solid 1px black;}
* {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
}
.card{
border: none;
width: 20rem;
height: 25rem;
margin:0auto;
text-align:left;
float:left;
}
.card-body{width:100%;height:30%; text-align:left;}
.pInfo{margin: 0px; font-weight:bold; font-size: 15px; text-align:left; padding:0px; margin-left:-13px;}
.card-text{margin:0px; font-size: 15px; text-align:left; font-weight:bold; margin-left:-13px;}
.menu-name{padding:0rem; font-size:18px; font-weight:bold;}
.wrap{
width: 80%;
margin: 0auto;
overflow: hidden;
padding-top:10px;
}
p{font-size:25px; text-weight:bold; text-align:left; text-align:left; margin: 0px;}

body {
  margin: 0;
  padding: 0;  
  position: relative;
  height: 100%;
}


.swiper {
  width: 80%;
  height: 100%;
}

.swiper2 {
  width: 80%;
  height: 100%;
}


.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #fff;
  width:20rem; 
  height: 25rem;

  /* Center slide text vertically */
  display: -webkit-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  -webkit-justify-content: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}

.swiper-slide2 {
  text-align: center;
  font-size: 18px;
  background: #fff;
  width:15rem; 
  height: 20rem;

  /* Center slide text vertically */
  display: -webkit-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  -webkit-justify-content: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  -webkit-align-items: center;
  align-items: center;
}


.swiper-slide img {
  display: block;
  object-fit: cover;
}

.card-image{width:20rem; height:20rem;}
.card-image2{width:10rem; height:10rem;}
.swiper-button-next{color:#DEDEDE; margin-right:-5px;}
.swiper-button-prev{color:#DEDEDE;  margin-left:-10px;}
.swiper-pagination{color:#DEDEDE;}
.best{text-align:left; font-weight:bold; float:left; margin-left:-950px;}
.new{background-color:#F5F5F5; width:100%; height:600px; margin-top:100px;}
.recom{text-align:left; font-weight:bold; margin-top: 30px; margin-left:150px;}
.newproduct{text-align:left; font-weight:bold; float:left; margin-left:-1000px; margin-top:50px;}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
<!-- 배너 -->
	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
	<div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="./resources/IMG/banner1.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <a href="https://fresheasy.co.kr/" style="padding:0px;"><img src="./resources/IMG/banner2.jpg" class="d-block w-100" alt="..."></a>
	    </div>
	    <div class="carousel-item">
	      <img src="./resources/IMG/banner3.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="./resources/IMG/banner4.jpg" class="d-block w-100" alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="./resources/IMG/banner5.jpg" class="d-block w-100" alt="...">
	    </div>
	 </div>
	 <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	 </button>
	 <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	 </button>
</div>
<br>
<br>

<!-- 베스트 메뉴시작 -->
<p class="best">밀슐랭 베스트 상품</p>
<br>
	<div class="wrap swiper mySwiper">
		<div class="swiper-wrapper">
			
		<div class="swiper-slide">
		<div class="card-main">
			<img src="/uploadedIMG/2022/03/220403.jpg" class="card-image" alt="...">
				    <div class="card-body">
				      <p class="menu-name pInfo">백년가게 가포옛날영도집 흑산도 장어탕</p>
				      <p class="card-text pInfo">6500원</p> </div>
			</div>
	  	 </div>
  		
	  	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="./resources/IMG/food2.PNG" class="card-image" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">부산집 언양식불고기</p>
		      <p class="card-text pInfo">6900원</p></div>
		     </div>
		</div>
		
	  	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="./resources/IMG/food3.PNG" class="card-image" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">바를정육 LA갈비꽃선물세트</p>
		      <p class="card-text pInfo">89900원</p></div>
		     </div>
		</div>
		
		 	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="/uploadedIMG/2022/03/2204032.jpg" class="card-image" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">바지락 듬뿍얼큰파스타</p>
		      <p class="card-text pInfo">15900원</p></div>
		     </div>
		</div>

	 </div>
	  
	  <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
	   
	  </div>

<br>

<!-- 추천상품 시작 -->

<div class="new">
<p class="recom">밀슐랭 추천 상품</p>
<br>
	<div class="wrap swiper mySwiper2">
		<div class="swiper-wrapper">
			
		<div class="swiper-slide">
		<div class="card-main">
			<img src="/uploadedIMG/2022/03/220403.jpg" class="card-image2" alt="...">
				    <div class="card-body">
				      <p class="menu-name pInfo">백년가게 가포옛날영도집 흑산도 장어탕</p>
				      <p class="card-text pInfo">6500원</p> </div>
			</div>
	  	 </div>
  		
	  	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="./resources/IMG/food2.PNG" class="card-image2" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">부산집 언양식불고기</p>
		      <p class="card-text pInfo">6900원</p></div>
		     </div>
		</div>
		
	  	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="./resources/IMG/food3.PNG" class="card-image2" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">바를정육 LA갈비꽃선물세트</p>
		      <p class="card-text pInfo">89900원</p></div>
		     </div>
		</div>
		
		 	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="/uploadedIMG/2022/03/2204032.jpg" class="card-image2" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">바지락 듬뿍얼큰파스타</p>
		      <p class="card-text pInfo">15900원</p></div>
		     </div>
		</div>

	 </div>
	  
	  <div class="swiper-button-next2"></div>
      <div class="swiper-button-prev2"></div>
      <div class="swiper-pagination2"></div>
	   
	  </div>

</div>



<!-- 신상품 시작 -->
<br>
<p class="newproduct">밀슐랭 신상품</p>
<br>
	<div class="wrap swiper mySwiper">
		<div class="swiper-wrapper">
			
		<div class="swiper-slide">
		<div class="card-main">
			<img src="/uploadedIMG/2022/03/220403.jpg" class="card-image" alt="...">
				    <div class="card-body">
				      <p class="menu-name pInfo">백년가게 가포옛날영도집 흑산도 장어탕</p>
				      <p class="card-text pInfo">6500원</p> </div>
			</div>
	  	 </div>
  		
	  	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="./resources/IMG/food2.PNG" class="card-image" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">부산집 언양식불고기</p>
		      <p class="card-text pInfo">6900원</p></div>
		     </div>
		</div>
		
	  	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="./resources/IMG/food3.PNG" class="card-image" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">바를정육 LA갈비꽃선물세트</p>
		      <p class="card-text pInfo">89900원</p></div>
		     </div>
		</div>
		
		 	<div class="swiper-slide">
	  	<div class="card-main">
		    <img src="/uploadedIMG/2022/03/2204032.jpg" class="card-image" alt="...">
		    <div class="card-body">
		      <p class="menu-name pInfo">바지락 듬뿍얼큰파스타</p>
		      <p class="card-text pInfo">15900원</p></div>
		     </div>
		</div>

	 </div>
	  
	  <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
	   
	  </div>

<br>


	
	
	
	
	
<br>
<br>

<script>

var swiper = new Swiper(".mySwiper", {
     slidesPerView: 3,
     spaceBetween: 30,
     slidesPerGroup: 3,
     loop: true,
     loopFillGroupWithBlank: true,
     pagination: {
       el: ".swiper-pagination",
       clickable: true,
     },
     navigation: {
       nextEl: ".swiper-button-next",
       prevEl: ".swiper-button-prev",
     },
   });
   
var swiper = new Swiper(".mySwiper2", {
    slidesPerView: 4,
    spaceBetween: 20,
    slidesPerGroup: 4,
    loop: true,
    loopFillGroupWithBlank: true,
    pagination: {
      el: ".swiper-pagination2",
      clickable: true,
    },
    navigation: {
      nextEl: ".swiper-button-next2",
      prevEl: ".swiper-button-prev2",
    },
  });

</script>
<%@include file="footer.jsp"%>
</body>
</html>
























