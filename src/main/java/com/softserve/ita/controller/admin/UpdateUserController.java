package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update_user")
public class UpdateUserController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("update_user POST");
        int idUser = Integer.parseInt(String.valueOf(request.getSession(false).getAttribute("id_user")));
        String nameUser = request.getParameter("name-update-modal");
        String surnameUser = request.getParameter("surname-update-modal");
        String emailUser = request.getParameter("email-update-modal");
        String phoneUser = request.getParameter("phone-update-modal");
        String addressUser = request.getParameter("address-update-modal");
        String passowrdUser = request.getParameter("psw-update-modal");
        User user = new User(idUser, emailUser, passowrdUser, "user", nameUser, surnameUser, phoneUser,
                addressUser);
        try {
            new UserDAOImpl().update(user);
            response.sendRedirect("/admin");
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }

}
