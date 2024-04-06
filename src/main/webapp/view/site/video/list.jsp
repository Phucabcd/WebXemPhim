<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home Page</title>
<style type="text/css">
.cards {
	display: flex;
	flex-wrap: wrap; /* Allow cards to wrap to the next line */
	justify-content: center; /* Center align cards horizontally */
	gap: 20px;
}

.cardss {
	width: 250px;
	height: auto; /* Adjust height based on content */
	border-radius: 12px;
	border: none; /* Remove border */
	overflow: hidden; /* Hide overflowing content */
	transition: all 0.2s linear;
	box-shadow: 0 4px 8px rgba(255, 255, 255, 0.5); /* Add white shadow */
}

.cardss:hover {
	transform: scale(1.05); /* Slightly scale up on hover */
            box-shadow: 0 4px 100px rgba(0, 0, 255, 0.5); /* Add blue shadow */

}

.cardss:hover .img-fluid {
	/* filter: blur(2px);  */
}

.img-fluid {
	width: 100%;
	height: 150px; /* Set a fixed height for images */
	object-fit: cover;
	/* Ensure images maintain aspect ratio and cover the container */
	transition: filter 0.2s linear;
}

.card-body {
	padding: 10px;
}

.card-title {
	color: white;
	margin-top: 0;
	margin-bottom: 10px;
}

.card-text {
	color: lightgray;
	margin-bottom: 5px;
}

.panel-footer {
	text-align: right;
}

.btn {
	margin-left: 5px;
	margin-right: 5px;
}
</style>
</head>
<body>
	<h1 style="text-align: center; font-family: 'Arial Black', sans-serif; font-size: 2.5em; color: #ff6600; text-shadow: 2px 2px 2px #333;">VIDEO MỚI NHẤT</h1>
	<div class="cards">
		<c:forEach var="v" items="${videos}">

			<div class="cardss">
				<a href="${pageContext.request.contextPath}/oe/video/detail/${v.id}">
					<img class="img-fluid" src="${v.poster}" alt="${v.title}">
				</a>
				<div class="card-body">
					<b class="card-title">${v.title}</b>
					<p class="card-text mt-3">${v.views} lượt xem</p>
					<div class="panel-footer">
						<a href="${pageContext.request.contextPath}/oe/video/like/${v.id}"
							class="btn btn-sm btn-success">like</a> <a href="#"
							class="btn btn-sm btn-info">Share</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
