package com.fit.nlu.DHHCeramic.controller.client.authencation;

import com.fit.nlu.DHHCeramic.services.UserService;
import com.fit.nlu.DHHCeramic.services.impl.UserServiceImpl;
import com.fit.nlu.DHHCeramic.util.SecurityUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ChangePasswordController", value = "/member/change-password")
public class ChangePasswordController extends HttpServlet {
    UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/client/view/account.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String rePass = request.getParameter("reNewPassword");
        int id = Integer.parseInt(request.getParameter("id"));
        String alert = "";
        if (userService.get(id).getPassword().equals(SecurityUtils.hash(oldPassword))) {
            if (newPassword.equals(rePass)) {
                userService.changePassword(id, SecurityUtils.hash(newPassword));
                alert = "Change password success";
            } else {
                alert = "New password and re-new password not match";
            }
        } else {
            alert = "Old password not match";
        }
        request.setAttribute("id", id);
        response.sendRedirect(request.getContextPath() + "/member/myAccount?id=" + id + "&alert=" + alert);
    }
}
