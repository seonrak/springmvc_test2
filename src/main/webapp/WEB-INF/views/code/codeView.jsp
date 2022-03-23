<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:out value="${rt.ifcdSeq}"/> | <c:out value="${rt.ifcdName}"/> | <c:out value="${rt.ifcdDelNy}"/>

<a href="/infra/code/codeForm?ifcgSeq=<c:out value="${rt.ifcdName}"/>">수정</a>

<form method="post" action="codeUpdt">
	<input type="text" name="ifcdSeq" value="${rt.ifcdSeq}" style="visibility:hidden;">
	<input type="text" name="ifcdName" placeholder="바꿀NAME">
	<input type="submit" value="제출">
</form>