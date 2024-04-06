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
	flex-wrap: wrap; /* Allow cards to wrap to the next line */
	justify-content: center; /* Center align cards horizontally */
	gap: 20px;
}

.cardss {
	border-radius: 12px;
	border: none; /* Remove border */
	overflow: hidden; /* Hide overflowing content */
	transition: all 0.2s linear;
	
}

.cardss:hover {
	transform: scale(1.05); /* Slightly scale up on hover */
    box-shadow: 0 4px 100px rgba(0, 0, 255, 0.5); /* Add blue shadow */

}

	
	</style>
</head>
<body>
	<div class="row">
		<div class="col">
		
			<div class="panel panel-default mt-2">
			  <div class="panel-body video-wrapper">
			  	<iframe width="850" height="400" src="https://www.youtube.com/embed/${video.id}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
			  </div>
			  <h3 class="panel-header text-light">${video.title}</h3>
			  <h5 class="panel-footer text-light">${video.description }</h5>
			</div>
		</div>
	</div>
	<div class="row mt-4">
	<c:forEach var="f" items="${favorites}">
	
    <div class="col-lg-4 mt-2 cardss">
        <div class="card">
            <a href="${pageContext.request.contextPath}/oe/video/detail/${f.video.id}">
                <img class="card-img-top" style="height: 200px" src="${f.video.poster}" alt="${f.video.title}">
            </a>
            <div class="card-body">
                <b class="card-title">${f.video.title}</b>
                <div class="d-flex justify-content-between align-items-center">
                    <small class="text-muted">${f.video.views} lượt xem</small>
                    <div>
                        <a href="${pageContext.request.contextPath}/oe/video/unlike/${f.id}" class="btn btn-sm btn-success me-2">Unlike</a>
                        <a href="#" class="btn btn-sm btn-info">Share</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</c:forEach>

	</div>


</body>
</html>