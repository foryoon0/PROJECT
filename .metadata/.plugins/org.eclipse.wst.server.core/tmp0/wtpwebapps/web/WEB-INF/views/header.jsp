<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<script src="../../../resources/jquery/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="../../resources/css/header.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <div class="containerbox">
   <header class="d-flex flex-wrap justify-content-center py-3 mb-4">
     <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
       <span class="font" id="bookmark">๐BOOKMARK</span>
     </a>
 <c:choose>
	 <c:when test="${empty authInfo}">
     	<ul class="navheader">
	       <li class="navheader"><a href="<c:url value='/member/login' />"  aria-current="page">๋ก๊ทธ์ธ</a></li>
	       <li class="navheader"><a href="<c:url value='/member/joinChoice' />" >ํ์๊ฐ์</a></li>
	       <li class="navheader"><a href="#">์ฃผ๋ฌธ์กฐํ</a></li>
	       <li class="navheader"><a href="#">์ฅ๋ฐ๊ตฌ๋</a></li>
	       <li class="navheader"><a href="#">์นดํ๊ณ ๋ฆฌ์ถ๊ฐ</a></li>
	       <li class="navheader"><a href="#">์นดํ๊ณ ๋ฆฌ์ญ์ </a></li>
	       <li class="navheader"><a href="javascript:categoryEdit();">์นดํ๊ณ ๋ฆฌ์์๋ณ๊ฒฝ</a></li>
     	</ul>
     </c:when>
    
     <c:when test="${authInfo.member_id  eq 'MEALADMIN' }">
     	 <ul class="navheader">
	       <li class="navheader userinfo">๊ด๋ฆฌ์๋ ์๋ํ์ธ์๐</li>
	       <li class="navheader"><a href="<c:url value='/logout' />"  aria-current="page">๋ก๊ทธ์์</a></li>
	       <li class="navheader"><a href="<c:url value='/admin/admin/${authInfo.member_number}' />" >๊ด๋ฆฌ์ํ์ด์ง</a></li>
     	</ul>
     </c:when>
     
     <c:otherwise>
       <ul class="navheader">
	       <li class="navheader userinfo">${authInfo.member_name}๋ ์๋ํ์ธ์๐</li>
	       <li class="navheader"><a href="<c:url value='/logout' />"  aria-current="page">๋ก๊ทธ์์</a></li>
	       <li class="navheader"><a href="<c:url value='/mypage/mypage/${authInfo.member_number}' />" >๋ง์ดํ์ด์ง</a></li>
	       <li class="navheader"><a href="#" >์ฃผ๋ฌธ์กฐํ</a></li>
	       <li class="navheader"><a href="#">์ฅ๋ฐ๊ตฌ๋</a></li>
     </ul>
     
     
     </c:otherwise>
    </c:choose>
   </header>
 </div>


<img src="../../resources/image/logo_transparent.png" alt="" width="250px" height="250px" onclick="javascript:location.href='/';" style="cursor:pointer;">



<nav role="navigation">
  <ul id="main-menu">
    <li><a href="/product/totalList">์ ์ฒด๋ณด๊ธฐ</a></li>
    
      <li><a href="#">๋ฒ ์คํธ</a></li>
      
      <li><a href="#">์ฌ๊ตฌ๋งคBest</a></li>
      
       <li><a href="#">์ ์ ํ</a></li>
    <c:if test="${!empty menu1}">
	    <li><a href="#">&nbsp;&nbsp;&nbsp;ํ๋ง๋ณ&nbsp;&nbsp;</a>
	    	<ul id="sub-menu">
	    		<c:forEach var="menu1" items="${menu1}">
			       <li><a href="/product/categoryList/${menu1.category_title}" aria-label="subemnu">${menu1.category_title}</a></li>
				</c:forEach>
	    	</ul>
	    </li>
	</c:if>
	<c:if test="${!empty menu2}">
	    <li><a href="#">์ฌ์ด๋๋์ฌ</a>
	      <ul id="sub-menu">
		        <c:forEach var="menu2" items="${menu2}">
				   <li><a href="/product/categoryList/${menu2.category_title}" aria-label="subemnu">${menu2.category_title}</a></li>
				</c:forEach>
	      </ul>
	    </li>
    </c:if>
    <c:if test="${!empty menu3}">
	    <li><a href="#">๋ธ๋๋๊ด</a>
	      <ul id="sub-menu">
		        <c:forEach var="menu3" items="${menu3}">
				   <li><a href="/product/categoryList/${menu3.category_title}" aria-label="subemnu">${menu3.category_title}</a></li>
				</c:forEach>
	      </ul>
	    </li>
    </c:if>
  </ul>
</nav>




<script>
$("#bookmark").click(function(){
    alert("Ctrl+Dํค๋ฅผ ๋๋ฅด์๋ฉด ์ฆ๊ฒจ์ฐพ๊ธฐ์ ์ถ๊ฐํ์ค ์ ์์ต๋๋ค.");
});
function categoryEdit(){
	open('http://localhost:8080/category/categorySequence','๋ฐฐ๋ ์ถ๊ฐ','width=400px,height=200px,status=false');
}

</script>

</body>
</html>