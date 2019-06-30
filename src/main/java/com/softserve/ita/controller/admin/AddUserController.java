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


@WebServlet("/add_user")
public class AddUserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name-user-modal");
        String surname = req.getParameter("surname-user-modal");
        String email =  req.getParameter("email-user-modal");
        String phoneNumber = req.getParameter("phone-user-modal");
        String address = req.getParameter("address-user-modal");
        String password = req.getParameter("psw-user-modal");

        UserDAO userDAO = new UserDAOImpl();
        User user = new User(email, password, "user", name,
                surname, phoneNumber, address);

        try {
            boolean isAddedUser = userDAO.add(user);
            if(isAddedUser) {
                resp.sendRedirect("/admin");
            }else {
                System.out.println("not ok!");
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
