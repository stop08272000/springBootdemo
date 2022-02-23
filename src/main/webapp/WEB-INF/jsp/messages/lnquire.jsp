<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<jsp:include page="layout/navbar.jsp" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂位查詢</title>
</head>
<body>
 <div align="center">
<h2>訂位/更改/刪除-查詢</h2>
<tr><td>會員手機電話<input type="text"  name="name">

<input type="submit" name="submit1" value="確定送出">

</div>
</body>
</html>