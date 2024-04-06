<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Online Entertainment</title>
</head>
<body>
	<header>HEADER</header>
	<nav>MENU</nav>
	<main>
		<jsp:include page="${page}"/>
	</main>
	<footer>FOOTER</footer>
</body>
</html>