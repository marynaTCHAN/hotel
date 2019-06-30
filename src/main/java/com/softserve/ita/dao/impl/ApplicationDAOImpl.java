package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.ApplicationDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Application;
import com.softserve.ita.model.User;
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

        String insertQuery = "INSERT INTO apllication(user_id,date_of_arrival,date_departure," +
                "room_type, number_of_people, number_of_room, square, feeding, is_air_conditioner, " +
                "is_parking, is_gym, is_SPA, is_pool, is_accepted ) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";



        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(insertQuery);
            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            pstmt.setInt(1, application.getUserId());
            pstmt.setString(2, application.getDateOfArrival());
            pstmt.setString(3, application.getDateDeparture());
            pstmt.setString(4, application.getTypeOfRoom());
            pstmt.setInt(5, application.getNumberOfPeople());
            pstmt.setInt(6, application.getNumberOfRoom());
            pstmt.setInt(7, application.getSquare());
            pstmt.setString(8, application.getFeeding());
            pstmt.setBoolean(9, application.isAirConditioner());
            pstmt.setBoolean(10, application.isParking());
            pstmt.setBoolean(11, application.isGym());
            pstmt.setBoolean(12, application.isSPA());
            pstmt.setBoolean(13, application.isPool());
            pstmt.setBoolean(14, application.isAccepted());

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

        String selectQuery = "\n" +
                "SELECT apllication.id, contact.name, contact.surname,\n" +
                "       date_of_arrival, date_departure, room_type, number_of_people,\n" +
                "                number_of_room, square, feeding, is_air_conditioner, is_parking,\n" +
                "                is_gym, is_SPA, is_pool, is_accepted FROM apllication, user, contact\n" +
                "WHERE user.id = apllication.user_id && contact.user_id = user.id && is_accepted = 0;" ;
        ResultSet rs = null;

        try (Connection conn = HikariCPDataSource.getConnection()) {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                applications.add(new Application(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("surname"),
                        rs.getString("date_of_arrival"),
                        rs.getString("date_departure"),
                        rs.getString("room_type"),
                        rs.getInt("number_of_people"),
                        rs.getInt("number_of_room"),
                        rs.getInt("square"),
                        rs.getString("feeding"),
                        rs.getBoolean("is_air_conditioner"),
                        rs.getBoolean("is_parking"),
                        rs.getBoolean("is_gym"),
                        rs.getBoolean("is_SPA"),
                        rs.getBoolean("is_pool"),
                         rs.getBoolean("is_accepted")
                ));
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
    public boolean delete(int idApplication) throws DAOException {

        PreparedStatement pstmt = null;

        String deleteQuery = "DELETE FROM apllication WHERE id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()) {

            pstmt = conn.prepareStatement(deleteQuery);

            pstmt.setInt(1, idApplication);

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
    public void update(Application application) throws DAOException {
        PreparedStatement pstmt = null;

        String updateQuery = "UPDATE apllication " +
                "SET is_accepted = true WHERE id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(updateQuery);

            pstmt.setInt(1, application.getId());
            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't added room");
            } else logger.info("Room was added successful");

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
    public Application getApplication(int idApplication) throws DAOException {
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String query = "SELECT * from apllication where id = ?";

        try(Connection conn = HikariCPDataSource.getConnection()){

            stmt = conn.prepareStatement(query);
            stmt.setInt(1, idApplication);
            rs = stmt.executeQuery();

            if(rs.next()){
                return new Application(rs.getInt("id"),
                        rs.getInt("user_id"),
                        rs.getString("date_of_arrival"),
                        rs.getString("date_departure"),
                        rs.getString("room_type"),
                        rs.getInt("number_of_people"),
                        rs.getInt("number_of_room"),
                        rs.getInt("square"),
                        rs.getString("feeding"),
                        rs.getBoolean("is_air_conditioner"),
                        rs.getBoolean("is_parking"),
                        rs.getBoolean("is_gym"),
                        rs.getBoolean("is_SPA"),
                        rs.getBoolean("is_pool"),
                        rs.getBoolean("is_accepted")
                );

            }else{
                return new Application();
            }

        }catch (SQLException e) {
            logger.error("Cannot update user in database", e);
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

    }

}
