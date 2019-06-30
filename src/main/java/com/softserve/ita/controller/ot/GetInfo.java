package com.softserve.ita.controller.ot;

import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/getInfo")
public class GetInfo extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("update_user GET");
        int idUser = Integer.parseInt(String.valueOf(request.getSession(false).getAttribute("id_user")));
        try {
            User user_table = new UserDAOImpl().getUserById(idUser);
            request.setAttribute("user_table", user_table);
            request.getRequestDispatcher("/admin_page.jsp").forward(request,response);
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }

}
