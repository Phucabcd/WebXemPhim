<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<header class="">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: black;">
		<div class="container-fluid">
			<a class="navbar-brand text-light" href="/asmJava4/oe/video/list">ONLINE ENTERTAINMENT</a>
			<div
			
				class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link text-light" href="/asmJava4/oe/video/favorite/">MY
							FAVORITES</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-light" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false"> MY ACCOUNT ${ttdn} </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="/asmJava4/oe/account/login">Login</a></li>
							<li><a class="dropdown-item"
								href="/asmJava4/oe/account/sign-up">Registration</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Forgot Password</a></li>
							<li><a class="dropdown-item" href="/asmJava4/oe/account/logoff">Logoff</a></li>
							<li><a class="dropdown-item" href="/asmJava4/oe/account/change-password">Change Password</a></li>
							<li><a class="dropdown-item" href="#">Edit Profile</a></li>
							<% 
								User user = (User) session.getAttribute("user");
								if(user != null && user.isAdmin()){
									%>
									<li><a class="dropdown-item" href="/asmJava4/oe/adm/account/index">MANAGEMENT</a></li>
									<%
								} 
							%>
							
						</ul></li>
				</ul>
				
			</div>
			<div class="mx-auto order-0">
				<a class="navbar-brand form" href="#"><img
					src="https://9anime.pe/images/logo.png"
					style="width: 100px;" alt=""></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target=".dual-collapse2">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
				<ul class="navbar-nav ms-auto">
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							style="width: 280px;"
							placeholder="Tìm: tên phim, đạo diễn, thể loại..."
							aria-label="Search">
						<button class="btn btn-outline-primary" type="submit">Search</button>
					</form>
				</ul>
			</div>

		</div>
	</nav>
</header>