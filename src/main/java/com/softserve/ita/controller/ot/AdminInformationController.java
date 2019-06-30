package com.softserve.ita.controller.ot;

import com.softserve.ita.dao.ApplicationDAO;
import com.softserve.ita.dao.impl.ApplicationDAOImpl;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/admin/info2")
public class AdminInformationController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("I'm here");
        User admin = (User) request.getSession(false).getAttribute("admin");
        request.setAttribute("adminInfo", admin);
        request.getRequestDispatcher("admin/info.jsp").forward(request,response);
    }
}
