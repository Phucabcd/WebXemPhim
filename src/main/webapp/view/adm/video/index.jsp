<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<c:set var="base" value="${pageContext.request.contextPath}/poly/adm/video" scope="request"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>User Management</title>
</head>
<body>
	<h3>VIDEO MANAGEMENT</h3>
	<jsp:include page="form.jsp"/>
	<jsp:include page="table.jsp"/>
</body>
</html>