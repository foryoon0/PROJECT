	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="../../../resources/jquery/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="../../../resources/css/qnaDetail.css">
<title>Insert title here</title>
<style>

*{   box-sizing: border-box;
}

#content {
	overflow: hidden;
}
section {
	float: right;
	width: 900px;
}
aside {
	float: left;
	width: 200px;
	margin-right: 50px;
	text-align: left;
}

p{
	text-align: left;
	font-size: 14px;
}
.mypageQnA{
	align-items: center;
	margin: 0 auto;
	text-align: center;
	border: none;
	border-collapse: collapse;
	width: 700px;
	font-size: 15px;
	text-align: left;
	margin-top: -20px;
}
.menu{
	text-align: left;
	font-size: 12px;
	margin: 0 auto;
	padding: 0px;
	color: #696969;
}
h2{
text-align:left;
margin:0px;
margin-top:0.3rem;
}

.personalInfo{
	margin:0px;
}

.user {
	width:500px;
	height:130px;
	float: left;
	border: 0.2rem solid #E1E1E1;
	margin-right: 50px;
	margin-top: 30px;
	margin-bottom: 50px;
	text-align: left;
	padding: 1rem;
	font-size: 12px;
	line-height: 8px;
}


.order{
	width:300px;
	border: 0.2rem solid #E1E1E1;
	float: left;
	height:130px;
	margin-top: 30px;
	margin-bottom: 50px;
	text-align: left;
	padding: 1rem;
	font-size: 15px;
	line-height: 8px;
}

.green{
	color: green;
}

.recentBox{
	width:900px;
	text-align:right;
	float:left;
	margin-bottom:5px;
}
 textarea {
    width: 100%;
    height: 15rem;
    border: none;
    resize: none;
    text-align:left;
  }
  
.comment{
 	width: 100%%;
    height: 5.5rem;
    border: none;
    resize: none;
    text-align:left;
  }
  
.focused-input2{
	height: 5rem;
}
.focused-input3{
	height: 5rem;
}

}
.btn {
	margin-left:1rem;
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
	font-size: 0.5rem;
	border-radius: 0.25rem;
	transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}


.w-100 {
	width: 100% !important;
}

.btn-lg, .btn-group-lg>.btn {
	padding: 0.5rem 1rem;
	font-size: 0.6rem;
	border-radius: 0.3rem;
}

.btn-primary {
	color: #fff;
	background-color: #a4e25e;
	border-color: #d1f779;
	float: right;
    margin-right: 1rem;
    margin-top: -10px;
}
}

.btn-primary:hover {
	color: #fff;
	background-color: #73c431;
	border-color: #1ad123;
}

.ct{padding:0px;}

.a_option{padding:0px;}

.nav-link {
	display: block;
	padding: 0.5rem 1rem;
	color: green;
	text-decoration: none;
	transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out;
}


.name{font-weight:bold;}


.t-1{width:150px;}
.t-2{width:150px;}
.t-3{width:150px;}
.t-4{width:150px;}

/* td{border: 1px solid black;} */
.product{text-align:left; font-weight:bold; font-size:20px; border-bottom: 1px solid black;}
.content1{text-align:center;}
.content2{height:400px; text-align:left; vertical-align:top;}
/* table{border: 0.7px solid #DCDCDC;}
td, th{border: 0.7px solid #DCDCDC;} */
.subbtn{width:900px;}
.subbtn2{margin: 20px; margin-right: 0px; width:790px;}
.subbtn3{width:800px;, margin-left: 13px;}
input[type="text"]{width:500px; border:none; height:30px; text-align:left; font-weight: bold;}
.subbtn4{width:800px; margin-top: 20px;}

