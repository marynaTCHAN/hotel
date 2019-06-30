package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.impl.RoomDAOImpl;
import com.softserve.ita.dao.impl.RoomTypeDAOImpl;
import com.softserve.ita.exсeption.DAOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/delete_room")
public class DeleteRoomController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("delete room");
        int idRoom = Integer.parseInt((String) request.getSession(false).getAttribute("id_room"));
        System.out.println(idRoom);
        try {
            boolean idDeletedRoom = new RoomDAOImpl().delete(idRoom);
            if(idDeletedRoom) {
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
