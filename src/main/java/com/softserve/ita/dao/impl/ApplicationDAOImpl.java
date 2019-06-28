package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.ApplicationDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Application;
import com.softserve.ita.util.HikariCPDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ApplicationDAOImpl implements ApplicationDAO {

    private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);

    @Override
    public boolean add(Application application) throws DAOException {
        PreparedStatement pstmt = null;

        String insertQuery = "INSERT INTO apllication(user_id,date_of_arrival,date_departure,"
                + " number_of_people, number_of_room, square, feeding, is_air_conditioner, " +
                "is_parking, is_gym, is_SPA, is_pool ) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";



        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(insertQuery);
            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ

            pstmt.setInt(1, application.getUserId());
            pstmt.setString(2, application.getDateOfArrival());
            pstmt.setString(3, application.getDateDeparture());
            pstmt.setInt(4, application.getNumberOfPeople());
            pstmt.setInt(5, application.getNumberOfRoom());
            pstmt.setInt(6, application.getSquare());
            pstmt.setString(7, application.getFeeding());
            pstmt.setBoolean(8, application.isAirConditioner());
            pstmt.setBoolean(9, application.isParking());
            pstmt.setBoolean(10, application.isGym());
            pstmt.setBoolean(11, application.isSPA());
            pstmt.setBoolean(12, application.isPool());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't added room");
            } else logger.info("Room was added successful");

            return (check != 0);
        } catch (SQLException e) {
            logger.error("Cannot add type of room to database", e);
            throw new DAOException(e.getMessage(), e);
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    logger.error("Cannot close prepare statement");
                }
            }
        }
    }

    @Override
    public List<Application> select() throws DAOException {
        Statement stmt = null;
        List applications = new ArrayList<Application>();

        String selectQuery = "SELECT user_id, date_of_arrival, date_departure, number_of_people," +
                "number_of_room, square, feeding, is_air_conditioner, is_parking," +
                "is_gym, is_SPA, is_pool FROM apllication";
        ResultSet rs = null;

        try (Connection conn = HikariCPDataSource.getConnection()) {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                applications.add(new Application(rs.getInt("user_id"), rs.getString("date_of_arrival"),
                        rs.getString("date_departure"), rs.getInt("number_of_people"),
                        rs.getInt("number_of_room"), rs.getInt("square"),
                        rs.getString("feeding"), rs.getBoolean("is_air_conditioner"),
                        rs.getBoolean("is_parking"), rs.getBoolean("is_gym"),
                        rs.getBoolean("is_SPA"), rs.getBoolean("is_pool")));
            }
            rs.close();
        } catch (SQLException e) {
            logger.error("Cannot add type of room to database", e);
            throw new DAOException(e.getMessage(), e);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    logger.error("Cannot close prepare statement");
                }
            }
        }
        return applications;
    }

    @Override
    public boolean delete(Application application) throws DAOException {
        return false;
    }


}
