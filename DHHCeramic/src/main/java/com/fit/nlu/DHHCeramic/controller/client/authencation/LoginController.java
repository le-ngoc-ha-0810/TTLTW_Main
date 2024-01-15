package com.fit.nlu.DHHCeramic.controller.client.authencation;


import com.fit.nlu.DHHCeramic.controller.client.VerifyCaptcha;
import com.fit.nlu.DHHCeramic.model.User;
import com.fit.nlu.DHHCeramic.services.UserService;
import com.fit.nlu.DHHCeramic.services.impl.UserServiceImpl;
import com.fit.nlu.DHHCeramic.util.Constant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            resp.sendRedirect(req.getContextPath() + "/waiting");
            return;
        }
        // Check cookie
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    session = req.getSession(true);
                    session.setAttribute("username", cookie.getValue());
                    resp.sendRedirect(req.getContextPath() + "/waiting");
                    return;
                }
            }
        }
        String alert = req.getParameter("alert");
        req.setAttribute("alert", alert);
        req.getRequestDispatcher("view/client/view/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");

        String password = req.getParameter("password");

        String alertMsg = "";

        if (username.isEmpty() || password.isEmpty()) {
            alertMsg = "Vui lòng không để trống các ô bên dưới!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("/view/client/view/login.jsp").forward(req, resp);
            return;
        }
// get reCAPTCHA request param
        String gRecaptchaResponse = req
                .getParameter("g-recaptcha-response");
        System.out.println(gRecaptchaResponse);
        boolean verify = VerifyCaptcha.verify(gRecaptchaResponse);
        System.out.println(verify);
        UserService service = new UserServiceImpl();

        User user = service.login(username, password);


        if (user != null && verify) {
            HttpSession session = req.getSession(true);
            session.setAttribute("account", user);
            resp.sendRedirect(req.getContextPath() + "/waiting");

        } else {
            alertMsg = "Sai thông tin đăng nhập";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("/view/client/view/login.jsp").forward(req, resp);
        }
    }

//    private void saveRememberMe(HttpServletResponse response, String username) {
//        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, username);
//        cookie.setMaxAge(30 * 60);
//        response.addCookie(cookie);
//    }
}



