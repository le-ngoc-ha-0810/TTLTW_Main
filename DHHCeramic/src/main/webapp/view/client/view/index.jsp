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
    <title>DHH Ceramic - Trang chủ</title>
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
<section class="hero">
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
                <!-- Slideshow container -->
                <div class="slideshow-container">
                    <div class="slider bg-hero">
                        <img src="${url}/img/hero/banner2.png" style="width:100%">
                    </div>
                    <div class="slider bg-hero">
                        <img src="${url}/img/hero/banner3.png" style="width:100%">
                    </div>
                    <div class="slider bg-hero">
                        <img src="${url}/img/hero/banner5.jpg" style="width:100%">
                    </div>
                    <!-- Next and previous buttons -->
                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
                <br>
                <!-- The dots/circles -->
                <div style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- About Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5">
            <div class="col-lg-6">
                <img src="${url}/img/about.png" alt="" height="500px">
            </div>
            <div class="col-lg-6">
                <div class="section-title">
                    <p style="color: #003152; font-size: 35px; font-weight: 700;" class="fs-5">Về DHH Ceramic</p>
                    <h2 class="display-6">Nơi ý tưởng thành hiện thực</h2>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-sm-12">
                        <p>Sự tăng trưởng bền vững trong hơn 2 thập kỷ qua của Ý MỸ chỉ có thể đạt được nhờ việc xây
                            dựng hệ thống và nền tảng vận hành tốt nhất.</p>
                        <p class="mb-0">
                            Là thương hiệu có nhiều kinh nghiệm trong ngành sản xuất vật liệu xây dựng: gạch men, gạch
                            đá granite, ngói sứ tráng men… Mỗi khi lựa chọn hay quyết định hợp tác với các chủ đầu tư,
                            dự án chúng tôi đều cố gắng phát triển những chiến lược cụ thể. Để vươn đến vị thế dẫn đầu
                            thị trường từ những nền tảng tốt nhất về chi phí, giá thành và hiệu quả kinh tế cho Quý
                            khách hàng, đối tác, các nhà đầu tư và các đơn vị thiết kế, thi công xây dựng khi hợp tác
                            cùng Ý MỸ.</p> <br>
                        <p>Các sản phẩm thương hiệu Ý MỸ đã gắn liền với sự thành công của nhiều công trình trọng điểm
                            có dấu ấn trong nước như Landmark 81, Cao ốc Happy City Bình Chánh, Tòa nhà Pax Sky, Nhà máy
                            Điện Hạt nhân Ninh Thuận 1, Khu dân cư cao cấp Khang Điền Quận 9, Tòa nhà The Ascent,
                            Summerland Mũi Né…</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->
