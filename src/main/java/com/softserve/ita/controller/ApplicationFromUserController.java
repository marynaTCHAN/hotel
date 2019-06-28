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
import java.io.IOException;
import java.util.List;

@WebServlet("/applicationFromUser")
public class ApplicationFromUserController extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ApplicationDAO applicationDAO = new ApplicationDAOImpl();
        try {
            List<Application> applications = applicationDAO.select();
            request.setAttribute("applications", applications);
            request.getRequestDispatcher("/admin_page.jsp").forward(request,response);

        } catch (DAOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("I'm here");
        User admin = (User)req.getSession(false).getAttribute("admin");
        req.setAttribute("adminInfo",admin);
        req.getRequestDispatcher("admin_page.jsp").forward(req,resp);
    }


}
