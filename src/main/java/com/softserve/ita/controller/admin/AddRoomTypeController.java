package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.RoomTypeDAO;
import com.softserve.ita.dao.UserDAO;
import com.softserve.ita.dao.impl.RoomTypeDAOImpl;
import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.RoomType;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/add_room_type")
public class AddRoomTypeController extends  HttpServlet{

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String type = req.getParameter("type-modal");
            int numberOfRoom = Integer.parseInt(req.getParameter("number-of-room-modal"));
            int numberOfBed = Integer.parseInt(req.getParameter("number-of-bed-modal"));
            String description =  req.getParameter("descriptionOne");

            RoomTypeDAO roomTypeDAO = new RoomTypeDAOImpl();
            try {
                boolean isAddedNewRoomType = roomTypeDAO.add(new RoomType(type, numberOfRoom, numberOfBed, description));
                if(isAddedNewRoomType) {
                    resp.sendRedirect("/admin");
                }else {
                    System.out.println("Can`t added new room type.");
                }
            } catch (DAOException e) {
                e.printStackTrace();
            }
        }
    }


