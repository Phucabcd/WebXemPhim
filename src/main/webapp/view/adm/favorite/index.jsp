<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<c:set var="base" value="${pageContext.request.contextPath}/poly/adm/favorite" scope="request"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Favorite Management</title>
</head>
<body>
	<h3>FAVORITE MANAGEMENT</h3>
	<jsp:include page="form.jsp"/>
	<jsp:include page="table.jsp"/>
</body>
</html>