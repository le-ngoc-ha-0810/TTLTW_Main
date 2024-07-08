package com.fit.nlu.DHHCeramic.controller.admin.discount;

import com.fit.nlu.DHHCeramic.model.Blog;
import com.fit.nlu.DHHCeramic.model.Discount;
import com.fit.nlu.DHHCeramic.services.DiscountService;
import com.fit.nlu.DHHCeramic.services.impl.DiscountServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;

@WebServlet(urlPatterns = {"/Admin/discount/edit"})
public class DisEditController extends HttpServlet {
    DiscountService discountService = new DiscountServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Discount discount = discountService.get(Integer.parseInt(id));
        request.setAttribute("discount", discount);
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            request.getRequestDispatcher("/view/admin/view/editDiscount.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/AdminLogin");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Discount discount = new Discount();
        discount.setId(Integer.parseInt(request.getParameter("id")));
        discount.setName(request.getParameter("name"));
        discount.setDescription(request.getParameter("description"));
        discount.setDiscountPercent(request.getParameter("discountPercent"));
        discount.setStartDate(java.sql.Date.valueOf(request.getParameter("startDate")));
        discount.setEndDate(java.sql.Date.valueOf(request.getParameter("endDate")));
        discountService.edit(discount);
        response.sendRedirect(request.getContextPath() + "/Admin/discount/list");
    }
}
