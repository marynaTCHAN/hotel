package com.softserve.ita.controller.ot;


import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Information", urlPatterns = "/admin/info")
public class Information extends HttpServlet {

        public void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            /*System.out.println("I'm here");
            User admin = (User) request.getSession(false).getAttribute("admin");
            request.setAttribute("adminInfo", admin);
            request.getRequestDispatcher("../view/admin/info.jsp").forward(request,response);*/

        }

        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            System.out.println("I'm here");
            User admin = (User) request.getSession(false).getAttribute("admin");
            request.setAttribute("adminInfo", admin);
            request.getRequestDispatcher("../view/admin/info.jsp").forward(request,response);
        }


    }

 /*   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("I'm here");
        User admin = (User) request.getSession(false).getAttribute("admin");
        request.setAttribute("adminInfo", admin);
        request.getRequestDispatcher("../view/admin/application_from_users.jsp").forward(request,response);
    }*/


    /*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("I'm here");
        User admin = (User) request.getSession(false).getAttribute("admin");
        request.setAttribute("adminInfo", admin);
        request.getRequestDispatcher("info.jsp").forward(request,response);
    }*/

