<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>DHH Ceramic - Tin Tức</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <!-- Css Styles -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="${url}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${url}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${url}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${url}/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${url}/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${url}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${url}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${url}/css/style.css" type="text/css">
</head>

<body>
<!-- Header Section Begin -->
<jsp:include page="/view/client/view/header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<!--<section class="hero hero-normal">-->
<!--    <div class="container">-->
<!--        <div class="row">-->
<!--            <div class="col-lg-3">-->
<!--                <div class="hero__categories">-->
<!--                    <div class="hero__categories__all">-->
<!--                        <i class="fa fa-bars"></i>-->
<!--                        <span>Tất cả sản phẩm</span>-->
<!--                    </div>-->
<!--                    <ul>-->
<!--                        <li><a href="#">Gạch giá rẻ</a></li>-->
<!--                        <li><a href="#">Gạch lát nền</a></li>-->
<!--                        <li><a href="#">Gạch ốp tường</a></li>-->
<!--                        <li><a href="#">Gạch lát sân vườn</a></li>-->
<!--                        <li><a href="#">Gạch giả gỗ</a></li>-->
<!--                        <li><a href="#">Gạch ốp lát cao cấp</a></li>-->
<!--                        <li><a href="#">Gạch tranh thảm</a></li>-->
<!--                        <li><a href="#">Gạch trang trí</a></li>-->
<!--                        <li><a href="#">Gạch vỉa hè</a></li>-->
<!--                        <li><a href="#">Gạch kính lấy sáng</a></li>-->
<!--                        <li><a href="#">Gạch lát cầu thang</a></li>-->
<!--                    </ul>-->
<!--                </div>-->
<!--            </div>-->
<!--            <div class="col-lg-9">-->
<!--                <div class="hero__search">-->
<!--                    <div class="hero__search__form">-->
<!--                        <form action="#">-->
<!--                            <input type="text" placeholder="Bạn đang cần gì?">-->
<!--                            <button type="submit" class="site-btn">Tìm kiếm</button>-->
<!--                        </form>-->
<!--                    </div>-->
<!--                    <div class="hero__search__phone">-->
<!--                        <div class="hero__search__phone__icon">-->
<!--                            <i class="fa fa-phone"></i>-->
<!--                        </div>-->
<!--                        <div class="hero__search__phone__text">-->
<!--                            <h5>+65 11.188.888</h5>-->
<!--                            <span>Hỗ trợ 24/7</span>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</section>-->
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg section_martop" data-setbg="${url}/img/banner2.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2 style="color: white!important;">Tin tức</h2>
                    <div class="breadcrumb__option">
                        <a href="${pageContext.request.contextPath}/view/client/view/index.jsp" style="color: white">Trang chủ</a>
                        <span>Tin tức</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Tìm kiếm...">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>

                    <div class="blog__sidebar__item">
                        <h4>Tin tức mới</h4>
                        <div class="blog__sidebar__recent">
                            <a href="#" class="blog__sidebar__recent__item show-more-blog">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="${url}/img/blog/sidebar/sr-1.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>LỰA CHỌN AN TOÀN CHO NGÔI NHÀ CỦA ÔNG BÀ<br/> </h6>
                                    <span>24 tháng 10, 2023</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item show-more-blog">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="${url}/img/blog/sidebar/sr-2.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>HÃY ĐỂ NHÀ LÀ NƠI CHỮA LÀNH TÂM HỒN</h6>
                                    <span>14 tháng 10, 2023</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item show-more-blog">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="${url}/img/blog/sidebar/sr-3.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>PHÒNG TẮM MỞ PHÓNG KHOÁNG ĐỂ THƯ GIÃN TỐI ĐA</h6>
                                    <span>11 tháng 10, 2023</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 from-blog-show">
                        <div class="blog__item">
                            <a class="blog__item__pic" href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">
                                <img src="${url}/img/blog/blog-2.jpg" alt="">
                            </a>
                            <div class="blog__item__text" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.jsp'">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 21 tháng 10, 2023</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">LỰA CHỌN AN TOÀN CHO NGÔI NHÀ CỦA ÔNG BÀ</a></h5>
                                <p>GẠCH LÁT NỀN PHÒNG NGỦ CHO NGƯỜI LỚN TUỔI Không gian phòng ngủ của ông bà cần phải
                                    được cân nhắc và tính toán sao cho hợp lý, phù hợp với sức khỏe và thuận tiện
                                    với...</p>
                                <a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp" class="blog__btn">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 from-blog-show">
                        <div class="blog__item">
                            <a class="blog__item__pic" href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">
                                <img src="${url}/img/blog/blog-3.jpg" alt="">
                            </a>
                            <div class="blog__item__text" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.jsp'">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 14 tháng 10, 2023</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">HÃY ĐỂ NHÀ LÀ NƠI CHỮA LÀNH TÂM HỒN</a></h5>
                                <p>NHÀ LÀ NƠI CHỮA LÀNH TÂM HỒN Khám phá xu hướng và lợi ích của Gạch lát nền vân gỗ
                                    trong thiết kế không gian. Bài viết này sẽ tập trung vào khả năng tạo cảm giác ấm áp
                                    và bình yên...</p>
                                <a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp" class="blog__btn">Xem thêm <span
                                        class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 from-blog-show">
                        <div class="blog__item">
                            <a class="blog__item__pic" href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">
                                <img src="${url}/img/blog/blog-5.jpg" alt="">
                            </a>
                            <div class="blog__item__text" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.jsp'">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 11 tháng 10, 2023</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">PHÒNG TẮM MỞ PHÓNG KHOÁNG ĐỂ THƯ GIÃN TỐI ĐA</a></h5>
                                <p>GẠCH ỐP TƯỜNG NHÀ TẮM – PHÒNG TẮM MỞ PHÓNG KHOÁNG ĐỂ THƯ GIÃN TỐI ĐA Phòng tắm hiện
                                    đại ngày nay không đơn thuần là “công trình phụ” khép kín mà thay vào đó </p>
                                <a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp" class="blog__btn">Xem thêm <span
                                        class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 from-blog-show">
                        <div class="blog__item">
                            <a class="blog__item__pic" href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">
                                <img src="${url}/img/blog/blog-1.jpg" alt="">
                            </a>
                            <div class="blog__item__text" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.jsp'">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 29 tháng 9, 2023</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="blog-details.jsp">PHÒNG TẮM CHILL CHO ĐỜI THÊM YÊU</a></h5>
                                <p>PHÒNG TẮM CHILL CHO ĐỜI THÊM YÊU Phòng tắm không chỉ là nơi sinh hoạt riêng tư mà còn
                                    là nơi giúp thư giãn. Do vậy, đầu tư thiết kế không gian này sẽ nâng cao chất lượng
                                    cuộc...</p>
                                <a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp" class="blog__btn">Xem thêm <span
                                        class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 from-blog-show">
                        <div class="blog__item">
                            <a class="blog__item__pic" href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">
                                <img src="${url}img/blog/blog-4.jpg" alt="">
                            </a>
                            <div class="blog__item__text" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.jsp'">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> 11 tháng 9, 2023</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">05 BỀ MẶT GẠCH Ý MỸ: TINH HOA KỸ THUẬT KẾT HỢP THẨM MỸ VÀ SỰ TIỆN
                                    DỤNG</a></h5>
                                <p>TINH HOA KỸ THUẬT KẾT HỢP THẨM MỸ VÀ SỰ TIỆN DỤNG Trong hơn 25 năm hình thành và phát
                                    triển, công nghệ sản xuất từ Italia luôn được GẠCH MEN Ý MỸ áp dụng để tạo nên
                                    những...</p>
                                <a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp" class="blog__btn">Xem thêm <span
                                        class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 from-blog-show">
                        <div class="blog__item">
                            <a class="blog__item__pic" href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">
                                <img src="${url}/img/blog/blog-6.jpg" alt="">
                            </a>
                            <div class="blog__item__text" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.jsp'">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">THAY GỖ CHĂM SÓC CHO CON</a></h5>
                                <p>THAY GỖ CHĂM SÓC CHO CON Trong quá trình xây dựng và trang trí phòng ngủ cho trẻ, lựa
                                    chọn vật liệu phù hợp để bảo vệ sức khỏe và tạo nên không...</p>
                                <a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp" class="blog__btn">Xem thêm<span
                                        class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="product__pagination blog__pagination">
                            <a href="#" class="active_pag">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<jsp:include page="/view/client/view/footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="${url}/js/jquery-3.3.1.min.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.nice-select.min.js"></script>
<script src="${url}/js/jquery-ui.min.js"></script>
<script src="${url}/js/jquery.slicknav.js"></script>
<script src="${url}/js/mixitup.min.js"></script>
<script src="${url}/js/owl.carousel.min.js"></script>
<script src="${url}/js/main.js"></script>


</body>

</html>