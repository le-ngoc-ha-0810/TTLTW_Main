package com.fit.nlu.DHHCeramic.controller.admin.discount;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fit.nlu.DHHCeramic.services.DiscountService;
import com.fit.nlu.DHHCeramic.services.impl.DiscountServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = {"/Admin/discount/deleteSelected"})
public class DeleteSelectedDisController extends HttpServlet {
    DiscountService discountService = new DiscountServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        String requestData = request.getReader().lines().collect(Collectors.joining());
        String[] selectedIds = mapper.readValue(requestData, String[].class);

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            String username = (String) session.getAttribute("username");
            if (selectedIds != null && selectedIds.length > 0) {
                for (String id : selectedIds) {
                    int productId = Integer.parseInt(id);
                    discountService.delete(productId);
                    System.out.println(username);
                }
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("{ \"message\": \"Xóa discount đã chọn thành công\" }");
            } else {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Không có discount được chọn để xóa");
            }
        } else {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Bạn cần đăng nhập để thực hiện thao tác này");
        }
    }
}
