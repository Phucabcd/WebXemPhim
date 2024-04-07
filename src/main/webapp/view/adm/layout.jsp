<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang quản trị</title>
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
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }
        nav {
            background-color: #444;
            color: white;
            padding: 10px;
            float: left;
            width: 200px;
        }
        nav a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 5px 10px;
            border-bottom: 1px solid #666;
        }
        nav a:hover {
            background-color: #666;
        }
        main {
            padding: 20px;
            margin-left: 220px;
        }
        footer {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
            clear: both; 
        }
    </style>
</head>
<body>
    <header class="bg-dark text-white ">
		
			<div>
				<img alt="" style="width: 100px"
					src="https://9anime.pe/images/logo.png">
			</div>
			
	</header>
    <nav class="bg-secondary">
        <a class="text-white" href="/asmJava4/oe/adm/account/index">User</a>
        <a class="text-white" href="/asmJava4/oe/adm/video/index">Video</a>
        <a class="text-white" href="/asmJava4/oe/video/list">Home</a>
    </nav>
    <main class="container">
        <jsp:include page="${page}"></jsp:include>
    </main>
     <footer class=" text-center text-white">
                <div class="container pb-0">
                    <a class="navbar-brand form" href="#"><img src="https://animet.net/Theme_Anime/images/logo_2023.png"
                            style="width:100px;" alt=""></a>
                    <section class="mb-4">
                        <a class="btn btn-outline-light btn-floating m-1" href=""><ion-icon
                                name="logo-discord"></ion-icon> </a>
                        <a class="btn btn-outline-light btn-floating m-1" href=""><ion-icon
                                name="logo-facebook"></ion-icon></a>
                        <a class="btn btn-outline-light btn-floating m-1" href=""><ion-icon
                                name="logo-octocat"></ion-icon> </a>
                        <a class="btn btn-outline-light btn-floating m-1" href=""><ion-icon
                                name="logo-snapchat"></ion-icon> </a>
                    </section>

                </div>
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    ©2024 demo
                    <a class="text-white" href="https://mdbootstrap.com/"></a>

                </div>
            </footer>

    <!-- Bootstrap JS (if needed) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
