package com.softserve.ita.controller.admin;


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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin")
public class AdminPageController extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String id_application = request.getParameter("id");
        session.setAttribute("id_application", id_application);
        System.out.println(id_application);

        String id_user = request.getParameter("id_user");
        session.setAttribute("id_user", id_user);
        System.out.println(id_user);

        String id_room_type = request.getParameter("id_room_type");
        session.setAttribute("id_room_type", id_room_type);
        System.out.println(id_room_type);

        String id_room = request.getParameter("id_room");
        session.setAttribute("id_room", id_room);
        System.out.println(id_room);
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User admin = (User)request.getSession(false).getAttribute("admin");
        request.setAttribute("adminInfo", admin);
        ApplicationDAO applicationDAO = new ApplicationDAOImpl();
        try {
            List<Application> applications = applicationDAO.select();
            request.setAttribute("applications", applications);
        } catch (DAOException e) {
            e.printStackTrace();
        }
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
        request.getRequestDispatcher("/admin_page.jsp").forward(request,response);
    }


    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException {

            String id = req.getParameter("id");
            System.out.println("fggfgf");
           // System.out.println(Integer.parseInt(req.getParameter("id")));
           //System.out.println("I`M HERE");
           // ApplicationDAO applicationDAO = new ApplicationDAOImpl();
           // applicationDAO.delete((Integer.parseInt(req.getParameter("id"))));
            //System.out.println("ok");
            // int accountId = Integer.valueOf(req.getParameter("docId"));

          /*  accountService.deleteAccount(accountId);

            resp.sendRedirect("/admin/doctor");

        } catch (DAOException | IOException e) {
            throw new ServletException(e.getMessage(), e);
        }*/

    }



}
