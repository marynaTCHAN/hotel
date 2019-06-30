package com.softserve.ita.controller;

import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/login")
public class LoginController extends HttpServlet  {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("loginEmail");
        String password = req.getParameter("loginPsw");
        HttpSession session = req.getSession();
        User user = null;
        try {
            user = new UserDAOImpl().getUser(email, password);
            if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
                if(user.getRole().equals("admin")){
                    session.setAttribute("admin", user);
                    resp.sendRedirect("/admin");
                }else {
                   req.setAttribute("user", user);
                    req.getRequestDispatcher("userPage").forward(req, resp);
                }
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }

        }
    }
