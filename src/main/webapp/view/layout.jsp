<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script type="module"
	src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"></script>
<script nomodule
	src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js"></script>
	
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath }/view/css/oe.css"> --%>
</head>
<style>
.wrapper {
	background-color: rgb(0, 56, 58);
	/* Thiết lập màu nền cho phần tử wrapper */
}

.chuphim :hover {
	background-color: rgb(8, 73, 253);
}

.text-decoration-none a:hover {
	color: blue;
	text-decoration: underline;
}

.card-img-overlay:hover {
	background-color: rgba(0, 0, 0, 0.5);
}
</style>

<body>
	<div class="wrapper">

		<jsp:include page="/view/layout/header.jsp"></jsp:include>
			
			
			
		<main style="background-color: black;" class="container">
			<div class="mt-3">
				<jsp:include page="/view/layout/botHeader.jsp"></jsp:include>
			</div>
 
			<div class="row mt-2">
				<article class="col-md-9">
					<jsp:include page="${page }"></jsp:include>
				</article>
				
				<jsp:include page="/view/layout/aside.jsp"></jsp:include>
				<jsp:include page="/view/layout/topmain.jsp"></jsp:include>
			</div> 
		</main>

		<div class="container mt-4">

			<jsp:include page="/view/layout/footer.jsp"></jsp:include>

		</div>

		<div class="text-light text-center mt-3 pb-3 ">
			<p>Liên hệ quảng cáo: info.animet@gmail.com</p>
			<p>Animet.Net không chịu trách nhiệm đối với bất kỳ nội dung nào
				được đăng tải trong trang web này. Mọi nội dung đều được sưu tầm và
				nhúng vào website tương tự như công cụ tìm kiếm Google. Disclaimer:
				This site does not store any files on its server. All contents are
				provided by non-affiliated third parties. Copyright ® 2018 -2024
				Animet.Net. All Rights Reserved.</p>
		</div>
	</div>
</body>

</html>