</style>
</head>
<body>
<%@include file="../header.jsp" %>
<br>
<br>
<div id="content"> 
<aside>
<div class="menu">
	<p><strong>????????????</strong></p>
	<hr>
		<p><a href="<c:url value='/product/insert'/>" class="menu">????????????</a></p>
		<p><a href="<c:url value='/category/productCategoryEdit'/>" class="menu">????????????????????????</a></p>
		<p><a href="<c:url value='/category/stopOrStartSelling'/>" class="menu">??????????????????/??????????????????</a></p>
		<p><a href="<c:url value='/product/List/totalList' />" class="menu">??????????????????</a></p>
	<br>
	<p><strong>????????????</strong></p>
	<hr>

		<p><a href="<c:url value='/mypage/qnalist' />" class="menu">1:1 ?????? ????????????</a></p>
		<p><a href="<c:url value='/admin/orderStatus' />" class="menu">????????????</a></p>
		<p><a href="<c:url value='/admin/adminReviewList' />" class="menu">?????? ????????????</a></p>
		<p><a href="<c:url value='/notice/main' />" class="menu">F&Q</a></p>
	<br>
	<p><strong>??????????????????</strong></p>
	<hr>
		<p><a href="javascript:categoryAdd();" class="menu">??????????????????</a></p>
		<p><a href="javascript:categoryRemove();" class="menu">??????????????????</a></p>
		<p><a href="javascript:categoryEdit();" class="menu">????????????????????????</a></p>
		
	<br>
	<p><strong>????????????</strong></p>
	<hr>
		<p><a href="<c:url value='/admin/Sales' />" class="menu">????????????</a></p>
		
	<br>


</div>
</aside>
<section>
<br>
<form commandName="Qna" name="qnaForm" id="qnaForm" action="/qnaModifyInMyPage/${view.qna_number}" method="POST" enctype="multipart/form-data">
<input type="hidden" name="product_number" id="product number" value="${view.product_number}">
<input type="hidden" name="num" id="num" value="${num}">

<table class="mypageQnA">

<tr>	
		<td colspan="2" class="product">?????? ?????? - ${view.product_name}????</td>
</tr>

<tr>
	<th>??????</th>
		<td><input type="text" id="qna_title" name="qna_title" value="${view.qna_title}" readonly class="focused-input"></td>
</tr>
<tr>
<th class="t-1">?????????</th>
	<td class="t-2">${view.member_nickname}</td>
</tr>
<tr>
<th class="t-3">?????????</th>
	<td class="t-4">${view.qna_regdate}</td>
</tr>

<tr>
	<th colspan="4" class="content1">??????</th>
	
</tr>
<tr>
	<td colspan="2"><textarea readonly name="qna_content" id="qna_content">${view.qna_content}</textarea></td>
</tr>
</table>

<br>

<input type="hidden" name="qna_number" id="qna_number" value="${view.qna_number}">

<c:if test="${view.member_number == authInfo.member_number}">
<div class="subbtn">
	<input type="button" class="btn3 btn-primary btn-lg btn-block" onclick="deleteConfirm();" value="????????????">
	<input type="button" id="updatebtn" name="updatebtn" class="btn3 btn-primary btn-lg btn-block" onclick="Modify();" value="????????????">
	<input type="hidden" id="updateToController" name="updateToController" class="btn3 btn-primary btn-lg btn-block" onclick="Modify();" value="????????????">
	<input type="button" class="btn3 btn-primary btn-lg btn-block" onclick="location.href='/mypage/qnalist';" value="????????????">
</div>
</c:if>

<c:if test="${view.member_number != authInfo.member_number}">
<div class="subbtn3">
 	<input type="button" class="btn3 btn-primary btn-lg btn-block" onclick="location.href='/mypage/qnalist';" value="????????????">
</div>
</c:if>	


</form>
<br>
<c:choose>	
	<c:when test="${empty comment}">
		<p></p>
	</c:when>
	<c:when test="${!empty comment}">
	<form commandName="CommentWrite" name="commentForm" id="commentForm" action="/commentModifyInMyPage/${comment.comment_number}" method="POST">
		<table class="commentBox">
			<tr>
				<th>????????? ?????? </th>
						
			</tr>
				<tr>
					<td><textarea rows="3" cols="30" id="comment_content" name="comment_content" class="focused-input3" style="text-align:left;" readonly>${comment.comment_content}</textarea></td>
				</tr>
		</table>
	<c:if test="${authInfo.member_number == 10022}">
			<div class="subbtn4">
				<input type="hidden" name="comment_number" id="comment_number" value="${comment.comment_number}">
				<input type="reset" value="??????" class="btn3 btn-primary btn-lg btn-block">
				<input type="button" value="????????????" onclick="ModifyComment();" id="updateCommentBtn" name="updateCommentBtn" class="btn3 btn-primary btn-lg btn-block">
				<input type="hidden" value="????????????" id="updateCommentToController" name="updateCommentToController" class="btn3 btn-primary btn-lg btn-block">
				<input type="button" value="????????????" onclick="deleteComment();" class="btn3 btn-primary btn-lg btn-block">
			</div>
	</c:if>
		</form>
	</c:when>
