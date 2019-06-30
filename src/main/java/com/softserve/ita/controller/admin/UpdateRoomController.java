package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.RoomDAO;
import com.softserve.ita.dao.impl.RoomDAOImpl;
import com.softserve.ita.dao.impl.RoomTypeDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Room;
import com.softserve.ita.model.RoomType;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update_room")
public class UpdateRoomController  extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("update_room POST");
        boolean isAirConditioner =false;
        boolean isMiniBar =false;
        boolean isKitchen = false;
        boolean isFree = false;
        int idRoom = Integer.parseInt(String.valueOf(request.getSession(false).getAttribute("id_room")));
        String number = request.getParameter("number-update");
        String type = request.getParameter("type-room-update");
        String squareRoom = request.getParameter("square-room-update");
        String priceRoom = request.getParameter("price-room-update");
        String[] comfortsRoom = request.getParameterValues("comforts-update");

        for (String comfort : comfortsRoom) {
            switch (comfort){
                case "air-conditioner-upd":
                    isAirConditioner = true;
                    break;
                case "mini-bar-upd":
                    isMiniBar = true;
                    break;
                case "kitchen-upd":
                    isKitchen = true;
                    break;
                case "is-free-upd":
                    isFree = true;
                    break;
            }
        }

        RoomDAO roomDAO = new RoomDAOImpl();
        try {
            int idRoomType = new RoomTypeDAOImpl().getByName(type).getId();
            Room room =  new Room(
                    idRoom,
                    number,
                    idRoomType,
                    Integer.parseInt(squareRoom),
                    Integer.parseInt(priceRoom),
                    isAirConditioner,
                    isMiniBar,
                    isKitchen,
                    isFree);
            new RoomDAOImpl().update(room);
            response.sendRedirect("/admin");
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
