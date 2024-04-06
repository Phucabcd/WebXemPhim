<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Home Page</title>
	<style type="text/css">
	.cards {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		gap: 50px;
	}

	.cardss {
		width: 300px;
		height: auto;
		border-radius: 12px;
		border: 1px solid #ddd;
		overflow: hidden;
		transition: all 0.2s linear;
		box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	}

	.cardss:hover {
		transform: translateY(-5px);
		box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
	}

	.cardss:hover .img-large {
		filter: none;
	}

	.img-large {
		width: 100%;
		height: 200px;
		object-fit: cover;
		filter: grayscale(80%);
		transition: filter 0.2s linear;
	}

	.card-body {
		padding: 20px;
	}

	.card-title {
		font-size: 20px;
		font-weight: bold;
		color: #333;
		margin-top: 0;
		margin-bottom: 10px;
	}

	.card-text {
		color: #666;
		margin-bottom: 10px;
	}

	.panel-footer {
		text-align: right;
		padding: 10px 20px;
	}

	.btn {
		margin-left: 5px;
		margin-right: 5px;
	}
</style>
</head>
<body>
<h3 class="text-light" style="text-align: center;">VIDEO YÊU THÍCH</h3>
<div class="row cards">
	<c:forEach var="f" items="${favorites}">
		<c:set var="v" value="${f.video}"/>
		<div class="col-md-4">
		 	<div class="panel panel-default cardss">
			  <div class="panel-body">
				  <a href="${pageContext.request.contextPath}/oe/video/detail/${v.id}">
				  	<img class="img-large" src="${v.poster}" alt="${v.title}">
				  </a>
			  </div>
			  <div class="card-body">
			  	<h4 class="card-title">${v.title}</h4>
			  	<p class="card-text">${v.description}</p>
			  </div>
			  <div class="panel-footer">
			  	<a href="${pageContext.request.contextPath}/oe/video/unlike/${f.id}" class="btn btn-xs btn-success">Unlike</a>
			  	<a href="#" class="btn btn-xs btn-info">Share</a>
			  </div>
			</div>
		</div>
	</c:forEach>
</div>
</body>
</html>
