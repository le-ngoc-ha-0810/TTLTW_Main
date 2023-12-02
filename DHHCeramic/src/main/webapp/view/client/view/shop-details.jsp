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
    <title>DHH Ceramic | Chi tiết sản phẩm</title>

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
                            <label>
                                <input type="text" placeholder="Bạn đang cần gì?">
                            </label>
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

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="${url}/img/banner2.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Chi tiết sản phẩm</h2>
                    <div class="breadcrumb__option">
                        <a href="${pageContext.request.contextPath}/view/client/view/index.jsp">Trang chủ</a>
                        <a href="${pageContext.request.contextPath}/view/client/view/index.jsp">Sản phẩm</a>
                        <span>Chi tiết sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="${url}/img/product/details/product-details-1.jpg" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <img data-imgbigurl="${url}/img/product/details/product-details-1.jpg"
                             src="${url}/img/product/details/thumb-1.jpg" alt="">
                        <img data-imgbigurl="${url}/img/product/details/product-details-2.jpg"
                             src="${url}/img/product/details/thumb-2.jpg" alt="">
                        <img data-imgbigurl="${url}/img/product/details/product-details-3.jpg"
                             src="${url}/img/product/details/thumb-3.jpg" alt="">
                        <img data-imgbigurl="${url}/img/product/details/product-details-4.jpg"
                             src="${url}/img/product/details/thumb-4.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3>Gạch lát nền Prime 600x600 32011</h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 Đánh giá)</span>
                    </div>
                    <div class="product__details__price">140.000 VND</div>
                    <p></p>
                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/view/client/view/shoping-cart.jsp" class="primary-btn">Thêm vào giỏ hàng</a>
                    <a class="heart-icon">
                        <i class="fa-solid fa-heart"></i>
                    </a>
                    <ul>
                        <li><b>Sản xuất :</b> <span>PRIME - Việt Nam</span></li>
                        <!--                        <li><b>Kích thước :</b> <span>60x60 cm (Thùng 4 viên = 1,44 m²)<samp>Free pickup today</samp></span></li>-->
                        <li><b>Kích thước :</b> <span>60x60 cm (Thùng 4 viên = 1,44 m²)</span></li>
                        <li><b>Đơn giá :</b> <span>Trên m²  (Hàng loại 1, bao bể, vỡ)</span></li>
                        <li><b>Miễn phí vận chuyển :</b> <span>Nội thành HCM với đơn trên 1.000.000</span></li>
                        <li><b>Chia sẻ qua :</b>
                            <div class="share">


                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-google"></i></a>
                                <!--                                <a href="#"><i class="fa fa-pinterest"></i></a>-->
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link  active" data-toggle="tab" href="#tabs-1" role="tab"
                               aria-selected="true">Đánh giá <span>(14)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                               aria-selected="false">Mô tả</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                               aria-selected="false">Chi tiết sản phẩm</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <!--                                <h6>M</h6>-->
                                <div id="product__comment-icon1" style="color:#efac92;cursor: pointer;padding-bottom: 15px;font-size: 15px;
    font-weight: 700;">MÔ TẢ
                                </div>
                                <p>Đá Porcelain, màu trắng vân đá xám tinh tế <br>
                                    - Bề mặt bóng kính toàn phần, hiện đại, sang trọng <br>
                                    - Mài cạnh, chống thấm, chống trơn trượt, chống trầy xước<br>
                                    - Xương gạch cứng, siêu dày, tăng độ chịu lực cho sản phẩm<br>
                                    - Sản phẩm bền màu, không độc hại, thân thiện với môi trường xung quanh<br>
                                    - Màu sắc sang trọng, có tính thẩm mỹ cao, mẫu mã hiện đại, theo xu thế mới<br>
                                    - Sản xuất theo Công nghệ mới, tiên tiến và luôn an toàn cho sức khỏe gia đình
                                    bạn<br>
                                    - Tất cả sản phẩm Gạch Prime đều đạt Tiêu chuẩn quốc tế về hệ thống quản lý và chất
                                    lượng<br>
                                    - Phù hợp lát sàn phòng khách, phòng ngủ, phòng họp, khu vực bếp, nhà hàng, khách
                                    sạn, khu thương mại...</p>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <div id="product__comment-icon3" style="color:#efac92;cursor: pointer;padding-bottom: 15px;font-size: 15px;
    font-weight: 700;">CHI TIẾT SẢN PHẨM
                                </div>
                                <p>Sản phẩm là gạch lát nền Prime do Việt Nam sản xuất</p>
                            </div>
                        </div>
                        <div class="tab-pane  active" id="tabs-1" role="tabpanel">
                            <div id="product__comment">
                                <div id="product__comment-icon2" style="color:#efac92;cursor: pointer;padding-bottom: 15px;font-size: 15px;
    font-weight: 700;">ĐÁNH GIÁ SẢN PHẨM
                                </div>

                                <div id="product__comment-text">

                                    <div class="product__comment-text1">
                                        <div class="product__comment-text1-cmt">

                                            <img src="${url}/img/user/user2.jpg" alt=""
                                                 style="width: 20px;height: 20px;">
                                            <p>Hà</p>
                                        </div>
                                        <div class="home-product-item__rating"
                                             style="float: left; margin-left: -12px;padding-right: 12px;">

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>


                                        </div>
                                        <p>
                                        <p>Xin ch&agrave;o xin ch&agrave;o</p>
                                        </p>
                                        <p style="font-size: 8px;">2023-10-29</p>
                                    </div>

                                    <div class="product__comment-text1">
                                        <div class="product__comment-text1-cmt">

                                            <img src="${url}/img/user/default.png" alt=""
                                                 style="width: 20px;height: 20px;">
                                            <p>Minh Huy</p>
                                        </div>
                                        <div class="home-product-item__rating"
                                             style="float: left; margin-left: -12px;padding-right: 12px;">

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>


                                        </div>
                                        <p>
                                        <p>Sản phấm tốt, sẽ ủng hộ th&ecirc;m.</p>
                                        </p>
                                        <p style="font-size: 8px;">2023-10-30</p>
                                    </div>

                                    <div class="product__comment-text1">
                                        <div class="product__comment-text1-cmt">

                                            <img src="${url}/img/user/user2.jpg" alt=""
                                                 style="width: 20px;height: 20px;">
                                            <p>Diệp</p>
                                        </div>
                                        <div class="home-product-item__rating"
                                             style="float: left; margin-left: -12px;padding-right: 12px;">

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>


                                        </div>
                                        <p>
                                        <p>Sản phẩm rất t&ocirc;t</p>
                                        </p>
                                        <p style="font-size: 8px;">2023-11-03</p>
                                    </div>

                                    <div class="product__comment-text1">
                                        <div class="product__comment-text1-cmt">

                                            <img src="${url}/img/user/default.png" alt=""
                                                 style="width: 20px;height: 20px;">
                                            <p>Khang</p>
                                        </div>
                                        <div class="home-product-item__rating"
                                             style="float: left; margin-left: -12px;padding-right: 12px;">

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>

                                            <i class="home-product-item__star--gold fas fa-star"></i>


                                        </div>
                                        <p>
                                        <p>L&ocirc; l&ocirc; l&ocirc;&nbsp;</p>
                                        </p>
                                        <p style="font-size: 8px;">2023-11-13</p>
                                    </div>
                                    <div class="rating">
                                        <input type="radio" id="star5" name="rating" value="5"/>
                                        <label class="star" for="star5" title="Awesome"
                                               aria-hidden="true"> <i class="fas fa-star"></i></label>
                                        <input type="radio" id="star4" name="rating" value="4"/>
                                        <label class="star" for="star4" title="Great"
                                               aria-hidden="true"><i class="fas fa-star"></i></label>
                                        <input type="radio" id="star3" name="rating" value="3"/>
                                        <label class="star" for="star3" title="Very good"
                                               aria-hidden="true"><i class="fas fa-star"></i></label>
                                        <input type="radio" id="star2" name="rating" value="2"/>
                                        <label class="star" for="star2" title="Good"
                                               aria-hidden="true"><i class="fas fa-star"></i></label>
                                        <input type="radio" id="star1" name="rating" value="1"/>
                                        <label class="star" for="star1" title="Bad"
                                               aria-hidden="true"><i class="fas fa-star"></i></label>
                                    </div>
                                    <div  class="comment" style="display: flex; width: auto; height: 350px; margin-top:20px">
                                        <div style="margin-left:24px;">
                                            <form>
                                                <div style="display: flex; float: left">
                                                    <img src="${url}/img/user/default.png" alt=""
                                                         style="width: 45px;height: 45px; margin-top: 23px">
                                                </div>
                                                <div class="row">
                                                    <div class="product__comment-input col-md-12 form-group mb-5">
                                <textarea class="form-control ckeditor" name="message1" id="message" cols="60" rows="2"
                                          placeholder="Bình luận..." required></textarea>
                                                        <input type="submit" id="commentButton"
                                                               class="btn product__comment-btn"
                                                               value="Bình luận">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="fb-comments" style="margin-left: 24px;" data-width=""
                                             data-numposts="2"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>Sản phẩm liên quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6 show-product">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product/product2.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <span>Gạch lát nền</span>
                        <h6><a href="#">Gạch lát nền PRIME 40x40</a></h6>
                        <h5>300.000 VNĐ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 show-product">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product/product3.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <span>Gạch lát nền</span>
                        <h6><a href="#">Gạch lát nền Mỹ Ý</a></h6>
                        <h5>150.000 VNĐ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 show-product">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product/product2.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <span>Gạch lát nền</span>
                        <h6><a href="#">Gạch lát nền Mỹ Ý</a></h6>
                        <h5>130.000 VNĐ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 show-product">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product/product2.jpg">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <span>Gạch lát nền</span>
                        <h6><a href="#">Gạch lát nền PRIME 60x60</a></h6>
                        <h5>160.000 VNĐ</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Product Section End -->

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