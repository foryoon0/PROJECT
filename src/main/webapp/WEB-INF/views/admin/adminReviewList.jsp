<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/mypage.css">
<title>관리자 리뷰 모아보기</title>
<style>
.menu{
	text-align: left;
	font-size: 12px;
	margin: 0 auto;
	padding: 0px;
	color: #696969;
}
.th-2{border-bottom: 0.7px solid #DCDCDC;}
table {
	align-items: center;
	margin: 0 auto;
	text-align: center;
	border-top: 1px solid #444444;
	border-collapse: collapse;
	width: 900px;
	font-size: 13px;
	text-align: left;
}

th, td {
	text-align: center;
}

.th-2{width: 400px; height:40px;border-bottom: 1px solid #E6E6E6;}
.th-3{width: 200px; height:40px;border-bottom: 1px solid #E6E6E6;}
.td-1{height:40px; border-bottom: 0.7px solid #E6E6E6;}

th {
	background-color: #F5F5F5;
}

.line{border:none; margin: 4px;}
</style>
</head>
<body>
<%@include file="../header.jsp"%>
<br>
<br>


<div id="content"> 

<aside>
<div class="menu">
	<p><strong>상품관리</strong></p>
	<hr>
		<p><a href="<c:url value='/product/insert'/>" class="menu">상품등록</a></p>
		<p><a href="<c:url value='/category/productCategoryEdit'/>" class="menu">상품카테고리변경</a></p>
		<p><a href="<c:url value='/category/stopOrStartSelling'/>" class="menu">상품판매중지/상품판매재개</a></p>
		<p><a href="<c:url value='/product/List/totalList' />" class="menu">상품전체보기</a></p>
	<br>
	<p><strong>쇼핑관리</strong></p>
	<hr>

		<p><a href="<c:url value='/mypage/qnalist' />" class="menu">1:1 문의 모아보기</a></p>
		<p><a href="<c:url value='/admin/orderStatus' />" class="menu">배송관리</a></p>
		<p><a href="<c:url value='/admin/adminReviewList' />" class="menu">리뷰 모아보기</a></p>
		<p><a href="<c:url value='/notice/main' />" class="menu">F&Q</a></p>
	<br>
	<p><strong>카테고리관리</strong></p>
	<hr>
		<p><a href="javascript:categoryAdd();" class="menu">카테고리추가</a></p>
		<p><a href="javascript:categoryRemove();" class="menu">카테고리삭제</a></p>
		<p><a href="javascript:categoryEdit();" class="menu">카테고리순서변경</a></p>
		
	<br>
	<p><strong>매출관리</strong></p>
	<hr>
		<p><a href="<c:url value='/admin/Sales' />" class="menu">매출현황</a></p>
		
	<br>

</div>
</aside>

<section>
	<h2>전체 리뷰 모아보기</h2>
	
			<hr class="line">
	
		 		  <table>
			 		  	<tr>
			 		  		<th class="th-2">상품 이름</th>
			 		  		<th class="th-2">리뷰 내용</th>
			 		  		<th class="th-3">작성자</th>
			 		  		<th class="th-3">작성일</th>
			 		 	</tr>
			 		 	<c:if test="${empty review}">
			 		 		<tr>
			 		 			<td class="td-1" colspan="3">작성되어있는 리뷰가 없습니다.</td>
			 		 		
			 		 		</tr>
			 		 	</c:if>
			 		 	<c:if test="${!empty review}">
			 		 	<c:forEach var="review" items="${review}" varStatus="status">
			 		 	<tr>
			 		 		<td class="td-1">${review.product_name}</td>
			 		 		<td class="td-1">${review.review_content}</td>
			 		 		<td class="td-1">${review.member_nickname}</td>
			 		 		<td class="td-1">${review.review_regdate}</td>
			 		 	</tr>
			 					
			 		 	</c:forEach>
			 		 	</c:if>
		 		  </table>
		 		  <c:if test="${totalCnt != null}">
		<c:choose>
			<c:when test="${totalCnt>100}">
				<c:if test="${(section)*100<totalCnt}"> <!--   >>(다음 섹션이 존재한다.)    -->
					<c:forEach var="page" begin="1" end="10" step="1" >
						<c:if test="${section >1 && page==1}"> <!--  이전 섹션 표시 << -->
							<a href="?section=${section-1}&pageNum=10"> << </a>
						</c:if>
							<a href="?section=${section}&pageNum=${page}">${(section-1)*10+page}</a>
						<c:if test="${page==10}"> <!--  다음 섹션 표시 >> -->
							<a href="?section=${section+1}&pageNum=1"> >> </a>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${(section)*100>totalCnt}"> <!--   (다음 섹션이 없다!!) -->
					<c:forEach  var="page" begin="1" end="${((totalCnt+9)-(section-1)*100)/10}" step="1" >
						<c:if test="${section >1 && page==1}"> <!--  이전 섹션 표시 << -->
							<a href="?section=${section-1}&pageNum=10"> << </a>
						</c:if>
							<a href="?section=${section}&pageNum=${page}">${(section-1)*10+page}</a>
					</c:forEach>
				</c:if>
			</c:when>	
			<c:when test="${totalCnt==100}">
				<c:forEach var="page" begin="1" end="10" step="1">
					<a href=?section=${section}&pageNum=${page}">${page}</a>
				</c:forEach>
			</c:when>	
			<c:when test="${totalCnt<100}">
				<c:forEach var="page" begin="1" end="${(totalCnt+9)/10}" step="1">
					<a href="?section=${section}&pageNum=${page}">${page}</a>
				</c:forEach>
			</c:when>	
		</c:choose>
	</c:if>

		 		  
	
		</section>
</div>
<script>

function categoryEdit(){
	open('/category/categorySequence','배너 추가','width=400px,height=400px,status=false');
}
function categoryAdd(){
	open('/category/categoryInsert','배너 추가','width=400px,height=200px,status=false');
}
function categoryRemove(){
	open('/category/categoryDelete','배너 추가','width=400px,height=200px,status=false');
}


</script>
<br>
<br>
<%@include file="../footer.jsp"%>
</body>
</html>