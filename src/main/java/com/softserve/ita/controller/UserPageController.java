package com.softserve.ita.controller;

import com.softserve.ita.dao.ApplicationDAO;
import com.softserve.ita.dao.impl.ApplicationDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Application;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet("/userPage")
public class UserPageController extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("I'm here");
        User user = (User) request.getAttribute("user");
        request.getSession(true).setAttribute("userId", user.getId());
        request.getSession(false).setAttribute("user", user);
        request.setAttribute("userInfo", user);


        request.getRequestDispatcher("user_page.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("I'm here");
        User user = (User) req.getSession(false).getAttribute("user");
        req.setAttribute("userInfo", user);

        req.getRequestDispatcher("user_page.jsp").forward(req, resp);
    }
}
