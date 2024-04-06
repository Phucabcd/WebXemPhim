<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        /* Đổi màu nền khi hover */
    }
    .small-text{
        font-size: 0.9rem;
    }
</style>

<body>
    

        <main style="background-color: black;" class="container">

            <div class="row mt-2">
                <article class="col-md-9">
              
                    <div class="row mt-2">
                        <div class="">
                            <div class="mx-2 p-2" style="max-width: 100%;">
                                <div class="d-flex flex-row"
                                    style="background-color: rgb(45, 50, 51); border-radius: 10px; overflow: hidden;">
                                    <img class="card-img-top"
                                        src="https://i0.wp.com/animet.net/upload/images/2024/01/mato-seihei-no-slave-thumbnail.jpg?resize=215%2C320&ssl=1"
                                        alt="Card image cap" style="width: 30%; height: auto;">
                                    <div class="card-body p-2">
                                        <h5 class="card-title"
                                            style="color: gold; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;  font-size: 40px;">
                                            Sand Land: The Series</h5>
                                        <div class="text-light">
                                            <h3>Vùng đất cát: Bộ truyện</h3>
                                        </div>
                                        <div class="text-light">
                                            <p>Trong tương lai xa, chiến tranh đã hủy diệt toàn bộ Trái đất, chỉ để lại
                                                một vùng đất hoang cằn cỗi, nơi nguồn cung cấp nước được kiểm soát bởi
                                                tên vua tham lam. Để tìm kiếm một hồ nước đã mất tích từ lâu, cảnh sát
                                                trưởng Rao đã nhờ đến sự giúp đỡ của vua quỷ... và bắt được con trai của
                                                nhà vua, Beelzebub, và trợ lý của ông ta, Thief. Bộ ba bất ngờ cùng nhau
                                                khởi hành băng qua sa mạc, đối mặt với rồng, kẻ cướp và kẻ thù nguy hiểm
                                                nhất... chính quân đội của Nhà vua!</p>
                                        </div>
                                        <div class="d-flex mb-3 align-items-center mt-4"
                                            style="color: #fff;  font-size: 10px;">
                                            <ion-icon name="star-half-outline" style="font-size: 16px;"></ion-icon>
                                            <p class="ml-1" style="margin-bottom: 0;">9.1</p>
                                            <ion-icon name="time-outline"
                                                style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                            <p class="ml-1" style="margin-bottom: 0;">23 Phút</p>
                                            <ion-icon name="calendar-outline"
                                                style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                            <p class="ml-1" style="margin-bottom: 0;">2024</p>
                                        </div>
                                        <div>
                                            <div class="btn btn-danger" style="font-size: 12px;
                                            padding: 5px 10px;
                                            border-radius: 5px;">1,453 lượt xem
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt-2">
                        <div class="card" style="background-color: rgb(45, 50, 51);">
                            <div class="card-header">
                                <ul class="nav nav-pills card-header-pills">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#">Thông tin phim</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">
                                <div class="row text-light small-text">
                                    <div class="col-md-6 ">
                                        <div class="d-flex flex-column">
                                            <h5>Trạng thái</h5>
                                            <p>05/13 tập</p>
                                           
                                            <h5>Thể loại</h5>
                                            <p>Hành động</p>
                                           
                                            <h5>Quốc gia</h5>
                                            <p>Nhật Bản</p>
                                           
                                            <h5>Nhà sản xuất</h5>
                                            <p>Sunrise, Anima, Kamikaze Douga</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <h5>Thời lượng</h5> <p>24 phút</p>
                                        <h5>Độ phân giải</h5> <p>HD</p>
                                        <h5>Chú ý</h5> <p>None</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card-title gap-2 d-flex justify-content-end">
                                <p class="btn btn-primary">Like</p>
                                <p class="btn btn-danger">Share</p>
                            </div>
                        </div>
                    </div>

                </article>

                <aside class="col-md-3">
                    <div class="list-group mt-3">
                        <a href="#" class="list-group-item list-group-item-action active border-primary-subtle"
                            style="background-color: rgb(45, 50, 51);" aria-current="true">
                            <div class="w-100 justify-content-between">
                                <h5 class="mb-1">Xem nhiều nhất</h5>
                                <small>Ngày | Tuần | Tháng | Năm</small>
                            </div>
                            <hr class="border border-warning border-2 opacity-50 my-2">
                            <div class="">
                                <div class="d-flex justify-content-center">
                                    <div class="mx-2" style="max-width: 100%;">
                                        <div class="d-flex flex-row"
                                            style="background-color: rgb(45, 50, 51); border-radius: 10px; overflow: hidden;">
                                            <img class="card-img-top"
                                                src="https://i0.wp.com/animet.net/upload/images/2024/01/mato-seihei-no-slave-thumbnail.jpg?resize=215%2C320&ssl=1"
                                                alt="Card image cap" style="width: 30%; height: auto;">
                                            <div class="card-body p-2">
                                                <h5 class="card-title"
                                                    style="color: #fff; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;  font-size: 15px;">
                                                    Mato Seihei no Slave</h5>
                                                <div class="d-flex mb-3 align-items-center mt-4"
                                                    style="color: #fff;  font-size: 10px;">
                                                    <ion-icon name="star-half-outline"
                                                        style="font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">9.1</p>
                                                    <ion-icon name="time-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">23 Phút</p>
                                                    <ion-icon name="calendar-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">2024</p>
                                                </div>
                                                <div>
                                                    <div class="btn btn-danger" style="font-size: 12px;
                                                    padding: 5px 10px;
                                                    border-radius: 5px;">1,453 lượt xem
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center mt-2">
                                    <div class="mx-2" style="max-width: 100%;">
                                        <div class="d-flex flex-row"
                                            style="background-color: rgb(45, 50, 51); border-radius: 10px; overflow: hidden;">
                                            <img class="card-img-top"
                                                src="https://i0.wp.com/animet.net/upload/images/2023/03/chien-doi-vuong-dang-king-ohger-thumbnail.jpg?resize=215%2C320&ssl=1"
                                                alt="Card image cap" style="width: 30%; height: auto;">
                                            <div class="card-body p-2">
                                                <h5 class="card-title"
                                                    style="color: #fff; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; font-size: 15px;">
                                                    Ohsama Sentai King-Ohger</h5>
                                                <div class="d-flex mb-3 align-items-center mt-4"
                                                    style="color: #fff; font-size: 10px;">
                                                    <ion-icon name="star-half-outline"
                                                        style="font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">9.1</p>
                                                    <ion-icon name="time-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">23 Phút</p>
                                                    <ion-icon name="calendar-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">2024</p>
                                                </div>
                                                <div>
                                                    <div class="btn btn-danger" style="font-size: 12px;
                                                    padding: 5px 10px;
                                                    border-radius: 5px;">1,453 lượt xem
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center mt-2">
                                    <div class="mx-2" style="max-width: 100%;">
                                        <div class="d-flex flex-row"
                                            style="background-color: rgb(45, 50, 51); border-radius: 10px; overflow: hidden;">
                                            <img class="card-img-top"
                                                src="https://i0.wp.com/animet.net/upload/images/2019/08/ben-10-omniverse-thumbnail.jpg?resize=215%2C320&ssl=1"
                                                alt="Card image cap" style="width: 30%; height: auto;">
                                            <div class="card-body p-2">
                                                <h5 class="card-title"
                                                    style="color: #fff; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;  font-size: 15px;">
                                                    Ben 10: Omniverse
                                                </h5>
                                                <div class="d-flex mb-3 align-items-center mt-4"
                                                    style="color: #fff;  font-size: 10px;">
                                                    <ion-icon name="star-half-outline"
                                                        style="font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">9.1</p>
                                                    <ion-icon name="time-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">23 Phút</p>
                                                    <ion-icon name="calendar-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">2024</p>
                                                </div>
                                                <div>
                                                    <div class="btn btn-danger" style="font-size: 12px;
                                                    padding: 5px 10px;
                                                    border-radius: 5px;">1,453 lượt xem
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-center">
                                    <div class="mx-2" style="max-width: 100%;">
                                        <div class="d-flex flex-row"
                                            style="background-color: rgb(45, 50, 51); border-radius: 10px; overflow: hidden;">
                                            <img class="card-img-top"
                                                src="https://i0.wp.com/animet.net/upload/images/2024/01/mato-seihei-no-slave-thumbnail.jpg?resize=215%2C320&ssl=1"
                                                alt="Card image cap" style="width: 30%; height: auto;">
                                            <div class="card-body p-2">
                                                <h5 class="card-title"
                                                    style="color: #fff; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;  font-size: 15px;">
                                                    Mato Seihei no Slave</h5>
                                                <div class="d-flex mb-3 align-items-center mt-4"
                                                    style="color: #fff;  font-size: 10px;">
                                                    <ion-icon name="star-half-outline"
                                                        style="font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">9.1</p>
                                                    <ion-icon name="time-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">23 Phút</p>
                                                    <ion-icon name="calendar-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">2024</p>
                                                </div>
                                                <div>
                                                    <div class="btn btn-danger" style="font-size: 12px;
                                                    padding: 5px 10px;
                                                    border-radius: 5px;">1,453 lượt xem
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center mt-2">
                                    <div class="mx-2" style="max-width: 100%;">
                                        <div class="d-flex flex-row"
                                            style="background-color: rgb(45, 50, 51); border-radius: 10px; overflow: hidden;">
                                            <img class="card-img-top"
                                                src="https://i0.wp.com/animet.net/upload/images/2023/03/chien-doi-vuong-dang-king-ohger-thumbnail.jpg?resize=215%2C320&ssl=1"
                                                alt="Card image cap" style="width: 30%; height: auto;">
                                            <div class="card-body p-2">
                                                <h5 class="card-title"
                                                    style="color: #fff; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; font-size: 15px;">
                                                    Ohsama Sentai King-Ohger</h5>
                                                <div class="d-flex mb-3 align-items-center mt-4"
                                                    style="color: #fff; font-size: 10px;">
                                                    <ion-icon name="star-half-outline"
                                                        style="font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">9.1</p>
                                                    <ion-icon name="time-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">23 Phút</p>
                                                    <ion-icon name="calendar-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">2024</p>
                                                </div>
                                                <div>
                                                    <div class="btn btn-danger" style="font-size: 12px;
                                                    padding: 5px 10px;
                                                    border-radius: 5px;">1,453 lượt xem
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center mt-2">
                                    <div class="mx-2" style="max-width: 100%;">
                                        <div class="d-flex flex-row"
                                            style="background-color: rgb(45, 50, 51); border-radius: 10px; overflow: hidden;">
                                            <img class="card-img-top"
                                                src="https://i0.wp.com/animet.net/upload/images/2019/08/ben-10-omniverse-thumbnail.jpg?resize=215%2C320&ssl=1"
                                                alt="Card image cap" style="width: 30%; height: auto;">
                                            <div class="card-body p-2">
                                                <h5 class="card-title"
                                                    style="color: #fff; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;  font-size: 15px;">
                                                    Ben 10: Omniverse
                                                </h5>
                                                <div class="d-flex mb-3 align-items-center mt-4"
                                                    style="color: #fff;  font-size: 10px;">
                                                    <ion-icon name="star-half-outline"
                                                        style="font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">9.1</p>
                                                    <ion-icon name="time-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">23 Phút</p>
                                                    <ion-icon name="calendar-outline"
                                                        style="margin-left: 10px; font-size: 16px;"></ion-icon>
                                                    <p class="ml-1" style="margin-bottom: 0;">2024</p>
                                                </div>
                                                <div>
                                                    <div class="btn btn-danger" style="font-size: 12px;
                                                    padding: 5px 10px;
                                                    border-radius: 5px;">1,453 lượt xem
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </a>
                    </div>
                </aside>
            </div>
        </main>

</body>

</html>