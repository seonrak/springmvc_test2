<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form id="" name="" method="get" action="/infra/code/codeList">
<select name ="shIfcgSeq">
	<option value="">:: 코드그룹 ::
	<c:forEach items="${listCodeGroup1}" var ="item" varStatus="status">
	<option value="<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/>
	</c:forEach>
</select>
<input type="submit" name ="search">
<br>
<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<c:out value="${item.ifcdSeq}"/> | <c:out value="${item.ifcdName}"/> | <c:out value="${item.ifcdDelNy}"/> <br>
		<a href="/infra/code/codeView?ifcdSeq=${item.ifcdSeq}"><c:out value="${item.ifcdName}"/></a>
		
		</c:forEach>
	</c:otherwise>
</c:choose>	

</form> 