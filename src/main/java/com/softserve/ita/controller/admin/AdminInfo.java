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
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/update_info")
public class AdminInfo extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nameUpd =  req.getParameter("nameUpd");
        String surnameUpd = req.getParameter("surnameUpd");
        String emailUpd = req.getParameter("emailUpd");
        String phoneUpd = req.getParameter("phoneUpd");
        String addressUpd = req.getParameter("addressUpd");
        String pswUpd = req.getParameter("pswUpd");

        HttpSession session = req.getSession(false);
        int userId = (Integer) session.getAttribute("userId");

        User user = new User(userId, emailUpd, pswUpd, "user", nameUpd, surnameUpd, phoneUpd, addressUpd);


        boolean isUpdatedUser;
        UserDAO userDAO = new UserDAOImpl();
        try {
            isUpdatedUser = userDAO.update(user);
            if(isUpdatedUser){
                session.setAttribute("admin",user);
                resp.sendRedirect("/admin");
            }else{
                throw new ServletException();
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
