<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 11/24/2023
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/static" var="url"></c:url>
<div class="col-lg-3 col-md-5">
    <div class="sidebar">
        <div class="sidebar__item">
            <h4>Tất cả loại gạch</h4>
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
        <div class="sidebar__item">
            <h4>Giá </h4>
            <div class="price-range-wrap">
                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                     data-min="10" data-max="540">
                    <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                    <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                </div>
                <div class="range-slider">
                    <div class="price-input">
                        <input type="text" id="minamount">
                        <input type="text" id="maxamount">
                    </div>
                </div>
            </div>
        </div>
        <!--                    <div class="sidebar__item sidebar__item__color&#45;&#45;option">-->
        <!--                        <h4>Colors</h4>-->
        <!--                        <div class="sidebar__item__color sidebar__item__color&#45;&#45;white">-->
        <!--                            <label for="white">-->
        <!--                                White-->
        <!--                                <input type="radio" id="white">-->
        <!--                            </label>-->
        <!--                        </div>-->
        <!--                        <div class="sidebar__item__color sidebar__item__color&#45;&#45;gray">-->
        <!--                            <label for="gray">-->
        <!--                                Gray-->
        <!--                                <input type="radio" id="gray">-->
        <!--                            </label>-->
        <!--                        </div>-->
        <!--                        <div class="sidebar__item__color sidebar__item__color&#45;&#45;red">-->
        <!--                            <label for="red">-->
        <!--                                Red-->
        <!--                                <input type="radio" id="red">-->
        <!--                            </label>-->
        <!--                        </div>-->
        <!--                        <div class="sidebar__item__color sidebar__item__color&#45;&#45;black">-->
        <!--                            <label for="black">-->
        <!--                                Black-->
        <!--                                <input type="radio" id="black">-->
        <!--                            </label>-->
        <!--                        </div>-->
        <!--                        <div class="sidebar__item__color sidebar__item__color&#45;&#45;blue">-->
        <!--                            <label for="blue">-->
        <!--                                Blue-->
        <!--                                <input type="radio" id="blue">-->
        <!--                            </label>-->
        <!--                        </div>-->
        <!--                        <div class="sidebar__item__color sidebar__item__color&#45;&#45;green">-->
        <!--                            <label for="green">-->
        <!--                                Green-->
        <!--                                <input type="radio" id="green">-->
        <!--                            </label>-->
        <!--                        </div>-->
        <!--                    </div>-->
        <div class="sidebar__item">
            <h4>Kích thước</h4>

            <div class="sidebar__item__size">
                <label for="large">
                    15x60cm
                    <input type="radio" >
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="medium">
                    15x80cm
                    <input type="radio" >
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="small">
                    20x90cm
                    <input type="radio" >
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="tiny">
                    20x40cm
                    <input type="radio">
                </label>
            </div>

            <div class="sidebar__item__size">
                <label for="large">
                    30x40cm
                    <input type="radio" >
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="medium">
                    30x60cm
                    <input type="radio" >
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="small">
                    40x40cm
                    <input type="radio" >
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="tiny">
                    40x80cm
                    <input type="radio">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="large">
                    50x50cm
                    <input type="radio" id="large">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="medium">
                    60x90cm
                    <input type="radio" id="medium">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="small">
                    60x60cm
                    <input type="radio" id="small">
                </label>
            </div>
            <div class="sidebar__item__size">
                <label for="tiny">
                    80x80cm
                    <input type="radio" id="tiny">
                </label>
            </div>
        </div>
        <div class="sidebar__item">
            <div class="latest-product__text">
                <h4>Sản phẩm mới</h4>
                <div class="latest-product__slider owl-carousel">
                    <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                            <div class="latest-product__item__pic">
                                <img src="img/latest-product/lp-1.jpg" alt="">
                            </div>
                            <div class="latest-product__item__text">
                                <h6>Gạch lát cầu thang 40x90</h6>
                                <span>300.000 VND</span>
                            </div>
                        </a>
                        <a href="#" class="latest-product__item">
                            <div class="latest-product__item__pic">
                                <img src="img/latest-product/lp-2.jpg" alt="">
                            </div>
                            <div class="latest-product__item__text">
                                <h6>Gạch con sâu lát vỉa hè</h6>
                                <span>165.000 VND</span>
                            </div>
                        </a>
                        <a href="#" class="latest-product__item">
                            <div class="latest-product__item__pic">
                                <img src="img/latest-product/lp-3.jpg" alt="">
                            </div>
                            <div class="latest-product__item__text">
                                <h6>Gạch ốp tường 30x60 Catalan</h6>
                                <span>200.000 VND</span>
                            </div>
                        </a>

                    </div>
                    <div class="latest-prdouct__slider__item">
                        <a href="#" class="latest-product__item">
                            <div class="latest-product__item__pic">
                                <img src="img/latest-product/lp-1.jpg" alt="">
                            </div>
                            <div class="latest-product__item__text">
                                <h6>Gạch lát cầu thang 40x90</h6>
                                <span>300.000 VND</span>
                            </div>
                        </a>
                        <a href="#" class="latest-product__item">
                            <div class="latest-product__item__pic">
                                <img src="img/latest-product/lp-2.jpg" alt="">
                            </div>
                            <div class="latest-product__item__text">
                                <h6>Gạch con sâu lát vỉa hè</h6>
                                <span>165.000 VND</span>
                            </div>
                        </a>
                        <a href="#" class="latest-product__item">
                            <div class="latest-product__item__pic">
                                <img src="img/latest-product/lp-3.jpg" alt="">
                            </div>
                            <div class="latest-product__item__text">
                                <h6>Gạch ốp tường 30x60 Catalan</h6>
                                <span>200.000 VND</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${url}/js/jquery.js"></script>