</c:choose>
<br>


<c:choose>
	<c:when test="${empty comment}">
	<c:if test="${authInfo.member_number == 10022}">
		
		<form action="insertCommentInMyPage" commendName="CommentWrite" name="commentForm" id="commentForm" method="POST"  htmlEscape="false">	
			<table>
				<tr>
					<th>????????? ?????? </th>
					
				</tr>
			<tr>
					<td><textarea rows="3" cols="30" id="comment_content" name="comment_content" class="focused-input2" style="text-align:left;"></textarea></td>
			</tr>
			</table>
			<div class="subbtn2">
				<input type="hidden" name="qna_number" id="qna_number" value="${view.qna_number}">
				<input type="reset" value="??????" class="btn3 btn-primary btn-lg btn-block">
				<input type="button" value="??????????????????" id="insertbtn" name="insertbtn" class="btn3 btn-primary btn-lg btn-block">
			</div>
		</form>
	</c:if>
	</c:when>
	<c:when test="${!empty comment}">
		<P></P>
	</c:when>
</c:choose>


</section>
</div>
<br>
<br>
<script>
	
function deleteConfirm(){
	
	if(!confirm("?????? ???????????????????")){
		return false;
	}else{
		location.href='/admin/DeleteQueInMyPage/${qna_number}';
	}
}

function deleteComment(){
	var comment_number = document.getElementById("comment_number").value;	
	
	if(!confirm("?????? ???????????????????")){
		return false;
	}else{
		location.href='/admin/deleteComInMyPage?comment_number= '+ comment_number;
	}
}


function Modify(){
	$('#qna_title').attr('readonly',false);
	$('#qna_content').attr('readonly',false);
	$('.focused-input').focus();
	$('#updatebtn').attr('type','hidden');
	$('#updateToController').attr('type','button');	
}


function ModifyComment(){
	$('#comment_content').attr('readonly',false);
	$('.focused-input3').focus();
	$('#updateCommentBtn').attr('type','hidden');
	$('#updateCommentToController').attr('type','button');	
}





$('#updateToController').on("click",function(){
	var text = $("#qna_title").val();
	 var text2 = $("#qna_content").val(); 
	 var str_space = /\s/;
	 
	 	if(text.replace(/\s| /gi,'').length == 0) {
	 		alert("????????? ??????????????????.");
	 		$("#qna_title").focus();
	 		return;
	 	}
	 	
	 	if(text2.replace(/\s| /gi,'').length == 0) {
	 		alert("????????? ??????????????????.");
	 		$("#qna_content").focus();
	 		return;
	 	}
	 	
	$("#qnaForm").submit();
});

$('#updateCommentToController').on("click",function(){
	var text = $("#comment_content").val();
	 var str_space = /\s/;
	 
	 	if(text.replace(/\s| /gi,'').length == 0) {
	 		alert("????????? ??????????????????.");
	 		$("#qna_title").focus();
	 		return;
	 	}
	 	
	$("#commentForm").submit();
});






$("#insertbtn").on("click",function(){
	 var text = $("#comment_content").val();
	 var str_space = /\s/;
	 
	 	if(text.replace(/\s| /gi,'').length == 0) {
	 		alert("????????? ??????????????????.");
	 		$("#comment_content").focus();
	 		return;
	 	}
	 	
		   $("#commentForm").submit();
	});

function categoryEdit(){
	open('/category/categorySequence','?????? ??????','width=400px,height=400px,status=false');
}
function categoryAdd(){
	open('/category/categoryInsert','?????? ??????','width=400px,height=200px,status=false');
}
function categoryRemove(){
	open('/category/categoryDelete','?????? ??????','width=400px,height=200px,status=false');
}



</script>
<%@include file="../footer.jsp" %>
</body>
</html>