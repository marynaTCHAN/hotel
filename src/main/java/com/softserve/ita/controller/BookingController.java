package com.softserve.ita.controller;


import com.softserve.ita.dao.ApplicationDAO;
import com.softserve.ita.dao.impl.ApplicationDAOImpl;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Application;
import com.softserve.ita.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/booking")
public class BookingController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        boolean isAirConditioner = false;
        boolean isParking = false;
        boolean isGym = false;
        boolean isSpa = false;
        boolean isPool = false;
        String dateOfArrival = req.getParameter("date-arrival");
        String dateDeparture = req.getParameter("date-departure");
        String numberPeople = req.getParameter("number-people");
        String numberOfRoom = req.getParameter("number-room");
        String square = req.getParameter("square");
        String feeding = req.getParameter("feeding");
        String[] comforts = req.getParameterValues("comfort");

        for (String comfort : comforts) {
            switch (comfort){
                case "is-air-conditioner":
                    isAirConditioner = true;
                    break;
                case "is-parking":
                    isParking = true;
                    break;
                case "is-gym":
                    isGym = true;
                    break;
                case "is-spa":
                    isSpa = true;
                    break;
                case "is-pool":
                    isPool = true;
                    break;
            }
        }
        HttpSession session = req.getSession(true);
        int userId = (Integer) session.getAttribute("userId");
        Application application = new Application(userId,
                dateOfArrival,
                dateDeparture,
                Integer.parseInt(numberPeople),
                Integer.parseInt(numberOfRoom),
                Integer.parseInt(square),
                feeding,
                isAirConditioner,
                isParking,
                isGym,
                isSpa,
                isPool
        );
        System.out.println(application);

        boolean isAddedNewApplication;
        ApplicationDAO applicationDAO = new ApplicationDAOImpl();
        try {
            isAddedNewApplication = applicationDAO.add(application);
            if(isAddedNewApplication){

            }else{
                throw new ServletException();
            }
        } catch (DAOException e) {
            e.printStackTrace();
        }

    }
}
