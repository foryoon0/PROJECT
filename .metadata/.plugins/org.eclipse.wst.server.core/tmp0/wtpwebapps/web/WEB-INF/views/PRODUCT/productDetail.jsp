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

.ct{padding:0px;}

</style>
<body>
<%@include file="../header.jsp" %>
<br>
<br>
<div class="Product">
<form action="add_cart" method="POST" commandName="formData" >
		<div class="Product_img">
			<img src="/uploadedIMG/${Product.product_m_image}" class="imgSize" alt="...">
		</div>
		<div class="Product_info">
			<p class="name">${Product.product_name} </p>
			<p class="price">${Product.product_price}???	</p>
			<input type="hidden" id="amount" value="${Product.product_price}">
			<p class="info">???????????? ${Product.product_count}??? ????  ??????${Product.product_cookingTime}???
				${Product.product_weight}????
				${Product.product_storage}??????????</p><br>
			<hr>
			<table>
				<tr>
					<th>????????????</th>
					<td>???????????????</td>
				</tr>
				<tr>
					<th>?????????</th>
					<td>3,000???(30,000??? ????????????)</td>
				</tr>
			</table>
			<hr>

		<p class="info">????????????</p>
		<div>
		<select name="productoption">
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
				 			<a href="javascript:change_qty2('p')">???</a>
				 		</div> 
				 		<div class="plus">
				 		<input type="number" name="product_selectCount" id="ct_qty" value="1" readonly="readonly"> </div> 
				 		
				 		<div class="minus">
				  			 <a href="javascript:change_qty2('m')">???</a>
				  		 </div> 
				  		<div class="opt_amount"> 	
				  			<label class="opt2" id="total_amount">${Product.product_price}</label><label>???</label> </div>
							<input type="hidden" id="product_number" name="product_number" value="${Product.product_number}">
						</div>
				 		
				 		</div> 
					</div>
		  <hr>
		  <hr>
		 
		 <!-- ?????? ????????? -->
			<div class="optionbox">
			  <c:forEach var="ProductOption" items="${ProductOption}" varStatus="s">
			 	<div class="count">	
					<p class="optionname">${ProductOption.option_Name}</p>
					<div class="qty">?????? &nbsp;&nbsp; &nbsp; &nbsp;</div>
				 		<div>
				  			<div class="qty">
				 		<div class="plus">
				 			<a href="javascript:change_qty1('p')">???</a>
				 		</div> 
				 		<div class="plus">
				 		<input type="text" name="ct_Oqty" id="ct_Oqty" value="1" readonly="readonly"> </div> 
				 		
				 		<div class="minus">
				  			 <a href="javascript:change_qty1('m')">???</a>
				  		 </div> 
				  		<div class="opt_amount"> 	
				  			<label class="opt2" id="total_amount">${ProductOption.option_Price}</label><label>???</label> </div>
				  		</div>
				 		
				 		</div> 
					 </div>
			  </c:forEach>
			  </div>
	
		  
		  
		  
		  
		  
		 <div class="totalamount">
			<label class="amount">??? ?????? ??????</label>&nbsp;&nbsp; <label class="amount2" id="total_price">${Product.product_price}???</label> 
		</div>
		<hr>
		<c:if test="${Product.delete_check==0}">
			 <input class="btn btn-primary btn-lg btn-block" type="submit" id="btn_cart" name="btn_cart" value="????????????">
		</c:if>	

		<c:if test="${Product.delete_check!=0}">
			<p>?????? ?????? ??? ???????????????.</p>
		</c:if>			
		</div>
	</form>
	</div>
	
		<br>
		<br>
		
			
	<div class="imagebox">
		<img src="/uploadedIMG/${Product.product_d_image}" class="imgSize2" alt="...">
		<img src="/uploadedIMG/${Product.product_i_image}" class="imgSize2" alt="...">
	</div>
	
	
	<a href="<c:url value='/product/update/${Product.option_join_number}'/>">??????</a>

<br>
<br>
<%@include file="../footer.jsp" %>
<script>
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
	
	// ???????????? ?????? ??????
	var basic_amount = parseInt(document.getElementById("amount").value);
	
	function change_qty2(t){
	  var min_qty = 1;
	  var this_qty = $("#ct_qty").val()*1;
	  var max_qty = '200'; // ?????? ?????? ????????? ????????????.
	  if(t=="m"){
	    this_qty -= 1;
	    if(this_qty<min_qty){
	      alert("????????? 1??? ?????? ????????? ????????????.");
	      return;
	      }
	    }
	    else if(t=="p"){
	      this_qty += 1;
	      if(this_qty>max_qty){
	        alert("???????????????. ????????? ???????????????.");
	        return;
	        }
	    }
	
	var show_total_amount = basic_amount * this_qty;
	  $("#ct_qty").val(this_qty);
	  $("#it_pay").val(show_total_amount);
	  $("#total_amount").html(show_total_amount.format());
	  
	  var show_total_price = show_total_amount;
	  $("#total_price").html(show_total_price.format());
	}	
	
	
	
	  

	
	
	
	// ?????? ?????? ??????
	function change_qty1(t){
	  var basic_amount = parseInt(document.getElementById("amount").value);
	  var min_qty = 1;
	  var this_qty = $("#ct_Oqty").val()*1;
	  var max_qty = '200'; // ?????? ?????? ????????? ????????????.
	  if(t=="m"){
	    this_qty -= 1;
	    if(this_qty<min_qty){
	      alert("????????? 1??? ?????? ????????? ????????????.");
	      return;
	      }
	    }
	    else if(t=="p"){
	      this_qty += 1;
	      if(this_qty>max_qty){
	        alert("???????????????. ????????? ???????????????.");
	        return;
	        }
	    }
	
	var show_total_amount = basic_amount * this_qty;
	  $("#ct_Oqty").val(this_qty);
	  $("#it_pay").val(show_total_amount);
	  $("#total_amount").html(show_total_amount.format());
	}	

	
	//????????????
	
	$(".btn_cart").click(function() {
			var check = confirm("????????? ??????????????? ???????????????. ?????????????????????????");
			if (check) {
				location.assign("/PRODUCT/cart");
			} 
		});

	

</script>
</body>
</html>