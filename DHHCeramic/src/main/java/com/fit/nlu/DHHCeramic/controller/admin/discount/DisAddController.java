package com.fit.nlu.DHHCeramic.controller.admin.discount;

import com.fit.nlu.DHHCeramic.model.Category;
import com.fit.nlu.DHHCeramic.model.Discount;
import com.fit.nlu.DHHCeramic.services.DiscountService;
import com.fit.nlu.DHHCeramic.services.impl.DiscountServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(urlPatterns = {"/Admin/discount/add"})
public class DisAddController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    DiscountService discountService = new DiscountServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/view/form-add-discount.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/AdminLogin");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Discount dis = new Discount();
        dis.setId(Integer.parseInt(request.getParameter("id")));
        dis.setName(request.getParameter("name"));
        dis.setDescription(request.getParameter("description"));
        dis.setDiscountPercent(request.getParameter("discountPercent"));
        dis.setStartDate(java.sql.Date.valueOf(request.getParameter("startDate")));
        dis.setEndDate(java.sql.Date.valueOf(request.getParameter("endDate")));
        discountService.insert(dis);
        response.sendRedirect(request.getContextPath() + "/Admin/discount/list");
    }
}
