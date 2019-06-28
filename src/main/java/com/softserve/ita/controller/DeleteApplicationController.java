package com.softserve.ita.controller;

import com.softserve.ita.dao.ApplicationDAO;
import com.softserve.ita.dao.UserDAO;
import com.softserve.ita.dao.impl.ApplicationDAOImpl;
import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Application;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/deleteApplication")
public class DeleteApplicationController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("emailRegistration");
        String password = req.getParameter("pswRegistration");
        String name = req.getParameter("nameRegistration");
        String surname = req.getParameter("surnameRegistration");
        String phoneNumber = req.getParameter("phoneRegistration");
        String address = req.getParameter("addressRegistration");

        User user = new User(email, password, "user", name, surname, phoneNumber,address);



        ApplicationDAO applicationDAO = new ApplicationDAOImpl();
        Application application = new Application();

    }

}
