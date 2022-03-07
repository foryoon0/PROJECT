<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀슐랭</title>
<style>

.example{
width: 500px;
height: 500px;}

</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<c:if test="${!empty Member}">
	${Member[0].member_nickname}
</c:if>

	<table>
		<tr>
			<td align="right"><c:choose>
					<c:when test="${empty authInfo}">
						<a href="<c:url value='/member/login' />">[로그인]</a>
						<a href="<c:url value='/member/joinChoice' />">[회원가입]</a>
					</c:when>

					<c:otherwise>
			${authInfo.member_id}님 접속
			<a href="<c:url value='/logout' />"> [로그아웃] </a>
						<a href="<c:url value='/member/edit/${authInfo.member_id}' />">회원정보수정</a>
					</c:otherwise>


				</c:choose></td>
		</tr>

	</table>
	<div class="example"></div>

	<%@include file="footer.jsp"%>
</body>
</html>
























