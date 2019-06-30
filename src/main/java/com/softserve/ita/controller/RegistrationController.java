package com.softserve.ita.controller;

import com.softserve.ita.dao.UserDAO;
import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registration")
public class RegistrationController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("emailRegistration");
        String password = req.getParameter("pswRegistration");
        String name = req.getParameter("nameRegistration");
        String surname = req.getParameter("surnameRegistration");
        String phoneNumber = req.getParameter("phoneRegistration");
        String address = req.getParameter("addressRegistration");

        User user = new User(email, password, "user", name, surname, phoneNumber,address);


        boolean isAddedNewUser;
        UserDAO userDAO = new UserDAOImpl();
        try {
            isAddedNewUser=userDAO.add(user);
            if(isAddedNewUser){
                resp.sendRedirect("my_profile.jsp#sign-in");
            }else{
                throw new ServletException();
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }

}
