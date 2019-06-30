package com.softserve.ita.controller.admin;

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

@WebServlet("/delete_user")
public class DeleteUserController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("delete");
        int idUser = Integer.parseInt((String) request.getSession(false).getAttribute("id_user"));
        System.out.println(idUser);
        try {
            boolean idDeletedUser = new UserDAOImpl().delete(idUser);
            if(idDeletedUser) {
                response.sendRedirect("/admin");
            }
            else {
                System.out.println("Can't delete user.");
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}