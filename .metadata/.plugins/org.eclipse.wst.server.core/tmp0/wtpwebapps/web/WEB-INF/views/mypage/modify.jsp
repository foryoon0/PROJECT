<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/join.css">
<title>회원정보 수정</title>
</head>
<style>

input[type="text"], input[type="password"] {
	width: 50%;
	height: 30px;
	border: 0px;
	border-bottom: 1.5px solid gray;
	text-align: left;
}


</style>
<body>
<%@include file="../header.jsp"%>
<br>

	<h2 class="cen">회원 정보 수정🔏</h2>
<br>
	<div class="modifyInfo">*아이디를 제외한 회원정보만 수정가능합니다.</div>
	<form id="modifyform" action="modify" commandName="formData" class="validation-form" method="post">
		
		<table>
			<tr>
				<th>이름</th>
				<td><input type="text" class="form-control" id="member_name" name="member_name"  value="${member.member_name}"required>
				<br>
				<span class="member_name regex" style="text-align:left;"></span>
				<input type="hidden" id="nameDoubleChk">
				</td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input type="text" class="form-control" id="member_nickname" name="member_nickname" 
				placeholder="한글/영문/숫자 포함  2~10자 " value="${member.member_nickname}" required>
				<br>
				<span class="point successNameChk"></span>
				<input type="hidden" id="nicknameDoubleChk"></td>


			</tr>
			<tr>
				<th>아이디</th>
				<td>${member.member_id} <input type="hidden" id="member_id" name="member_id"></td>
			</tr>

			<tr>
				<th>현재 이메일</th>
				<td>${member.member_email}
				<span class="glyphiconAddress glyphicon-plusAddress plusIconAddress">&nbsp; &nbsp;이메일 변경하기</span>
				<span class="glyphiconAddress glyphicon-minusAddress plusIconAddress" style="display:none">&nbsp; &nbsp;취소하기</span>
				</td>
			</tr>
			
			<tr class="emailtoggle" style="display:none">
				<th class="modi">변경할 이메일</th>
				<td><input type="text" name="email" id="email" value="" style="width:100px; text-align:left;">
				<span id="middle">@</span>
				<input type="text" name="domain" id="domain" value="" style="width: 100px;"> 
				<select style="width: 100px; margin-right: 10px" name="selectEmail" id="selectEmail">
						<option value="1">직접입력</option>
						<option value="" selected>선택하세요</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
						<option value="empas.com">empas.com</option>
						<option value="dreamwiz.com">dreamwiz.com</option>
						<option value="freechal.com">freechal.com</option>
						<option value="lycos.co.kr">lycos.co.kr</option>
						<option value="korea.com">korea.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hanmir.com">hanmir.com</option>
						<option value="paran.com">paran.com</option>
					</select>
				<input type="hidden" id="member_email" name="member_email" value="">
				<input type="hidden" id="emailDoubleChk">
				</td>
			</tr>
			<tr>
				<th>휴대폰번호</th>
				<td><input type="text" class="form-control" id="member_phone"
					name="member_phone" placeholder="-를 제외한 숫자만 입력해주세요" style="text-align:left;" 
					value="${member.member_phone}" required>
					<br>
					<span class="member_phone regex" style="text-align:left;"></span>
					<input type="hidden" id="phoneDoubleChk">
					</td>
			</tr>
			<tr>
				<th>현재 주소</th>
				<td>${member.member_address}
				<span class="glyphicon glyphicon-plus plusIcon">&nbsp; &nbsp;주소 변경하기 </span>
				<span class="glyphicon glyphicon-minus plusIcon" style="display:none">&nbsp; &nbsp;취소하기</span>
				</td>
			</tr>
			<tr style="display:none">
				<th class="modi">변경할 주소</th>

				<td><input class="form-control" style="width: 30%; display: inline;" type="text" name="postcode" id="postcode" placeholder="우편번호">
				<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
				<br>
				 <input class="form-control" type="text" name="address" id="address" style="width: 60%; display: inline; margin-top: 5px;"
					placeholder="도로명 주소" style="text-align:left;"> 
				<br>
				 <input class="form-control" style="width: 40%; display: inline; margin-top: 5px;" type="text"
				id="detailAddress" name="detailAddress" placeholder="상세주소" style="text-align:left;">
				<input type="hidden" name="member_address" id="member_address" value="">
				</td>
		</tr>
		</table>
		<br>
		<button class="btn1 btn-primary btn-lg btn-block" type="button" id="signupbtn" name="signup">수정하기</button>
		<button class="btn2 btn-primary btn-lg btn-block" onclick="#">취소하기</button>
	</form>
	<br>
	<br>



