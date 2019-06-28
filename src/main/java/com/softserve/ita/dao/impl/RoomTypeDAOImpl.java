package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.RoomTypeDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.RoomType;
import com.softserve.ita.util.HikariCPDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoomTypeDAOImpl implements RoomTypeDAO {


    private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);

    @Override
    public void add(RoomType room_type) throws DAOException {

        PreparedStatement pstmt = null;

        String insertQuery = "INSERT INTO room_type(name,number_of_room, number_of_bed) VALUES(?,?,?)";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(insertQuery);
            pstmt.setString(1, room_type.getName());
            pstmt.setInt(2, room_type.getNumberOfRoom());
            pstmt.setInt(3, room_type.getNumberOfBed());
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
    public List<RoomType> select() throws DAOException {

        Statement stmt = null;
        List roomTypes = new ArrayList<RoomType>();

        String selectQuery = "SELECT id, name, number_of_room, number_of_bed FROM room_type";
        ResultSet rs = null;

        try (Connection conn = HikariCPDataSource.getConnection()) {

            stmt = conn.createStatement();
            rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                roomTypes.add(new RoomType(rs.getInt("id"),
                        rs.getString("name"), rs.getInt("numberOfRoom"),
                        rs.getInt("numberOfBed")));
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
        return roomTypes;
    }


    @Override
    public void delete(RoomType room_type) throws DAOException {

        PreparedStatement pstmt = null;

        String deleteQuery = "DELETE FROM room_type WHERE name = ?";

        try (Connection conn = HikariCPDataSource.getConnection()) {

            pstmt = conn.prepareStatement(deleteQuery);


            pstmt.setString(1, room_type.getName());

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
    public void update(RoomType room_type) throws DAOException {

        PreparedStatement pstmt = null;

        String updateQuery = "UPDATE room_type " +
                "SET name = ?, number_of_room= ?, number_of_bed = ? " +
                "WHERE name = ?";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(updateQuery);

            pstmt.setString(1, room_type.getName());
            pstmt.setInt(2, room_type.getNumberOfRoom());
            pstmt.setInt(3, room_type.getNumberOfBed());
            pstmt.setString(4, room_type.getName());
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


}
