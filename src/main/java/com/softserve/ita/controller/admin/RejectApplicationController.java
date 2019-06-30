package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.impl.ApplicationDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/reject")
public class RejectApplicationController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("reject");
        int id = Integer.parseInt(String.valueOf(request.getSession(false).getAttribute("id_application")));
        try {
            boolean isDeletedApplication = new ApplicationDAOImpl().delete(id);
            if(isDeletedApplication) {
                response.sendRedirect("/admin");
            }else {
                System.out.println("Can`t delete application");
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
