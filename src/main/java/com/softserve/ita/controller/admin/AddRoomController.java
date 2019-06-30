package com.softserve.ita.controller.admin;

import com.softserve.ita.dao.RoomDAO;
import com.softserve.ita.dao.impl.RoomDAOImpl;
import com.softserve.ita.dao.impl.RoomTypeDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Room;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add_room")
public class AddRoomController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isAirConditioner =false;
        boolean isMiniBar =false;
        boolean isKitchen = false;
        boolean isFree = false;
        String numberRoom = req.getParameter("number-add");
        String typeRoom = req.getParameter("type-room-add");
        String squareRoom =  req.getParameter("square-add");
        String priceRoom = req.getParameter("price-add");
        String[] comfortsRoom = req.getParameterValues("comfort-add");

        for (String comfort : comfortsRoom) {
            switch (comfort){
                case "air-conditioner-add":
                    isAirConditioner = true;
                    break;
                case "mini-bar-add":
                    isMiniBar = true;
                    break;
                case "kitchen-add":
                    isKitchen = true;
                    break;
                case "is-free-add":
                    isFree = true;
                    break;
            }
        }
        RoomDAO roomDAO = new RoomDAOImpl();
        try {
            int idRoomType = new RoomTypeDAOImpl().getByName(typeRoom).getId();
            Room room =  new Room(numberRoom,
                    idRoomType,
                    Integer.parseInt(squareRoom),
                    Integer.parseInt(priceRoom),
                    isAirConditioner,
                    isMiniBar,
                    isKitchen,
                    isFree);

            boolean isAddedNewRoom = roomDAO.add(room);
            if(isAddedNewRoom) {
                resp.sendRedirect("/admin");
            }else {
                System.out.println("not ok!");
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }
    }
}
