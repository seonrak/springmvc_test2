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
<title>seonrak(여기에 본인이름 넣기)</title>
<!--css내용  -->
<style type="text/css">
	table, th, td{
		border: 1px solid black;
		border-collapse: collapse;
	}
	th, td{
		padding: 20px;
		}
</style>
</head>

<body>
<!--colspan 가로 rowspan 세로  -->
<div class="container-fluid d-none d-sm-block" style="height: 60px;">
	<div class="row h-100">
	<div class="col-4 col-sm-2 my-auto">
		<img src="../../../image/baemin.jpg" class="img-fluid rounded mx-auto d-block">
	</div>
	<div class="col-sm-4 my-auto d-none d-sm-block">
	<p class="mb-0 fs-5 fw-bold">Baemin System</p>
	</div>
	<div class="col-8 col-sm-2 my-auto">
		<i class="fas fa-bars fa-lg d-block d-sm-none text-end"></i>
	</div>
	<div class="col-sm-3 my-auto d-none d-sm-block">
	<div class="row">
	<div class="col my-auto"><img src="../../../image/k.jpg" class="image- rounded-circle border border-3 float-end" style="width: 40px; height: 40px;" alt="..."></div>
	<div class="col my-auto">
		<p class="mb-0">seon rak(CEO)</p>
		<p class="mb-0"><small>Administrator</small></p>
			</div>
		</div>
	</div>
	</div>
	</div>
	<br>
<div class="container-fluid">
<div class = "row">
<div class ="gy-3 col-md-6">
<label for = "id" class="form-label">아이디</label><input type="text" class="form-control" id="id" maxlength="20" minlength="4"
 value="six_find"></div>
 	</div>
 </div>
 <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="password" class = "form-label">비밀번호</label><input type="text" class = "form-control" id="password" maxlength="20" minlength ="4"
  	value="******">
  		</div>
  		<div class = "col-12 col-md-6">
  	<label for ="passwordcheck" class = "form-label">비밀번호 확인</label><input type="text" class = "form-control" id="passwordcheck" maxlength="20" minlength ="4"
  	value="******">
  		</div>
  	</div>
  </div>
  
 <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="name" class = "form-label">이름(영문)</label><input type="text" class = "form-control" id="name" maxlength="20" minlength ="4" value="seonrak">
  		</div>
  		<div class = "col-12 col-md-6">
  	<label for ="nameeg" class = "form-label">성(영문)</label><input type="text" class = "form-control" id="nameeg" maxlength="20" minlength ="4" value="choi">
  		</div>
  	</div>
  </div>
  
 <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="name" class = "form-label">이름</label><input type="text" class = "form-control" id="name" maxlength="20" minlength ="4" value="선락">
  		</div>
  		<div class = "col-12 col-md-6">
  	<label for ="nameeg" class = "form-label">성</label><input type="text" class = "form-control" id="nameeg" maxlength="20" minlength ="4" value="최">
  		</div>
  	</div>
  </div>
  
  <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="password" class = "form-label">핸드폰</label><input type="text" class = "form-control" id="password" maxlength="20" minlength ="4" value= "010-0000-0000">
  		</div>
  		<div class = "col-12 col-md-6">
  	<label for ="mobile" class = "form-label">핸드폰 정보 마케팅 사용 동의</label>
  	<br>
  	<input type="checkbox" id="" name="mobile" value="o">동의합니다
  	<input type="checkbox" id="" name="people" value="x"> 동의하지않습니다
  		</div>
  	</div>
  </div>
  
    
 <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="number" class = "form-label">전화번호</label><input type="text" class = "form-control" id="number" value="02-0000-0000">
  		</div>
  		<div class = "col-12 col-md-6">
  	<label for ="fax" class = "form-label">팩스번호</label><input type="text" class = "form-control" id="fax" value="032-000-0000">
  		</div>
  	</div>
  </div>

  <br>
 <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<select class="form-select" aria-label="Default select example">
			<option selected>거주국가</option>
			<option>대한한국
			<option>미국
			<option>영국
			</select>
  		</div>
  	</div>
  </div>
  
  <br>
  
    <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="number" class = "form-label">주소(한국어전용)</label><input type="text" class = "form-control" id="address">
  		</div>
  	</div>
  </div>
 
  
  <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="number" class = "form-label"></label><input type="text" class = "form-control" id="address">
  		</div>
  	</div>
  </div>
  
    <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="number" class = "form-label">주소(한국외전용)</label><input type="text" class = "form-control" id="address">
  		</div>
  	</div>
  </div>
 
  
  <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="number" class = "form-label"></label><input type="text" class = "form-control" id="address">
  		</div>
  	</div>
  	
  </div>
  <div class = "container-fluid">
  <div class = "row">
  <div class = "col-12 col-md-6">
  	<label for ="number" class = "form-label"></label><input type="text" class = "form-control" id="address">
  		</div>
  	</div>
  </div>
  
	<form action="/infra/durian/durianList" method="get">
		<button class="btn btn-warning">목록</button>
	</form>
	<form action="/infra/durian/durianView" method="get">
		<button class="btn btn-dark">수정</button>
		</form>
		
		</body>
	