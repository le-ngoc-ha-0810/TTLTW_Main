<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:url value="/view/client/static" var="url"></c:url>
<%
    String alert = (String) request.getAttribute("alert");
%>
<!-- Css Styles -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="${url}/css/style.css" type="text/css">
<!-- Header Section Begin -->
<header class="header">
    <div class="wrap-menu-desktop">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="${pageContext.request.contextPath}/index.jsp"><img src="${url}/img/logo_2.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/index.jsp">Trang chủ</a></li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/shop-grid.jsp">Sản phẩm</a></li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/blog.jsp">Tin tức</a></li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/contact.jsp">Liên hệ</a></li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/help.jsp">Hỗ trợ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul style="margin-right: 15px !important;">
                            <li><a class="active" href="${pageContext.request.contextPath}/view/client/view/login.jsp"><i
                                    class="fa fa-user"></i> Đăng nhập</a>
                                <ul class="header__cart__dropdown">
                                    <li><a href="${pageContext.request.contextPath}/view/client/view/account.jsp"><i
                                            class="fa fa-user"></i> Tài khoản</a></li>
                                    <li><a href="#"><i class="fa fa-gear"></i> Cài đặt</a></li>
                                    <li><a href="#"><i class="fa fa-receipt"></i> Đơn mua</a></li>
                                    <li><a href="${pageContext.request.contextPath }/logout"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a></li>
                                </ul>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/register.jsp"><i class="fa fa-user"></i> Đăng ký</a></li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a>
                                <ul class="header__cart__dropdown_cart">
                                    <li>Hãy đăng nhập để xem giỏ hàng <br></li>
                                </ul>
                            </li>
                        </ul>
                        <!--                        <div class="header__cart__price">item: <span>$150.00</span></div>-->
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->