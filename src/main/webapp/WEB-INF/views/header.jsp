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
       <span class="font" id="bookmark">πBOOKMARK</span>
     </a>
 <c:choose>
	 <c:when test="${empty authInfo}">
     	<ul class="navheader">
	       <li class="navheader"><a href="<c:url value='/member/login' />"  aria-current="page">λ‘κ·ΈμΈ</a></li>
	       <li class="navheader"><a href="<c:url value='/member/join' />" >νμκ°μ</a></li>
     	</ul>
     </c:when>
    
     <c:when test="${authInfo.member_id  eq 'MEALADMIN' }">
     	 <ul class="navheader">
	       <li class="navheader userinfo">κ΄λ¦¬μλ μλνμΈμπ</li>
	       <li class="navheader"><a href="<c:url value='/logout' />"  aria-current="page">λ‘κ·Έμμ</a></li>
	       <li class="navheader"><a href="<c:url value='/admin/admin/${authInfo.member_number}' />" >κ΄λ¦¬μνμ΄μ§</a></li>
	       
     	</ul>
     </c:when>
     
     <c:otherwise>
       <ul class="navheader">
	       <li class="navheader userinfo">${authInfo.member_name}λ μλνμΈμπ</li>
	       <li class="navheader"><a href="<c:url value='/logout' />"  aria-current="page">λ‘κ·Έμμ</a></li>
	       <li class="navheader"><a href="<c:url value='/mypage/mypage' />" >λ§μ΄νμ΄μ§</a></li>
	       <li class="navheader"><a href="<c:url value='/product/cart/list.do' />">μ₯λ°κ΅¬λ</a></li>
	   <%--     <li class="navheader"><a href="<c:url value='/mypage/orderStatus' />" >μ£Όλ¬Έλ΄μ­</a></li> --%>
      </ul>
     </c:otherwise>
    </c:choose>
   </header>
 </div>


<img src="../../resources/image/logo_transparent.png" alt="" width="250px" height="250px" onclick="javascript:location.href='/';" style="cursor:pointer;">



<nav role="navigation">
  <ul id="main-menu">
    <li><a href="/product/List/totalList">μ μ²΄λ³΄κΈ°</a></li>
    
      <li><a href="/product/List/bestList">λ² μ€νΈ</a></li>
      
      <!-- <li><a href="#">μ¬κ΅¬λ§€Best</a></li> -->
      
       <li><a href="/product/List/newList">μ μ ν</a></li>
    <c:if test="${!empty menu1}">
	    <li><a href="#">&nbsp;&nbsp;&nbsp;νλ§λ³&nbsp;&nbsp;</a>
	    	<ul id="sub-menu">
	    		<c:forEach var="menu1" items="${menu1}">
			       <li><a href="/product/categoryList/${menu1.category_title}" aria-label="subemnu">${menu1.category_title}</a></li>
				</c:forEach>
	    	</ul>
	    </li>
	</c:if>
	<c:if test="${!empty menu2}">
	    <li><a href="#">&nbsp;&nbsp;&nbsp;μ¬μ΄λλμ¬&nbsp;&nbsp;&nbsp;</a>
	      <ul id="sub-menu">
		        <c:forEach var="menu2" items="${menu2}">
				   <li><a href="/product/categoryList/${menu2.category_title}" aria-label="subemnu">${menu2.category_title}</a></li>
				</c:forEach>
	      </ul>
	    </li>
    </c:if>
    <c:if test="${!empty menu3}">
	    <li><a href="#">&nbsp;&nbsp;&nbsp;λΈλλκ΄&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
    alert("Ctrl+Dν€λ₯Ό λλ₯΄μλ©΄ μ¦κ²¨μ°ΎκΈ°μ μΆκ°νμ€ μ μμ΅λλ€.");
});


</script>

</body>
</html>