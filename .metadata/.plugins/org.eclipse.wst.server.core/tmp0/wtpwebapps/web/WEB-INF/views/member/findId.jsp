<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
 <head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../../resources/css/find.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>아이디/비밀번호 찾기</title>
    
 
<!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">



<style>
 a{padding: 0.5rem; text-align: center; font-weight: bold;}
 a:link { text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: rgb(95, 185, 87); text-decoration: none;}
 
 input[type="text"], input[type="email"] {
	width: 100%;
	height: 30px;
	text-align: left;
	border:0.5px solid gray;
 }	
 p{color:gray;}
 table{
 width:300px;
 border-top: 0.5px solid gray;
 border-bottom: 0.5px solid gray;
 border-collapse: collapse;}
 th, td {
	border-bottom: 0.5px solid #444444;
	padding: 10px;
	text-align: left;}
	
.btn {
	width: 300px;
	display: inline-block;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	text-align: center;
	text-decoration: none;
	vertical-align: middle;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
	background-color: transparent;
	border: 1px solid transparent;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	border-radius: 0.25rem;
	transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.w-100 {
	width: 100% !important;
}

.btn-lg, .btn-group-lg>.btn {
	padding: 0.5rem 1rem;
	font-size: 1.25rem;
	border-radius: 0.3rem;
}

.btn-primary {
	color: #fff;
	background-color: #a4e25e;
	border-color: #d1f779;
}

.btn-primary:hover {
	color: #fff;
	background-color: #73c431;
	border-color: #1ad123;
}




</style>


<title>Insert title here</title>
</head>



<body>
<%@include file="../header.jsp" %>
<br>
<br>

<!-- 탭 메뉴 -->

  <div class="nav nav-tabs centered" id="nav-tab" role="tablist">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">아이디 찾기</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">비밀번호 찾기</button>
  </div>


<!-- 아이디 찾기 시작 -->
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
  		<!-- content1 -->
  		<div class="text-center">
 		  <h5>등록 정보로 아이디 찾기</h5>
    		<p>회원가입 시 등록한 정보로 찾을 수 있습니다.</p>
		</div>
		<br>
		<form class="user" id="findIDform" action="findId" method="POST">
	<table>
		<tr>
			<th>이름</th>
			<td><input type="text" id="member_name" name="member_name"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="email" id="member_email" name="member_email">
			</td>
		</tr>
	</table>
	<br>
		<button class="btn btn-primary btn-lg btn-block" type="button" id="findID" name="findID">확인</button>
</form> 
  </div>
  
  
  
  <!-- 비밀번호 찾기 시작-->
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
  	<!-- 콘텐트2 -->
  	<div class="text-center">
 		  <h5>등록 정보로 임시 비밀번호 찾기</h5>
    		<p>회원가입 시 등록한 정보로 찾을 수 있습니다.</p>
		</div>
		<br>
		<form class="user" id="findPWDform" action="findPwd" method="POST">
	<table>
		<tr>
			<th>이름</th>
			<td><input type="text" id="member_name" name="member_name"></td>
		</tr>
		<tr>
			<th>아이디</th>
			<td><input type="text" id="member_id" name="member_id"></td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td><input type="email" id="member_email" name="member_email">
			</td>
		</tr>
	</table>
	<br>
		<button class="btn btn-primary btn-lg btn-block" type="button" id="findPWD" name="findPWD">확인</button>
</form> 
  </div>
  
  </div>

<br>
<br>
<br>
<%@include file="../footer.jsp" %>
<script>

$("#findID").on("click",function(){	
	   $("#findIDform").submit();
}) 

$("#findPWD").on("click",function(){	
	   $("#findPWDform").submit();
}) 






</script>



</body>
</html>