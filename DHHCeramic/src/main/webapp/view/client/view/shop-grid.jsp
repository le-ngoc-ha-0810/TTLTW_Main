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
    <title>DHH Ceramic | Sản phẩm</title>

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
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Tất cả sản phẩm</span>
                    </div>
                    <ul>
                        <li><a href="#">Gạch giá rẻ</a></li>
                        <li><a href="#">Gạch lát nền</a></li>
                        <li><a href="#">Gạch ốp tường</a></li>
                        <li><a href="#">Gạch lát sân vườn</a></li>
                        <li><a href="#">Gạch giả gỗ</a></li>
                        <li><a href="#">Gạch ốp lát cao cấp</a></li>
                        <li><a href="#">Gạch tranh thảm</a></li>
                        <li><a href="#">Gạch trang trí</a></li>
                        <li><a href="#">Gạch vỉa hè</a></li>
                        <li><a href="#">Gạch kính lấy sáng</a></li>
                        <li><a href="#">Gạch lát cầu thang</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">

                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="Bạn đang cần gì?">
                            <button type="submit" class="site-btn">Tìm kiếm</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+65 11.188.888</h5>
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <jsp:include page="/view/client/view/left-bar.jsp"></jsp:include>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Sản phẩm khuyến mãi</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            <div class="col-lg-4 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="${url}/img/product/discount/product22.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Gạch tranh thảm</span>
                                        <h5><a href="#">Gạch tranh chim hạc long phụng 5D</a></h5>
                                        <div class="product__item__price">400.000 VND<span>500.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="img/product/discount/product14.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Gạch lát nền</span>
                                        <h5><a href="#">Gạch Thạch Bàn 80x80 LGB-0007</a></h5>
                                        <div class="product__item__price">240.000 VND <span>300.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="${url}/img/product/discount/product15.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Gạch lát nền</span>
                                        <h5><a href="#">Gạch Viglacera 60x60 bán sứ mờ SHBS6601</a></h5>
                                        <div class="product__item__price">240.000 VND <span>300.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="${url}/img/product/discount/product16.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Gạch lát cầu thang</span>
                                        <h5><a href="#">Gạch lát cầu thang 50x90 12811K</a></h5>
                                        <div class="product__item__price">300.000 VND <span>430.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="${url}/img/product/discount/product17.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Gạch lát cầu thang</span>
                                        <h5><a href="#">Gạch lát cầu thang 50x90 12816K</a></h5>
                                        <div class="product__item__price">300.000 VND <span>430.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="${url}/img/product/discount/product18.jpg">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <span>Gạch lát vỉa hè</span>
                                        <h5><a href="#">Gạch vỉa hè Terrazzo 40x40 xám tròn</a></h5>
                                        <div class="product__item__price">80.000 VND <span>100.000 VND</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sắp xếp</span>
                                <select>
                                    <option value="0">Mặc định</option>
                                    <option value="0">Mặc định</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>159</span> Sản phẩm có sẵn</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product1.1.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch lát nền</span>
                                <h6><a href="#">Gạch lát nền Prime 60x60 32011</a></h6>
                                <h5>160.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product2.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch lát nền</span>
                                <h6><a href="#">Gạch lát nền Prime 60x60 TP29156K</a></h6>
                                <h5>160.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product4.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch lát nền</span>
                                <h6><a href="#">Gạch ốp tường 30x60 Catalan men 36115</a></h6>
                                <h5>125.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product3.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch nhà tắm</span>
                                <h6><a href="#">Gạch nhà tắm 30x30</a></h6>
                                <h5>125.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product5.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch ốp tường</span>
                                <h6><a href="#">Gạch ốp tường 30x60 Catalan đá 3201</a></h6>
                                <h5>200.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product6.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch ốp tường</span>
                                <h6><a href="#">Gạch ốp tường Prime 30x60 XĐ7107</a></h6>
                                <h5>127.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product7.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch sân vuờn</span>
                                <h6><a href="#">Gạch sân vườn giá rẻ 40x40 PH4415</a></h6>
                                <h5>95.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product8.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch lát nền</span>
                                <h6><a href="#">Gạch sân vườn giá rẻ 40x40 PH4424</a></h6>
                                <h5>105.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product9.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch lát nền</span>
                                <h6><a href="#">Đá đồng chất Ý Mỹ lát sân vườn 30x60 N366017</a></h6>
                                <h5>220.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product10.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch lát nền</span>
                                <h6><a href="#">Gạch sân vườn giá rẻ 40x40 SH490</a></h6>
                                <h5>95.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product11.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">
                                    <span>Gạch lát nền</span>
                                    Gạch giả gỗ Trung Quốc 15x80 1507</a></h6>
                                <h5>220.000 VND</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 show-product" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/shop-details.jsp'">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="img/product/product/product12.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <span>Gạch lát nền</span>
                                <h6><a href="#">Đá đồng chất vân gỗ Trung Quốc 15x90 159K308</a></h6>
                                <h5> 260.000 VND</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product__pagination">
                    <a href="#" class="active_pag">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

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