package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.impl.RoomTypeDAOImpl;
import com.softserve.ita.dao.impl.UserDAOImpl;
import com.softserve.ita.exсeption.DAOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete_room_type")
public class DeleteRoomTypeController  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("delete room type");
        int idRoomType = Integer.parseInt((String) request.getSession(false).getAttribute("id_room_type"));
        System.out.println(idRoomType);
        try {
            boolean idDeletedRoomType = new RoomTypeDAOImpl().delete(idRoomType);
            if(idDeletedRoomType) {
                response.sendRedirect("/admin");
            }
            else {
                System.out.println("Can't delete room type.");
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
