<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:url value="/view/client/static" var="url"></c:url>
<%
    String alert = (String) request.getAttribute("alert");
%>

<!-- Css Styles -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="${url}/css/font-awesome.min.css" type="text/css">
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
                            <li><a href="${pageContext.request.contextPath}/view/client/view/index.jsp">Trang chủ</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/shop-grid.jsp">Sản phẩm</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/blog.jsp">Tin tức</a></li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/contact.jsp">Liên hệ</a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/view/client/view/help.jsp">Hỗ trợ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul style="float: left">
                            <li>
                                <c:url value="${sessionScope.account.avatar}"
                                       var="imgUrl"></c:url>
                                <c:choose>
                                <c:when test="${sessionScope.account.username==null}">
                                <a class="active"
                                   href="${pageContext.request.contextPath}/view/client/view/login.jsp"><i
                                        class="fa fa-user"></i> Đăng nhập</a>
                                </c:when>
                                <c:otherwise>
                                <a href="${pageContext.request.contextPath }/member/myAccount?id=${sessionScope.account.id}"
                                   class="header__navbar-user-name text"
                                   style="display: contents;"><img src="${imgUrl}"
                                                                   style="width:24px;height:24px;border-radius: 50%;"> ${sessionScope.account.username}<i
                                        class="fas fa-chevron-down" style="padding-left: 6px;"></i></a>
                                </c:otherwise>
                                </c:choose>
                                <ul class="header__cart__dropdown">
                                    <li><a href="${pageContext.request.contextPath}/view/client/view/account.jsp"><i
                                            class="fa fa-user"></i> Tài khoản</a></li>
                                    <li><a href="#"><i class="fa fa-gear"></i> Cài đặt</a></li>
                                    <li><a href="#"><i class="fa fa-receipt"></i> Đơn mua</a></li>
                                    <li><a href="${pageContext.request.contextPath }/logout"><i
                                            class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a></li>
                                </ul>
                            <li>
                                <c:choose>
                                <c:when test="${sessionScope.account.username==null}">
                            <li><a href="${pageContext.request.contextPath}/view/client/view/register.jsp"><i
                                    class="fa fa-user"></i> Đăng ký</a></li>
                            </c:when>
                            <c:otherwise>
                                <li></li>
                            </c:otherwise>
                            </c:choose>

                            <li><a href="${pageContext.request.contextPath}/view/client/view/shoping-cart.jsp"><i
                                    class="fa fa-shopping-bag"> <c:set var="count" value="${0}"/></i>
                                <c:forEach items="${sessionScope.cart}" var="map">
                                    <c:set var="count" value="${count + 1}"/>
                                </c:forEach>
                                <span>${count }</span></a>

                                <c:choose>
                                    <c:when test="${sessionScope.account.username==null}">
                                        <ul class="header__cart__dropdown_cart">
                                            <li>Hãy đăng nhập để xem giỏ hàng <br></li>
                                        </ul>
                                    </c:when>
                                    <c:otherwise>
                                        <ul style="margin-left: 180px !important" class="header__cart__dropdown_cart">
                                            <li>Giỏ hàng đang trống, hãy mua sắm nhé!!!<br></li>
                                        </ul>
<%--                                        <div class="header__has-cart" id="removeCart">--%>
<%--                                            <ul class="list-unstyled badge-open mCustomScrollbar header__cart-list"--%>
<%--                                                data-mcs-theme="minimal-dark" id="contentCart">--%>
<%--                                                <c:forEach items="${sessionScope.cart}" var="map">--%>
<%--                                                    <li class="header__cart-item header__cart-view">--%>
<%--                                                        <c:url--%>
<%--                                                                value="${map.value.product.image}"--%>
<%--                                                                var="imgUrl"></c:url><a class="header__cart-link"--%>
<%--                                                                                        href="${pageContext.request.contextPath}/product/detail?id=${map.value.product.id}">--%>
<%--                                                        <img src="${imgUrl}" alt="" width="10"--%>
<%--                                                             height="20" class="header__cart-img">--%>
<%--                                                        <div class="overflow-h header__cart-name">--%>
<%--                                                            <span>${map.value.product.name }</span>--%>
<%--                                                            <small>${map.value.quantity }--%>
<%--                                                                * ${map.value.product.salePrice }đ </small>--%>
<%--                                                        </div>--%>
<%--                                                        <a--%>
<%--                                                                href="${pageContext.request.contextPath}/cart/remove?pId=${map.value.product.id} ">--%>
<%--                                                            <button--%>
<%--                                                                    type="button" class="close">×--%>
<%--                                                            </button>--%>
<%--                                                        </a>--%>

<%--                                                    </a>--%>
<%--                                                    </li>--%>
<%--                                                </c:forEach>--%>
<%--                                            </ul>--%>
<%--                                            <footer class="header__cart-footer">--%>
<%--                                                <a href="${pageContext.request.contextPath }/member/cart"--%>
<%--                                                   class="header__cart-footer-btn">Xem tất cả</a>--%>
<%--                                            </footer>--%>
<%--                                        </div>--%>
                                    </c:otherwise>
                                </c:choose>

                            </li>
                        </ul>
                        <!-- <div class="header__cart__price">item: <span>$150.00</span></div>-->
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