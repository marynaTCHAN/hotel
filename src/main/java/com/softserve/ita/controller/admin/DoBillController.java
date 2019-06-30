package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.AccountDAO;
import com.softserve.ita.dao.impl.AccountDAOImpl;
import com.softserve.ita.dao.impl.ApplicationDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Bill;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/doBill")
public class DoBillController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(String.valueOf(req.getSession(false).getAttribute("id_application")));
        String roomId = req.getParameter("number-room-uniq");
        String price = req.getParameter("price-room-uniq");
        AccountDAO accountDAO = new AccountDAOImpl();
        Bill bill = new Bill(Integer.parseInt("111"),
                Integer.parseInt(roomId),
                Integer.parseInt(price));
        try {
            boolean isAddedAccount = accountDAO.add(bill);
            new ApplicationDAOImpl().update(new ApplicationDAOImpl().getApplication(id));
            if(isAddedAccount){
                resp.sendRedirect("/admin");
            }
            else {
                System.out.println("not added");
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }

    }

}
