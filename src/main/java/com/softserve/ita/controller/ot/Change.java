package com.softserve.ita.controller.ot;


import com.softserve.ita.dao.ApplicationDAO;
import com.softserve.ita.dao.RoomDAO;
import com.softserve.ita.dao.RoomTypeDAO;
import com.softserve.ita.dao.UserDAO;
import com.softserve.ita.dao.impl.ApplicationDAOImpl;
import com.softserve.ita.dao.impl.RoomDAOImpl;
import com.softserve.ita.dao.impl.RoomTypeDAOImpl;
import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Application;
import com.softserve.ita.model.Room;
import com.softserve.ita.model.RoomType;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Change", urlPatterns = "/admin/change_information")
public class Change extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("DO POST CHANGE INFORMATION");
      /*  UserDAO userDAO = new UserDAOImpl();
        try {
            List<User> users = userDAO.select();
            request.setAttribute("users", users);
        } catch (DAOException e) {
            e.printStackTrace();
        }
        RoomTypeDAO roomTypeDAO = new RoomTypeDAOImpl();
        try {
            List<RoomType> roomTypes = roomTypeDAO.select();
            System.out.println(roomTypes);
            request.setAttribute("roomTypes", roomTypes);
        } catch (DAOException e) {
            e.printStackTrace();
        }
        RoomDAO roomDAO = new RoomDAOImpl();
        try {
            List<Room> rooms = roomDAO.select();
            request.setAttribute("rooms", rooms);
        } catch (DAOException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/admin/change_information.jsp").forward(request,response);
*/
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       System.out.println("DO GET CHANGE INFORMATION");
        UserDAO userDAO = new UserDAOImpl();
        try {
            List<User> users = userDAO.select();
            request.setAttribute("users", users);
        } catch (DAOException e) {
            e.printStackTrace();
        }
        RoomTypeDAO roomTypeDAO = new RoomTypeDAOImpl();
        try {
            List<RoomType> roomTypes = roomTypeDAO.select();
            System.out.println(roomTypes);
            request.setAttribute("roomTypes", roomTypes);
        } catch (DAOException e) {
            e.printStackTrace();
        }
        RoomDAO roomDAO = new RoomDAOImpl();
        try {
            List<Room> rooms = roomDAO.select();
            request.setAttribute("rooms", rooms);
        } catch (DAOException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("../view/admin/change_information.jsp").forward(request,response);
    }
}
