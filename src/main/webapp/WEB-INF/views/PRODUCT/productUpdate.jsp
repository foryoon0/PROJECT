<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../../../resources/jquery/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="../../../resources/css/product.css">
<style>
.btn {
	margin-top:20px;
	width: 600px;
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

.btnDelete {
	margin-top:20px;
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


.btn2 {
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

.btn-primary2 {
	color: #fff;
	background-color: #89BC4E;
	border-color: #d1f779;
}

.btn-primary3 {
	color: #fff;
	background-color: #FF8A8E;
	border-color: #d1f779;
}

.btn-primary3:hover {
	color: #fff;
	background-color: #FF8A8E;
;
	border-color: #1ad123;
}

.btn-primary:hover {
	color: #fff;
	background-color: #73c431;
	border-color: #1ad123;
}

.btn-primary2:hover {
	color: #fff;
	background-color: #75A142
;
	border-color: #1ad123;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
  <br>
  <br>
	<h3>?????? ?????????</h3>
	<br>
	<div class="Info">* ?????? ????????? ????????? ?????? ??????????????????.</div>
		<form:form id="ProductUpdate" commandName="ProductCommand" action="/product/update/${ProductCommand.option_join_number}" method="POST" enctype="multipart/form-data">
			<table>
				<tr>
					<th>????????????</th> 
					<td><input type="text" name="product_Name" id="product_Name" value="${product_name}">
					<span class="name regex" style="text-align:left;"></span>
					<input type="hidden" id="nameDoubleChk">
				</tr>
				<tr>
					<th>????????????1</th> 
					<td><select name="category_1">
							<option value="">????????????</option>
							<c:forEach var="menu1" items="${menu1}">
								<c:if test="${menu1.category_title==category_1}">
									<option value="${menu1.category_title}" selected>${menu1.category_title}</option>
								</c:if>
								<c:if test="${menu1.category_title!=category_1}">
									<option value="${menu1.category_title}">${menu1.category_title}</option>
								</c:if>
							</c:forEach>
							<c:forEach var="menu2" items="${menu2}">
								<c:if test="${menu2.category_title==category_1}">
									<option value="${menu2.category_title}" selected>${menu2.category_title}</option>
								</c:if>
								<c:if test="${menu2.category_title!=category_1}">
									<option value="${menu2.category_title}">${menu2.category_title}</option>
								</c:if>
							</c:forEach>
			  		 </select></td>
				</tr>
				<tr>
					<th>????????????2</th> 
					<td><select name="category_2">
							<option value="">????????????</option>
							<c:forEach var="menu3" items="${menu3}">
								<c:if test="${menu3.category_title==category_2}">
									<option value="${menu3.category_title}" selected>${menu3.category_title}</option>
								</c:if>
								<c:if test="${menu3.category_title!=category_2}">
									<option value="${menu3.category_title}">${menu3.category_title}</option>
								</c:if>
							</c:forEach>	
			  		 </select></td>
				</tr>
				<tr>
					<th>????????????</th> 
					<td><form:input path="product_Price"/></td>
				</tr>
				<tr>
					<th>????????????</th> 
					<td><form:input path="product_Count"/></td>
				</tr>
				<tr>
					<th>????????????</th> 
					<td><form:input path="product_CookingTime"/></td>
				</tr>
				<tr>
					<th>?????????</th> 
					<td><form:input path="product_weight"/></td>
				</tr>
				<tr>
					<th>????????????</th> 
					<td><select name="product_Storage">
						<c:if test="${storage=='??????'}">
							<option value="??????" selected>??????</option>
							<option value="??????">??????</option>
							<option value="??????">??????</option>
						</c:if>
						<c:if test="${storage=='??????'}">
							<option value="??????">??????</option>
							<option value="??????" selected>??????</option>
							<option value="??????">??????</option>
						</c:if>
						<c:if test="${storage=='??????'}">
							<option value="??????">??????</option>
							<option value="??????">??????</option>
							<option value="??????" selected>??????</option>
						</c:if>
			  		</select></td>
				</tr>
				<tr>
					<th>Product Main Image</th> 
					<td><input type="file" name="uploadFile" class="fileClass"></td>
				</tr>
				<tr>
					<th>Product DetailCut Image</th> 
					<td><input type="file" name="uploadFile" class="fileClass"></td>
				</tr>
				<tr>
					<th>Product Information Image</th> 
					<td><input type="file" name="uploadFile" class="fileClass"></td>
				</tr>
				<form:hidden path="option_loop"/>
			</table>
		 	<c:if test="${!empty productOption}">
			 	<c:forEach var="product_Option" items="${productOption}" varStatus="n">
				 	<input type="hidden" name="product_Option[${n.index}].option_number" value="${product_Option.option_number}">
				 	??????????????? : <input type="text" name="product_Option[${n.index}].option_Name" value="${product_Option.option_Name}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				 	?????????????????? : <input type="text" name="product_Option[${n.index}].option_Price" value="${product_Option.option_Price}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
				 	?????????????????? : <input type="text" name="product_Option[${n.index}].option_Count" value="${product_Option.option_Count}">
				 	<input type="checkbox" name="product_Option[${n.index}].delete_check" value="1"> : ??????<br>
			 	</c:forEach>
		 	</c:if>
		 	<div id="option">
		 	</div>
		 	<br>
			<input type="button" id="optionAdd"  class="btn2 btn-primary2 btn-lg btn-block" value="??????????????????">
		 	<div id="option">
		 	</div>
		 <button class="btn btn-primary btn-lg btn-block" type="button" id="uploadBtn" name="uploadBtn">?????? ????????????</button>
		</form:form>
		
		
<script>
$(document).ready(function(){
	let regex = new RegExp('(.*?)\.(jpeg|jpg|png|gip|svg)$','i');
	let maxSize = 5242880; //5MB//5242880
	let check = 0;
	
	/* let optionCount = 0; */
	
	function checkExtension(fileName, fileSize){
		if(fileSize >= maxSize){
			alert("?????? ????????? ??????");
			check++;
			return false;
		}
		if(!regex.test(fileName)){
			alert("?????? ????????? ????????? ???????????? ??? ????????????.");
			check++;
			return false;
		}
		return true;
	}
	$("#uploadBtn").on("click",function(){
		let nameDoubleChk = document.getElementById('nameDoubleChk').value;
		let product_Price = document.getElementById("product_Price").value;
		let product_Count = document.getElementById("product_Count").value;
		
		$(".fileClass").each(function (idx,item){	
			if(undefined!=item.files[0]){
				if(!checkExtension(item.files[0].name, item.files[0].size)){
					return false;
			}}
			
		});
		if(product_Price<100){
			alert('??????????????? 100??????????????? ??????????????????.');
			return;
		}
		if(product_Count<0){
			alert('?????? ????????? ??????????????????.');
			return;
		}
		if(nameDoubleChk == 'false'){
			   alert("???????????? ??????????????????.");
			   return;   
		   }
		if(check==0){
			$("#ProductUpdate").submit();
		}
		
	});
	
	let number = ${option_loop};
	 $("#optionAdd").on("click",function(){
		 
		let option = document.getElementById("option");
		let div = document.createElement("div");
      	let p = document.createElement('p');

	 	div.setAttribute("id","div"+number+"");
	 					
	 	let span1 = document.createElement('span');
	 	span1.innerHTML="??????????????? : ";
	 	let productName = document.createElement('input');
	 	productName.setAttribute("type","text");
	 	productName.setAttribute("name","product_Option["+number+"].option_Name");
	 	
	 	let span2 = document.createElement('span');
	 	span2.innerHTML="<br> ?????????????????? : ";
	 	let productPrice = document.createElement('input');
	 	productPrice.setAttribute("type","text");
	 	productPrice.setAttribute("name","product_Option["+number+"].option_Price");
	 	
	 	let span3 = document.createElement('span');
	 	span3.innerHTML="<br> ?????????????????? : ";
	 	let productCount = document.createElement('input');
	 	productCount.setAttribute("type","text");
	 	productCount.setAttribute("name","product_Option["+number+"].option_Count");
	 	
	 	let removeBtn = document.createElement('input');
	 	removeBtn.setAttribute("type","button");
	 	removeBtn.setAttribute("value","??????");
	 	removeBtn.setAttribute("class","btnDelete btn-primary3 btn-lg btn-block");
	 	removeBtn.setAttribute("onclick","remove("+number+")");
	 	
	 	
	 	p.appendChild(span1);
	 	p.appendChild(productName);
	 	p.appendChild(span2);
	 	p.appendChild(productPrice);
	 	p.appendChild(span3);
	 	p.appendChild(productCount);
	 	p.appendChild(removeBtn);
	 	
	 	div.appendChild(p);
	 	
	 	option.appendChild(div);
	 	
	 	++number;

	 }); 
	 $("#product_Name").on("input",function(){
			let product_Name = document.getElementById("product_Name").value;
			if(product_Name != "${product_name}"){
				let obj = {'product_Name':product_Name};
				$.ajax({ 
					 type:'POST',
					 async:true,
					 url:'/product/productNameCheck',
					 data: JSON.stringify(obj),
					 contentType : "application/json; charset=UTF-8",
					 dataType:"JSON",
					 success : function(data) { 
						 console.log(data);
						 if(data.nameCheck>0){
							 $(".name.regex").html("????????? ??????????????????.");
						     $(".name.regex").css("color","red");
						     $("#nameDoubleChk").val("false"); 
						 }else{
							 $("#nameDoubleChk").val("true"); 
						 }
					},error:function(){
						console.log("Error!!..");	
					}
				});
			}
			
			
			var regex = /^[0-9a-zA-Z???-???,\\[\].\s]+$/g;
			var result = regex.exec($("#product_Name").val());
			   if(result != null){
			      $(".name.regex").html("");  
			   }else{
			       $(".name.regex").html("????????????[],??? ?????? ??????");
			       $(".name.regex").css("color","red");
			   }
			   
			    
		});
	 
	 
});

function remove(index){
	 document.getElementById('div'+index).remove();
}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js">
</script>
<%@include file="../footer.jsp" %>
</body>
</html>