<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- <link href="../../../bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet"> -->
<!--css내용  -->
<style type="text/css">
	#aaa {
	color : black;
	}
	#naver{
	
	background-color: #04cf5c;
	border-color:  #04cf5c;
	color: white;
	height : 40px;
	
	}
	#facebook{
	
	background-color: #3b5998;
	border-color:  #3b5998;
	color: white;
	height : 40px;
	
	}
	
	#google{
	
	background-color: #EA4335;
	border-color:  #EA4335;
	color: white;
	height : 40px;
	
	}
	
	#kakao{
	
	background-color: 	#fef01b;
	border-color:  	#fef01b;
	color: black;
	height : 40px;
	
	}

</style>
	
</head>

<body>
<!--colspan 가로 rowspan 세로  -->

<div>
		<img src="../../../image/baemin.jpg" class="img-fluid rounded mx-auto d-block">
	</div>
<div class="container">
  <div class="mb-3">
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="아이디를 입력하시오"aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호를 입력하시오">
  </div>
  <div class="mb-3 form-check form-switch">
  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
  <label class="form-check-label" for="flexSwitchCheckChecked">Auto login</label>
</div>
  <div class="d-grid gap-2">
  <button class="btn btn-primary" type="button" id= "btnLogin" name="">로그인</button>
  <button class="btn btn-light"  type="button"><a href ="../">Find Id/Password</a></button>
</div>

	<hr>
	<br>
	<br>
	<br>
	<div class="d-grid gap-2">
  <button id="naver" type="button">naver</button>
  <button id="kakao" type="button">kakao</button>
  <button id="google" type="button">Google</button>
  <button id="facebook" type="button">facebook</button>
  </div>
</div>
	





</body>
	
	

		
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/infra/resources/js/validation.js"></script>
		<script type="text/javascript">
		$("#btnLogin").on("click" , function(){
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/infra/member/loginProc"
				,data : {"ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/index/indexView";
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
				
			});
			
		});
		
		</script>
		
	
