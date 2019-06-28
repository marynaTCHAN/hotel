package com.softserve.ita.controller;

import com.softserve.ita.dao.RoomDAO;
import com.softserve.ita.dao.impl.RoomDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Room;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/room")
public class AdminRoomController extends HttpServlet {
    private RoomDAO dao;

    @Override
    public void init(){
        dao = new RoomDAOImpl();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        boolean isAirConditioner = false;
        boolean isMiniBar = false;
        boolean isKitchen = false;

        String type = req.getParameter("type");
        Integer numberOfRoom = Integer.valueOf(req.getParameter("number-of-room"));
        Integer numberOfBed = Integer.valueOf(req.getParameter("number-of-bed"));
        Integer square = Integer.valueOf(req.getParameter("square"));
        String[] comforts = req.getParameterValues("comfort");

        for (String comfort : comforts) {
            if(comfort.equals("air-conditioner")){
                isAirConditioner = true;
            }else if(comfort.equals("mini-bar")){
                isMiniBar = true;
            }else if(comfort.equals("kitchen")){
                isKitchen = true;
            }
        }

        /*Room room = new Room(type,numberOfRoom,numberOfBed,square,isAirConditioner,isMiniBar,isKitchen);*/

       /* try {
            boolean result = dao.addRoom(room);
            if(result){
                resp.sendRedirect();
            }else throw new DAOException();

        } catch (DAOException e) {
            e.printStackTrace();
        }*/
    }
}