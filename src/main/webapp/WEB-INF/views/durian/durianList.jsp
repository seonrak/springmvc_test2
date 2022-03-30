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


</head>

<body>
	<!--colspan 가로 rowspan 세로  -->

	<div class="container-fluid d-none d-sm-block" style="height: 60px;">
		<div class="row h-100">
			<div class="col-4 col-sm-2 my-auto">
				<img src="../../../image/baemin.jpg"
					class="img-fluid rounded mx-auto d-block">
			</div>
			<div class="col-sm-4 my-auto d-none d-sm-block">
				<p class="mb-0 fs-5 fw-bold">Baemin System</p>
			</div>
			<div class="col-8 col-sm-2 my-auto">
				<i class="fas fa-bars fa-lg d-block d-sm-none text-end"></i>
			</div>
			<div class="col-sm-3 my-auto d-none d-sm-block">
				<div class="row">
					<div class="col my-auto">
						<img src="../../../image/k.jpg"
							class="image- rounded-circle border border-3 float-end"
							style="width: 40px; height: 40px;" alt="...">
					</div>
					<div class="col my-auto">
						<p class="mb-0">seon rak(CEO)</p>
						<p class="mb-0">
							<small>Administrator</small>
						</p>
					</div>
				</div>
			</div>
			<div class="col-sm-1 my-auto text-end-done d-sm-block">
				<select class="form-select form-select-sm" name="" id="">
					<option>언어</option>
					<option>한국어</option>
					<option>영어</option>
				</select>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
		style="background-color: black;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">메뉴</a>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar navbar-expand-lg navbar-light bg-light">
					<a class="nav-link active" href="#">시스템관리</a> <a class="nav-link"
						href="#">Features</a> <a class="nav-link" href="#">dropdown1</a>
				</div>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<h2>Code</h2>
	<div class="row g-3">
		<div class="col-sm">
			<select class="form-select" aria-label="Default select example">
				<option selected>삭제여부</option>
			</select>
		</div>
		<div class="col-sm">
			<select class="form-select" aria-label="Default select example">
				<option selected>날짜</option>
			</select>
		</div>
		<div class="col-sm">
			<input type="text" class="form-control" placeholder="시작일"
				aria-label="시작일">
		</div>
		<div class="col-sm">
			<input type="text" class="form-control" placeholder="종료일"
				aria-label="종료일">
		</div>
	</div>

	<br>

	<div class="row g-3">
		<div class="col-sm">
			<select class="form-select" aria-label="Default select example">
				<option selected>검색구분</option>
			</select>
		</div>
		<div class="col-sm">
			<input type="text" class="form-control" placeholder="검색어"
				aria-label="검색어">
		</div>
		<div class="col-sm">
			<button type="button" class="btn-sm btn-warning">
				<img src="../../../image/search.svg">
			</button>
			<button type="button" class="btn-sm btn-danger">
				<img src="../../../image/reset.svg">
			</button>
		</div>
	</div>
	<br>
	<h3>회원관리</h3>


	<table class="table">
		<thead>
			<tr class="table-dark">
				<th scope="col"><input type="checkbox" id="" name="checkbox"
					value="o" onclick="selectall"></th>
				<th scope="col">번호</th>
				<th scope="col">아이디</th>
				<th scope="col">이름</th>
				<th scope="col">Country</th>
				<th scope="col">Sex</th>
				
			
			</tr>
		</thead>
		<tbody>
			<c:choose>
                                    <c:when test="${fn:length(list) eq 0}">
                                        <tr>
                                            <td class="text-center" colspan="9">There is no data!</td>
                                        </tr>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach items="${list}" var="item" varStatus="status">
                                            <tr>
                                                <td scope="col"><input type="checkbox"></td>
                                                <td scope="col"><c:out value="${item.ifmmSeq}"/></td>
                                                <td scope="col"><a href="/infra/durian/durianView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.ifmmName}"/></a></td>                                      
                                                <td scope="col"><c:out value="${item.ifmmId}"/></td>
                                                <td scope="col">광명시</td>
                                                <td scope="col">남</td>
                                         
                                        
                                            </tr>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
		</tbody>
	</table>
	<hr>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link">이전</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
	</nav>
	<hr>
	<div class="d-grid gop -2 d-md-flex justify-content-md-end">
		<a href=""><button class="btn btn-secondary btn-sm" type="button">
				<img src="../../../image/excel.svg">
			</button></a> <a href="/infra/durian/durianForm"><button class="btn btn-primary btn-sm" type="button">
				<img src="../../../image/plus.svg">
			</button></a> <a><button type="button" class="btn btn-danger btn-sm"
				data-bs-toggle="modal" data-bs-target="#exampleModal">
				<img src="../../../image/trash.svg">
			</button></a>
		<!-- <a href=""><button type="button" class="btn btn-danger btn-sm">삭제</button></a>
	<a href="#exampleModal"><button class="btn btn-danger btn-sm" type="button" >전체삭제</button></a> -->
	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">정말로 삭제하시겠습니까?</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">모든정보가 삭제됩니다.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-primary">삭제하기</button>
				</div>
			</div>
		</div>
	</div>

</body>





 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- <script src="../../../bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script> -->
<!--  <script src="../../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script> -->

<!-- <form action="./memberForm.html" method="post">
		<input style="background-color: green;" type="submit" value="삭제">
	</form>
	<form action="./memberEdit.html" method="post">
		<input style="background-color: red;" type="submit" value="수정">
	</form></html> -->
