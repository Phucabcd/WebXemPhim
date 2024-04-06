<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
        <script type="module" src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"></script>
        <script nomodule src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js"></script>
</head>

<body>
    <section class="vh-100" style="background-color: #9A616D;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-5 d-none d-md-block">
                                <img src="https://i.pinimg.com/564x/8a/83/0c/8a830c307f88d4b64f7b349bb9f2f7b6.jpg"
                                    alt="login form" class="img-fluid" style="height: 100%;" />
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                <div class="card-body p-4 p-lg-5 text-black">

									<form  method="post">
										<h3 class="fw-bold mb-3 pb-3" style="letter-spacing: 1px;">Đăng nhập
											</h3>
											<h4 class="text-danger"> ${message }</h4>
										<div class="form-outline mb-4">
										
											<label class="form-label"  for="form2Example17">Tên đăng nhập
												</label> <input type="text" name="id" id="form2Example17"
												class="form-control form-control-lg" />
										</div>
										<div class="form-outline mb-4">
											<label class="form-label"  for="form2Example27">Mật
												khẩu</label> <input type="password" name="password" id="form2Example27"
												class="form-control form-control-lg" />
										</div>
										<div class="pt-1 mb-4">
											<button class="btn btn-dark btn-lg btn-block" type="submit">Đăng
												nhập</button>
										</div>
										<a class="small text-muted" href="#!">Quên mật khẩu?</a>
										<div id="icon" class=" mt-2 p-2 ">
											<a href="https://www.facebook.com/"
												class="btn btn-primary w-100 mt-2"><ion-icon
													name="logo-facebook"></ion-icon> Đăng nhập bằng Facebook</a> <a
												href="https://github.com/" class="btn btn-dark w-100 mt-2"><ion-icon
													name="logo-github"></ion-icon> Đăng nhập bằng Github</a> <a
												href="https://twitter.com/" class="btn btn-dark w-100 mt-2"><ion-icon
													name="logo-twitter"></ion-icon> Đăng nhập bằng Twitter </a>
										</div>
									</form>

								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>