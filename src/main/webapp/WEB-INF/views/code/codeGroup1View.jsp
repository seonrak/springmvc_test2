<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:out value="${rt.ifcgSeq}"/> | <c:out value="${rt.ifcgName}"/> | <c:out value="${rt.ifcgDelNy}"/>

<a href="/infra/code/codeGroup1Form?ifcgSeq=<c:out value="${rt.ifcgName}"/>">수정</a>

<form method="post" action="codeGroup1Updt">
	<input type="text" name="ifcgSeq" value="${rt.ifcgSeq}" style="visibility:hidden;">
	<input type="text" name="ifcgChangeName" placeholder="바꿀NAME">
	<input type="submit" value="제출">
</form>