<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeInst">

<!-- jquery ui CSS -->    
<link href="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">

<select name="ifcgSeq">
	<c:forEach items="${list}" var="item" varStatus="status">
	<option value="<c:out value="${item.ifcgSeq }"/>"><c:out value="${item.ifcgName }"/>(<c:out value="${item.ifcgSeq }"/>)
	</c:forEach>
</select>
	<input type="text" name="ifcdName" placeholder="아이디">
	<input type="submit" value="제출">
	<input type="text" id="abcDate" name="abcDate">
	<input type="submit" value="제출">
	
	<!-- jquery ui -->
	<script src="/infra/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		 $("#abcDate").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
</script>
</form>