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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../../../resources/css/productDetail.css">
<!-- Bootstrap core CSS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<style>
.btn {
	margin-left:1rem;
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
	font-size: 0.5rem;
	border-radius: 0.25rem;
	transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.btn3 {
	margin-top:10px;
	width: 130px;
	display: inline-block;
	font-weight: 200;
	line-height: 1.5;
	color: #212529;
	text-align: center;
	text-decoration: none;f
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
	font-size: 1.25rem;
	border-radius: 0.3rem;
}

.btn-lg3, .btn-group-lg>.btn {
	padding: 0.5rem 1rem;
	font-size: 0.8rem;
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
.th-2{border-bottom: 0.7px solid #DCDCDC;}
.qnaInfo{width: 1000px; text-align: right;}
.qInfo{color:red; font-size:13px; margin:0px;}
.reviewcontent{height:10rem;}
.reviewinfo{height:2rem; background-color:white; border-bottom:0.5px solid #C1C1C1; }
.review{width: 1000px;  border-bottom: 0.3px solid #C1C1C1; text-align:left;}
.qna{width:1000px;}
</style>
<body>
<%@include file="../header.jsp" %>
<br>
<br>
<div class="Product">
<form action="addCart" method="POST" commandName="cartData" name="addProduct"  id="addProduct">
<input type="hidden" name="num" id="num" value="${num}">
<input type="hidden" name="option_join_number" id="option_join_number" value="${Product.option_join_number}">
		<div class="Product_img">
			<img src="/uploadedIMG/${Product.product_m_image}" class="imgSize" alt="...">
		</div>
		<div class="Product_info">
			<p class="name">${Product.product_name} </p>
			<p class="price" id="price"><fmt:formatNumber value="${Product.product_price}" pattern="#,###,###" />???</p>
			<input type="hidden" id="amount" value="${Product.product_price}">
			<p class="info">???????????? ${Product.product_count}??? ????  ??????${Product.product_cookingTime}???
				${Product.product_weight}????
				${Product.product_storage}??????????</p><br>
			<hr>
			<table class="dev">
				<tr>
					<th class="devth">????????????</th>
					<td class="devt">???????????????</td>
				</tr>
				<tr>
					<th class="devth">?????????</th>
					<td class="devt">3,000???(30,000??? ????????????)</td>
				</tr>
			</table>
			<hr>

		<p class="info">????????????</p>
		<div>
		<select class="opt" name="productoption">
			 <option disabled selected class="opt">????????????</option>
				<c:forEach var="ProductOption" items="${ProductOption}">
					<option value="${ProductOption.option_Name}">${ProductOption.option_Name}(+${ProductOption.option_Price}) ????????????: ${ProductOption.option_Count}???</option>
				</c:forEach>
		</select>
		</div>
		<br>
		
		
				<!-- ?????? ?????? -->
				<div class="count">	
					<p class="optionname">${Product.product_name}</p>
					<div class="qty">?????? &nbsp;&nbsp; &nbsp; &nbsp;</div>
				 		<div>
				  			<div class="qty">
				 		<div class="plus">
				 			<a href="javascript:change_qty2('p')" class="a_option">???</a>
				 		</div> 
				 		<div class="plus1">
				 		<input type="number" name="product_selectCount" id="product_selectCount" value="1" readonly="readonly"> </div> 
					
				 		<div class="minus"> 
				  			 <a href="javascript:change_qty2('m')" class="a_option">???</a>
				  		 </div> 
				  		<div class="opt_amount"> 	
				  			<label class="opt2" id="total_amount"><fmt:formatNumber value="${Product.product_price}" pattern="#,###,###" /></label><label>???</label></div>
							<input type="hidden" id="product_number" name="product_number" value="${Product.product_number}">
						</div>
				 		
				 		</div> 
					</div>
		  <hr>
		  <hr>
		 
		 <!-- ?????? ?????????-->	
			<div class="optionbox">
			  <c:forEach var="ProductOption" items="${ProductOption}" varStatus="status">
			  <input type="hidden" name="optionList[${status.index}].option_number" id="option_number" value="${ProductOption.option_number}">	
			 	<div class="count">	
					<p class="optionname">${ProductOption.option_Name}<label class="opri"> &nbsp;&nbsp;+<fmt:formatNumber value="${ProductOption.option_Price}" pattern="#,###,###" />???</label></p>
					<div class="qty">?????? &nbsp;&nbsp; &nbsp; &nbsp;</div>
				 		<div>
				  			<div class="qty">
				  			
						 		<div class="plus">
						 			<span onclick="javascript:basket.changePNum(${status.count})"><i class="arrow up">???</i></span>
						 		</div> 
						 		<div class="plus1">
						 			<input type="number" name="optionList[${status.index}].option_selectCount" id="p_num${status.count}" class="p_num${status.count}" value="0" readonly="readonly"  onkeyup="javascript:basket.changePNum(${status.count});">
						 	  	</div> 
								<div class="minus down">
						  			 <span onclick="javascript:basket.changePNum(${status.count})"><i class="arrow down">???</i></span>
						  		</div> 
						  		<div class="opt_amount"> 
						  			
						  			<input type="hidden" class="option_price" id="option_price" value="${ProductOption.option_Price}">	
						  			<label class="opt2" id="option_amount" class="option_amount(${status.count})">0</label><label>???</label> </div>
						  		</div>
				 			</div> 
					 </div>
			  </c:forEach>
			  </div>
	  
		  
		 <div class="totalamount">
			<label class="amount">??? ?????? ??????</label>&nbsp;&nbsp; <label class="amount2" id="total_price"><fmt:formatNumber value="${Product.product_price}" pattern="#,###,###"/></label><label class="amount2">???</label> 
		</div>
		<hr>
		<c:if test="${Product.delete_check==0}">
			 <input class="btn btn-primary btn-lg btn-block" type="button" id="btn_cart" name="btn_cart" onclick="addCart();" value="????????????">
		</c:if>	

		<c:if test="${Product.delete_check!=0}">
			<p class="btn btn-primary btn-lg btn-block">?????? ?????? ??? ???????????????.</p>
			
		</c:if>			
		</div>
	</form>
	</div>
	
		<br>
		<br>
<div class="tab-content" id="nav-tabContent">	
<!-- ????????? -->
  <div class="nav nav-tabs centered" id="nav-tab" role="tablist">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true" onclick="location.href = '#image'">?????? ??????</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false" onclick="location.href = '#rebivew'">??????</button>
    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false" onclick="location.href = '#qna'">??????</button>
  </div>
  
  
  
	  
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
  		<!-- content1 -->
	  		<div class="imagebox">
				<img src="/uploadedIMG/${Product.product_d_image}" class="imgSize2" alt="...">
				<img src="/uploadedIMG/${Product.product_i_image}" class="imgSize2" alt="...">
			</div>
			<c:if test="${authInfo.member_id  eq 'MEALADMIN' }">
				<a href="<c:url value='/product/update/${Product.option_join_number}'/>">??????</a>
			</c:if>
  		</div>
  		
		<!-- ?????? ?????? ????????????-->
		<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
		 <!-- content2 -->
		  	<div class="text-center">
		  		 <h3>?????? ?????? ??????????</h3>
		  		<br>
		  	<c:forEach var="review" items="${review}">
		  		<table class="review">
		  			<tr class="reviewinfo">
		  				<th class="reviewinfo">?????????</th>
		  					<td>${review.member_nickname}</td>
		  				<th class="reviewinfo">?????????</th>
		  					<td>${review.review_regdate}</td>
		  			</tr>
		  			<tr>
		  				<td colspan="4" class="reviewcontent">${review.review_content}</td>
		  			</tr>
		  		
		  		</table>
		  	</c:forEach>
		  	<c:if test="${empty review}">
		  		<p> ?????? ???????????? ?????? ????????? ????????????. </p>
		  	</c:if>
		  
 		  
			</div>
		</div>
		
		<!-- ?????? ?????? ????????????-->
		<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
		 <!-- content3 -->
		 
		  	<div class="text-center">
		 		  <h3>Q&A????</h3>
		 		 
		 		  <br>
		 		  	<div class="qnaInfo"><label class="qInfo">*????????? ????????? ??????&???????????? ????????? ??? ????????????.</label></div>
		 		  <table class="qna">
			 		  	<tr class="qna">
			 		  		<th class="th-2">?????? ?????? ??????</th>
			 		  		<th class="th-1">??????</th>
			 		  		<th class="th-2">?????????</th>
			 		  		<th class="th-2">?????????</th>
			 		 	</tr>
			 		 	<c:forEach var="qna" items="${Qna}" varStatus="status">
			 		 	<tr>
			 		 		<td class="td-1">${qna.qna_state}</td>
			 		 		<td class="td-1">
			 		 			<input type="hidden" value="${qna.qna_number}">
			 		 			<%-- <a href="javascript:void(0);" id="showPwd(${status.count})" onclick="showPwd(${status.count});">????${qna.qna_title}</a> --%>
			 		 			<a href="<c:url value='/product/qna/${qna.qna_number}' />" >????${qna.qna_title}</a>
			 		 		 </td>
			 		 		<td class="td-1">${qna.member_nickname}</td>
			 		 		<td class="td-1">${qna.qna_regdate}</td>
			 		 	</tr>
			 				
			 		 	</c:forEach>
		 		  </table>
		 		 <br>
		 		 <c:if test="${totalCnt != null}">
		<c:choose>
			<c:when test="${totalCnt>100}">
				<c:if test="${(section)*100<totalCnt}"> <!--   >>(?????? ????????? ????????????.)    -->
					<c:forEach var="page" begin="1" end="10" step="1" >
						<c:if test="${section >1 && page==1}"> <!--  ?????? ?????? ?????? << -->
							<a href="?section=${section-1}&pageNum=10#qna"> << </a>
						</c:if>
							<a href="?section=${section}&pageNum=${page}">${(section-1)*10+page}</a>
						<c:if test="${page==10}"> <!--  ?????? ?????? ?????? >> -->
							<a href="?section=${section+1}&pageNum=1#qna"> >> </a>
						</c:if>
					</c:forEach>
				</c:if>
				<c:if test="${(section)*100>totalCnt}"> <!--   (?????? ????????? ??????!!) -->
					<c:forEach  var="page" begin="1" end="${((totalCnt+9)-(section-1)*100)/10}" step="1" >
						<c:if test="${section >1 && page==1}"> <!--  ?????? ?????? ?????? << -->
							<a href="?section=${section-1}&pageNum=10#qna"> << </a>
						</c:if>
							<a href="?section=${section}&pageNum=${page}#qna">${(section-1)*10+page}</a>
					</c:forEach>
				</c:if>
			</c:when>	
			<c:when test="${totalCnt==100}">
				<c:forEach var="page" begin="1" end="10" step="1">
					<a href=?section=${section}&pageNum=${page}#qna">${page}</a>
				</c:forEach>
			</c:when>	
			<c:when test="${totalCnt<100}">
				<c:forEach var="page" begin="1" end="${(totalCnt+9)/10}" step="1">
					<a href="?section=${section}&pageNum=${page}#qna">${page}</a>
				</c:forEach>
			</c:when>	
		</c:choose>
	</c:if>
		 		 
		 		 <br>
		 			<input type="button" class="btn3 btn-primary btn-lg3 btn-block" value="????????????" onclick="qna();">
		 		  
			</div>
		</div>


</div>


<br>
<br>
<%@include file="../footer.jsp" %>
<script>
function total_price() {
	let product_price = ${Product.product_price};
	let product_count = $("#product_selectCount").val();
	let total_price = 0;
	<c:forEach var="ProductOption" items="${ProductOption}" varStatus="status">
		total_price += $("#p_num${status.count}").val()*${ProductOption.option_Price};
	</c:forEach>
	total_price += product_price*product_count;
	$("#total_price").html(total_price.format());
};

	// ?????? ????????????
	Number.prototype.format = function(){
	  if(this==0) return 0;
	
	  var reg = /(^[+-]?\d+)(\d{3})/;
	  var n = (this + '');
	
	  while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
	
	  return n;
	};
	 	
	
	String.prototype.format = function(){
	  var num = parseFloat(this);
	  if( isNaN(num) ) return "0";
	
	  return num.format();
	};
	

	$("input[name=product_selectCount]").change(function(){
		count();	
	}); 

	function count() {
		const cty = $("#product_selectCount").val();
		$("product_selectCount").val(cty)
		
	};
	
	
	// ???????????? ?????? ??????
	var basic_amount = parseInt(document.getElementById("amount").value);
	
	function change_qty2(t){
	  var min_qty = 1;
	  var this_qty = $("#product_selectCount").val()*1;
	  var max_qty = '200'; 
	  
	  if(t=="m"){
		this_qty -= 1;
		$("#product_selectCount").val(this_qty);
		$('input[name=product_selectCount]').attr('value',this_qty);
		console.log(product_selectCount);
		console.log(this_qty);
		total_price();
	    if(this_qty<min_qty){
	      alert("????????? 1??? ?????? ????????? ????????????.");
	      return;
	      }
	    }
	    else if(t=="p"){
	      this_qty += 1;
	      $("#product_selectCount").val(this_qty);
	      $('input[name=product_selectCount]').attr('value',this_qty);
	      total_price();
		  if(this_qty>max_qty){
	        alert("???????????????. ????????? ???????????????.");
	        return;
		  }    
	    }
	  
	var show_total_amount = basic_amount * this_qty;
	  $("#product_selectCount").val(this_qty);
	  $("#it_pay").val(show_total_amount);
	  $("#total_amount").html(show_total_amount.format());
	  $("#total_amount").val(show_total_amount.format());
	  
	
	//??????, ???????????? ?????? ??? ??????
	  reCal();
	}
	
	
	$("input[name=product_selectCount]").change(function(){
		count();	
	}); 

	function count() {
		const qty = $("#product_selectCount").val();
			$("#product_selectCount").val(qty);
	};
	
	
	//?????? ?????? ?????? ??????
	let basket = {
	    totalCount: 0, 
	    totalPrice: 0,
	   changePNum:  function(pos) {
	        var item = document.getElementById('p_num'+pos+'');
	        var p_num = parseInt(item.getAttribute('value'));
	        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
	        
	        if (parseInt(newval) < 0 || parseInt(newval) > 99) { return false; }

	        item.setAttribute('value', newval);
	        item.value = newval;

	        var price =  item.parentElement.nextSibling.nextSibling.nextSibling.nextSibling.firstElementChild.getAttribute('value');
	        var amount = newval * price;
	        
	        console.log("??????" + price);
	        console.log("??????" + newval); 
	        console.log("??????" + amount);
	        total_price();
	        item.parentElement.nextSibling.nextSibling.nextSibling.nextSibling.firstElementChild.nextSibling.nextSibling.textContent = (newval * price).format();
	    	item.parentElement.nextSibling.nextSibling.nextSibling.nextSibling.firstElementChild.nextSibling.nextSibling.setAttribute('value',amount);
	    	
	       	
	    	reCal();
	 }
	}
	
 	 // ???????????????
 /* 	 function reCal(){
		let sum = 0;
		 var main_price =  $("#total_amount").val();
		 var option_price =  $("option_amount").val();
		 var show_total_price = main_price + option_price;
		  $("#total_price").html(show_total_price.format());
		  
	 } */
	
	 function reCal(){
			 var sum = 0;
			 var main_price =  $("#total_amount").val();
			  $("#option_amount").each(function(){
				  sum += parseInt($(this).val()); 
			  });
			 var show_total_price = main_price + sum;
			console.log("????????????:"+ sum);
			console.log("?????????????????????" + main_price);
		 }
	 
		
/* 	
	$('.opt2').change(function(){
		var seip = 0;
		$('.opt2').each(function(){
			seip += parseInt($(this).val());
		});
		
		$("#total_price").html(seip.format());
	});
	 */
	


	//???????????? ?????? ??????
 	function addCart() {
			var check = confirm("????????? ??????????????? ???????????????. ?????????????????????????");
			var form = document.getElementById('addProduct');
			
			if (!check) {
				  form.setAttribute("method", "Post");  
				  form.setAttribute("commandName", "cartData");  
				  form.setAttribute("action","addCartReturnProductDetail");
				  
				  form.submit();
			}else{
				 form.setAttribute("method", "Post");  
				  form.setAttribute("commandName", "cartData");  
				  form.setAttribute("action","addCart");
				form.submit();
			}
	 }
 	
	//??? ?????? ???????????? ??????
 	 function qna(){
		 var product_number = document.getElementById("product_number").value;	
		 location.href='/product/qna?product_number= '+ product_number;
 	 }
 	 
   
 	  
 	 
</script>
</body>
</html>