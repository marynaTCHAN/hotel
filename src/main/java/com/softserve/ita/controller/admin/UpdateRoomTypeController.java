package com.softserve.ita.controller.admin;

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


@WebServlet("/update_room_type")
public class UpdateRoomTypeController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("update_room type POST");
        int idRoomType = Integer.parseInt(String.valueOf(request.getSession(false).getAttribute("id_room_type")));
        String type = request.getParameter("type-update-modal");
        String numberOfRoom = request.getParameter("number-of-room-update-modal");
        String numberOfBed = request.getParameter("number-of-bed-update-modal");
        String description = request.getParameter("description-update-modal");

        RoomType roomType = new RoomType(idRoomType,
                type,
                Integer.parseInt(numberOfRoom),
                Integer.parseInt(numberOfBed),
                description);
        try {
            new RoomTypeDAOImpl().update(roomType);
            response.sendRedirect("/admin");
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