<%@include file="../footer.jsp"%>
<script>
	
	//이름 유효성검사
	$("#member_name").on("input",function(){
	    var regex = /[가-힣]{2,}/;
	    var result = regex.exec($("#member_name").val());
	    
	    if(result != null){
	       $(".member_name.regex").html("");  
	    }else{
	        $(".member_name.regex").html("한글만 입력 가능합니다.");
	        $(".member_name.regex").css("color","red");
	    }
	    
	})
	

	//비밀번호 유효성검사
	$("#member_pwd").on("input",function(){
	    var regex = /^[A-Za-z\d]{8,21}$/;
	    var result = regex.exec($("#member_pwd").val())
	    
	    if(result != null){
	        $(".member_pwd.regex").html("");
	    }else{
	        $(".member_pwd.regex").html("비밀번호는 영문 대소문자,숫자 8자 이상 20자 이하로 설정해주세요.");
	        $(".member_pwd.regex").css("color","	red")
	    }
	});
	
	//비밀번호 확인    
	   $("#rePassword").on("input",function(){
		   
		   let member_pwd = document.getElementById("member_pwd").value
		   let rePassword = document.getElementById("rePassword").value 		   

	        if(rePassword.length > 2 && member_pwd == rePassword){
	        	$(".rePassword.regex").html("비밀번호가 일치합니다"); 
	        	  $(".rePassword.regex").css("color","green"); 
	          
	        }else{
	         $(".rePassword.regex").html("비밀번호가 일치하지않습니다"); 
	         $(".rePassword.regex").css("color","red"); 
	        }
	   });
	

	//전화번호 유효성검사
         $("#member_phone").on("input",function(){
              var regex = /^01\d\d{3,4}\d{4}$/;
              var result = regex.exec($("#member_phone").val());
             
             if(result != null){
                $(".member_phone.regex").html("");  
             }else{
                 $(".member_phone.regex").html("올바른 번호가 아닙니다");
                 $(".member_phone.regex").css("color","red"); 
             }
             
         })
	
	//이메일  합치기  
	//blur 이벤트는 사용자가 폼에 입력을 마치고 커서가 해당 폼을 벗어났을 때 실행되며, change 이벤트는 폼에 변화가 감지되었을 때 실행된다.
	
	
 	$("#email").blur(function(){
		email();	
	});

	$("select[name=selectEmail]").change(function(){
		email();	
	}); 

	function email() {
		const email = $("#email").val();
		const middle = $("#middle").text();
		const domain = $("#domain").val();
		if(email != "" && domain != "") {
			$("#member_email").val(email+middle+domain);
		}
	};
	
	//주소 합치기
	$("#postcode").change(function(){
		addr();	
	});
	
	$("#address").change(function(){
		addr();	
	});
	
	$("#detailAddress").change(function(){
		addr();	
	});

	function addr() {
		const postcode = $("#postcode").val();
		const address = $("#address").val();
		const detailAddress = $("#detailAddress").val();
		if(postcode != "" && address != "") {
			$("#member_address").val(postcode+address+detailAddress);
		}
	};
	

	//닉네임 중복 체크
	$("#member_nickname").blur(function(){ 
		var member_nickname = $("#member_nickname").val();
		var regex = /[0-9]|[a-z]|[A-Z]|[가-힣]/;
		var result = regex.exec($("#member_nickname").val());
		
		if(member_nickname == "" || member_nickname.length<2){ 
			
			$(".successNameChk").text("닉네임은 한글, 영문, 숫자만 가능하며 2-10자리 가능합니다.");
			$(".successNameChk").css("color", "red"); 
			$("#nicknameDoubleChk").val("false"); 
			$("#nicknameDoubleChk").val("false"); 
		
		}else{ 
			 
			$.ajax({ 
					
					 url : '${pageContext.request.contextPath}/nameCheck?member_nickname='+ member_nickname, 
					 type : 'post', 
					 dataType: "json",
					 cache : false, 
					 success : function(data) { 
						 if (data == 0 && result != null) {
							 $(".successNameChk").text("사용가능한 닉네임입니다."); 
						 	 $(".successNameChk").css("color", "green"); 
						 	 $("#nicknameDoubleChk").val("true"); 
						
						 } else if(result == null){
			
							 $(".successNameChk").text("닉네임은 한글, 영문, 숫자만 가능하며 2-10자리 가능합니다.");
							 $(".successNameChk").css("color", "red"); 
							 $("#nicknameDoubleChk").val("false"); 
							 
						 }else{ 
							 $(".successNameChk	").text("사용중인 닉네임입니다.");
							 $(".successNameChk").css("color", "red"); 
							 $("#nicknameDoubleChk").val("false"); 
							 } 
						 }, error : function() {
							 console.log(member_nickname);
							 console.log("실패"); 
							 $(".successNameChk").text("특수문자 입력 불가능합니다.");
							 $(".successNameChk").css("color", "red"); 
							 $("#nicknameDoubleChk").val("false"); 
							 }
						 });
					} });
	
	
	
	// 우편번호 서비스
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }

                
                } else {
                    document.getElementById("_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
	

	//이메일 주소 입력
	 $(function(){ $('#selectEmail').change(function(){
	   if($('#selectEmail').val() == "1"){
	    $("#domain").val(""); //값 초기화
	    $("#domain").prop("readonly",false); //활성화
	   } else if($('#selectEmail').val() == ""){
	    $("#domain").val(""); //값 초기화
	    $("#domain").prop("readonly",true); //textBox 비활성화
	   } else {
	    $("#domain").val($('#selectEmail').val()); //선택값 입력
	    $("#domain").prop("readonly",true); //비활성화
	    email();
	   }
	  });
	 });
	
	//폼 제출전 유효성 검사
	  $("#signupbtn").on("click",function(){
		  
	  /*  var id = $("#id").val();
   	   var pw = $("#pw").val();
   	   var name = $("#name").val();
   	   var phone = $("#phone").val();
   	   var email = $("#email").val();	   */
		  
   	   var pw =  document.getElementById('member_pwd').value
   	   var name =  document.getElementById('member_name').value
   	   var nickname = document.getElementById('member_nickname').value
   	   var email = document.getElementById('member_email').value
	   var idDoubleChk = document.getElementById('idDoubleChk').value
	   var nicknameDoubleChk = document.getElementById('nicknameDoubleChk').value
   	   
   		   	   
   	   var pwregex = /^[A-Za-z\d]{8,21}$/;
   	   var nameregex = /[가-힣]{2,}/;
   	   var nicknameregex = /[0-9]|[a-z]|[A-Z]|[가-힣]/;
   	   var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
   	   var a = true;
   	   var b = false;
   	 
   	   var nameregex = nameregex.exec(name);
	   if(nameregex == null){
		   alert("이름양식을 다시 확인해주세요");
		   retrun;
	   }
	   
	   var nicknameregex = nicknameregex.exec(nickname);
   	   if(nicknameregex == null){
   		   alert("닉네임양식을 다시 확인해주세요");
   		   retrun;
   	   }
   	   
   	   
   	   var pwregex = pwregex.exec(pw);
   	   if(pwregex == null){
   		   alert("비밀번호양식을 다시 확인해주세요");
   		   retrun;
   	   }
   	  var emailregex = emailregex.exec(email);
	   if(emailregex == null){
		   alert("이메일양식을 다시 확인해주세요");
		   retrun;
	   }
   	   
        //빈칸 없을 때 제출.
   	   $("#modifyform").submit();
       	   

   })
   
   //주소 숨기기
   $(".plusIcon").on("click",function(){
	  var obj = $(this);
	  if( obj.hasClass("glyphicon-plus") ){
	    obj.hide();
	    obj.next().show();            
	    obj.parent().parent().next().show();
	  }else if( obj.hasClass("glyphicon-minus")){
	     obj.hide();
	     obj.prev().show();
	     obj.parent().parent().next().hide();
	  }
	});

  //이메일  숨기기
   $(".plusIconAddress").on("click",function(){
	  var obj = $(this);
	  if( obj.hasClass("glyphicon-plusAddress") ){
	    obj.hide();
	    obj.next().show();            
	    obj.parent().parent().next().show();
	  }else if(obj.hasClass("glyphicon-minusAddress")){
	     obj.hide();
	     obj.prev().show();
	     obj.parent().parent().next().hide();
	  }
	});


</script>
</body>
</html>