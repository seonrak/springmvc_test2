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
<table border="1">
	
	<tr>
		<th style="background-color: gray;">이름</th>
		<th colspan="6">최선락</th>
		</tr>
	<tr>
		<th style="background-color: gray;">아이디</th>
		<th colspan="2">six_find</th>
		<th style="background-color: gray;">비밀번호</th>
		<th colspan="2">***************</th>
		</tr>
	<tr>
		<th style="background-color: gray;">성별</th>
		<th colspan="2">남</th>
		<th style="background-color: gray;">생일</th>
		<th colspan="2">1995.05.31</th>
		</tr>
	<tr>
		<th style="background-color: gray;">국적</th>
		<th colspan="2">대한민국</th>
		<th style="background-color: gray;">주소</th>
		<th colspan="2">경기도 광명시 가림로38</th>
		</tr>
	<tr>
		<th style="background-color: gray;">휴대폰</th>
		<th colspan="2">010-1111-2222</th>
		<th style="background-color: gray;">모바일 마케팅 수신 동의</th>
		<th colspan="2">x</th>
		</tr>
	<tr>
		<th style="background-color: gray;">전화번호</th>
		<th colspan="2">02-0000-0000</th>
		<th style="background-color: gray;">팩스번호</th>
		<th colspan="2">032-503-4444</th>
		</tr>
	<tr>
		<th style="background-color: gray;">이메일</th>
		<th colspan="2">.six_find@naver.com</th>
		<th style="background-color: gray;">이메일 마케팅 수신동의</th>
		<th colspan="2">o</th>
		</tr>
	<tr>
		<th style="background-color: gray;">추천인</th>
		<th colspan="5">장원영</th>
		</tr>
	<tr>
		<th style="background-color: gray;">비밀번호 문제</th>
		<th colspan="2">지금하고있는 게임은?</th>
		<th style="background-color: gray;">비밀번호 답</th>
		<th colspan="2">로스트아크</th>
		</tr>
	<tr>
		<th style="background-color: gray;">인스타그램</th>
		<th colspan="3">없음</th>
		<th rowspan="3"><img src="../../table/k.jpg"width="150px" height="150px"></th>
	
		</tr>
		
	<tr>
		<th style="background-color: gray;">홈페이지</th>
		<th colspan="3">없음</th>
		</tr>
	<tr>
		<th style="background-color: gray;">직업</th>
		<th colspan="3">?</th>
		</tr>
	<tr>
		<th style="background-color: gray;">취미</th>
		<th colspan="4">게임</th>
		</tr>
	<tr>
		<th style="background-color: gray;">결혼여부</th>
		<th colspan="2">x</th>
		<th style="background-color: gray;">결혼기념일</th>
		<th colspan="2">-</th>
		</tr>
	<tr>
		<th style="background-color: gray;">본인소개</th>
		<th colspan="4">-</th>
		</tr>
	<tr>
		<th style="background-color: gray;">개인정보 유효기간</th>
		<th colspan="4">2년</th>
		</tr>
		</table>
		<hr>
	<h2>프로젝트</h2>
		<table border="1">
		<tr>
		<th rowspan="4" style="background-color: gray;">프로젝트 사항</th>
		<th style="background-color: gray;">프로젝트기간</th>
		<th style="background-color: gray;">프로젝트명</th>
		<th style="background-color: gray;">프로젝트기관</th>
	
	</tr>
	<tr>
	<th>2017-12-10 ~ 2018-02-03</th>
		<th>@@@@@@@@프로젝트</th>
		<th>국민은행</th>
		</tr>
	<tr>
		<th>2018-09-10 ~ 2019-04-05</th>
		<th>@@@@@@@@@@프로젝트</th>
		<th>농협</th>
	
	
	</tr>
	<tr>
		<th>2019-07-13 ~ 2020-12-30</th>
		<th>@@@@@@@@@@@@프로젝트</th>
		<th>기업은행</th>
	
	</tr>

		</table>
				<hr>
	<form action="./memberForm.html" method="get">
		<button class="btn btn-warning">삭제</button>
	</form>
	<form action="./memberEdit.html" method="get">
		<button class="btn btn-dark">수정</button>
		</form>
	