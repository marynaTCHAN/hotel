package com.softserve.ita.controller.ot;

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
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ApplicationFromUserController", urlPatterns = "/admin/application_from_users")
public class ApplicationFromUserController extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);

  }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Application get");
        PrintWriter writer = response.getWriter();
        writer.println("something");
        writer.println("something");
        writer.println("something");
        writer.println("something");
        writer.println("something");
        writer.println("something");
        writer.println("something");
        writer.println("something");
        writer.println("something");
        writer.println("something");
        ApplicationDAO applicationDAO = new ApplicationDAOImpl();
        try {
            List<Application> applications = applicationDAO.select();
            request.getServletContext().setAttribute("applications", applications);
            request.getRequestDispatcher("/admin/application_from_users.jsp").forward(request, response);
            //request.getRequestDispatcher("../view/admin/application_from_users.jsp").forward(request,response);
            //response.sendRedirect("../view/admin/application_from_users.jsp");
            System.out.println("APP");
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }


}
