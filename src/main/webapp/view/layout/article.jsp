<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="d-flex">
	<c:forEach var="tls" items="${tl }">
		<ul class="nav">
			<li class="chuphim nav-item"><a class="nav-link active" 
				style="color: darkgray;" aria-current="page" href="#">${tls.name }</a>
			</li>
		</ul>
	</c:forEach>

</div>
