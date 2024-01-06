package com.fit.nlu.DHHCeramic.controller.client.product;


import com.fit.nlu.DHHCeramic.model.Product;
import com.fit.nlu.DHHCeramic.services.ProductService;
import com.fit.nlu.DHHCeramic.services.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/product/category")
public class ProductSearchByCategory extends HttpServlet {
    ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int currentPage = 1;
        int productsPerPage = 12;
        if (request.getParameter("page") != null)
            currentPage = Integer.parseInt(
                    request.getParameter("page"));
        List<Product> productList = productService.getProductByPage(currentPage, productsPerPage);
        int numOfProduct = productService.numOfProducts();
        int numOfPages = numOfProduct / productsPerPage;
        if (numOfPages % productsPerPage > 0) {
            numOfPages++;
        }
        String cate_id = request.getParameter("cate_id");
        List<Product> productSearchByCategory = productService.searchByCategory(Integer.parseInt(cate_id));
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        for (Product p : productSearchByCategory) {
            out.println(
                    "                        <div class=\"col-sm-4\">\n" +
                            "                            <div class=\"product-image-wrapper\">\n" +
                            "                                <a href=\"http://localhost:8080/DHHCeramic/product/detail?id=" + p.getId() + "\">\n" +
                            "                                <div class=\"single-products\">\n" +
                            "                                    <div class=\"productinfo text-center\">\n" +
                            "                                        <div class=\"product-img\">\n" +
                            "                                                <img src=\"" + p.getImage() + "\" alt=\"\" id=\"img__sp\"/></div>\n" +
                            "                                        <h4 class=\"home-product-item__name\">" + p.getName() + "</h4>\n" +
                            "                                    </div>\n" +
                            "                                    <div class=\"home-product-item__price\">\n" +
                            "                                        <span class=\"home-product-item__price-old\">" + p.getPrice() + "đ</span>\n" +
                            "                                        <span class=\"home-product-item__price-current\">" + p.getSaleId() + "đ</span>\n" +
                            "                                    </div>\n" +
                            "                                    <div class=\"home-product-item__action\">\n" +
                            "\t\t\t\t\t\t\t\t\t\t\t<span class=\"home-product-item__like home-product-item__like--liked\">\n" +
                            "\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"home-product-item__like-icon-empty far fa-heart\"></i>\n" +
                            "\t\t\t\t\t\t\t\t\t\t\t\t<i class=\"home-product-item__like-icon-fill fas fa-heart\"></i>\n" +
                            "\t\t\t\t\t\t\t\t\t\t\t</span>\n" +
                            "                                        <div class=\"home-product-item__rating\">\n");
            out.println(
                    "                                        </div>\n" +
                            "                                    </div>\n" +
                            "                                    <div class=\"home-product-item__origin\">\n" +
                            "                                        <span class=\"home-product-item__origin-name\">" + p.getManufacture() + "</span>\n" +
                            "                                    </div>\n" +
                            "                                </div>\n" +
                            "                                </a>\n" +
                            "                            </div>\n" +
                            "                        </div>");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