<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid vc_row-no-padding">
    <div class="wpb_column vc_column_container vc_col-sm-12">
        <div class="vc_column-inner">
            <div class="wpb_wrapper">
                <section class="categories-product-home">
                    <div class="">
                        <div class="item ">
                            <div class="cat-1" style="background-image: url(${url}/img/cat-1.jpg)" data-aos="fade-up" data-aos-duration="1000" data-aos-offset="0">
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4">
                                        <div class="box-info" data-aos="zoom-in" data-aos-duration="1000" data-aos-offset="100">
                                            <h2 class="title">Sản phẩm nổi bật</h2>
                                            <div class="excerpt">
                                                <p>Từ những thiết kế hiện đại bắt kịp xu hướng, đến những không gian đẳng cấp trong thế kỷ mới với phiên bản gạch ốp lát. Hãy khám phá những thiết kế phối cảnh 3D được ưa chuộng nhất của DHH Ceramic tại đây.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4"></div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 d-flex align-items-end">
                                        <div class="box-cate" data-aos="zoom-in" data-aos-duration="1000" data-aos-offset="100">
                                            <h2>Gạch ốp cao cấp</h2>
                                            <a class="more" href="shop-grid.jsp">
                                                Bộ sưu tập<i class="fas fa-long-arrow-alt-right ml-2"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="cat-2" style="background: url(${url}/img/cart-2.jpg);" data-aos="fade-up" data-aos-duration="1000" data-aos-offset="0">
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4"></div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4"></div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 d-flex align-items-end">
                                        <div class="box-cate" data-aos="zoom-in" data-aos-duration="1000" data-aos-offset="100">
                                            <h2>Gạch lát cầu thang</h2>
                                            <a class="more" href="shop-grid.jsp">
                                                Bộ sưu tập<i class="fas fa-long-arrow-alt-right ml-2"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="cat-3" style="background: url(${url}/img/cat-3.jpg);" data-aos="fade-up" data-aos-duration="1000" data-aos-offset="0">
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4"></div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 d-flex align-items-start justify-content-end">
                                        <div class="box-cate" data-aos="zoom-in" data-aos-duration="1000" data-aos-offset="50">
                                            <h2>Gạch lát nền</h2>
                                            <a class="more" href="shop-grid.jsp">
                                                Bộ sưu tập<i class="fas fa-long-arrow-alt-right ml-2"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-4">
                                        <div class="box-info">
                                            <i class="fa fa-quote-right"></i>
                                            <div class="excerpt">
                                                <p>DHH Ceramic không ngừng hoàn thiện, tìm tòi, học hỏi từ các đối tác trong và ngoài nước nhằm ứng dụng những thành tựu công nghệ, máy móc thiết bị tiên tiến trong ngành vật liệu xây dựng để tạo ra những sản phẩm mới, chất lượng cao, mẫu mã đa dạng và giá cả cạnh tranh.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="grid-cate">
                                <div class="cat-4" style="background: url(${url}/img/cat-4.jpg);" data-aos="fade-right" data-aos-duration="1000" data-aos-offset="0">
                                    <div class="box-cate" data-aos="zoom-in" data-aos-duration="1000" data-aos-offset="100">
                                        <h2>Gạch lát sân vườn</h2>
                                        <a class="more" href="shop-grid.jsp">
                                            Bộ sưu tập<i class="fas fa-long-arrow-alt-right ml-2"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="cat-5" style="background: url(${url}/img/cat-5.jpg);" data-aos="fade-right" data-aos-duration="1000" data-aos-offset="0">
                                    <div class="box-cate" data-aos="zoom-in" data-aos-duration="1000" data-aos-offset="100">
                                        <h2>Gạch ốp tường</h2>
                                        <a class="more" href="${url}san-pham/?yith_wcan=1&filter_cong-dung=op-tuong&query_type_cong-dung=or">
                                            Bộ sưu tập<i class="fas fa-long-arrow-alt-right ml-2"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="cat-6" style="background: url(${url}/img/cat-6.jpg);" data-aos="fade-left" data-aos-duration="1000" data-aos-offset="0">
                                    <div class="box-cate" data-aos="zoom-in" data-aos-duration="1000" data-aos-offset="100">
                                        <h2>Gạch trang trí</h2>
                                        <a class="more" href="${url}/danh-muc-san-pham/ngoi/">
                                            Bộ sưu tập<i class="fas fa-long-arrow-alt-right ml-2"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>Tin tức</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 from-blog-show">
                <div class="blog__item" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.jsp'">
                    <div class="blog__item__pic">
                        <img src="${url}/img/blog/blog-1.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">PHÒNG TẮM CHILL CHO ĐỜI THÊM YÊU</a></h5>
                        <p>PHÒNG TẮM CHILL CHO ĐỜI THÊM YÊU Phòng tắm không chỉ là nơi sinh hoạt riêng tư mà còn
                            là nơi giúp thư giãn. Do vậy, đầu tư thiết kế không gian này sẽ nâng cao chất lượng
                            cuộc...</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 from-blog-show">
                <div class="blog__item" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.html'">
                    <div class="blog__item__pic">
                        <img src="${url}/img/blog/blog-2.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">LỰA CHỌN AN TOÀN CHO NGÔI NHÀ CỦA ÔNG BÀ</a></h5>
                        <p>GẠCH LÁT NỀN PHÒNG NGỦ CHO NGƯỜI LỚN TUỔI Không gian phòng ngủ của ông bà cần phải
                            được cân nhắc và tính toán sao cho hợp lý, phù hợp với sức khỏe và thuận tiện
                            với...</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 from-blog-show">
                <div class="blog__item" onclick="window.location.href='${pageContext.request.contextPath}/view/client/view/blog-details.html'">
                    <div class="blog__item__pic">
                        <img src="${url}/img/blog/blog-3.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="${pageContext.request.contextPath}/view/client/view/blog-details.jsp">HÃY ĐỂ NHÀ LÀ NƠI CHỮA LÀNH TÂM HỒN</a></h5>
                        <p>NHÀ LÀ NƠI CHỮA LÀNH TÂM HỒN Khám phá xu hướng và lợi ích của Gạch lát nền vân gỗ
                            trong thiết kế không gian. Bài viết này sẽ tập trung vào khả năng tạo cảm giác ấm áp
                            và bình yên...</p>
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

<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    // Next/previous controls
    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    // Thumbnail image controls
    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("slider");
        let dots = document.getElementsByClassName("dot");
        if (n > slides.length) {
            slideIndex = 1;
        }
        if (n < 1) {
            slideIndex = slides.length;
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }

    // Tự động chuyển hình sau mỗi 5 giây
    setInterval(function () {
        plusSlides(1);
    }, 5000);
</script>
</body>

</html>