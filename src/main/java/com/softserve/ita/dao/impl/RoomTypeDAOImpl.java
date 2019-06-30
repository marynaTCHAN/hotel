package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.RoomTypeDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.RoomType;
import com.softserve.ita.model.User;
import com.softserve.ita.util.HikariCPDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RoomTypeDAOImpl implements RoomTypeDAO {


    private static final Logger logger = LoggerFactory.getLogger(RoomTypeDAOImpl.class);

    @Override
    public boolean add(RoomType room_type) throws DAOException {

        PreparedStatement pstmt = null;

        String insertQuery = "INSERT INTO room_type(name,number_of_room, number_of_bed, descrption) VALUES(?,?,?,?)";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(insertQuery);
            pstmt.setString(1, room_type.getName());
            pstmt.setInt(2, room_type.getNumberOfRoom());
            pstmt.setInt(3, room_type.getNumberOfBed());
            pstmt.setString(4, room_type.getDescriptions());

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
    public List<RoomType> select() throws DAOException {

        Statement stmt = null;
        List roomTypes = new ArrayList<RoomType>();

        String selectQuery = "SELECT id, name, number_of_room, number_of_bed, descrption " +
                "FROM room_type";
        ResultSet rs = null;

        try (Connection conn = HikariCPDataSource.getConnection()) {

            stmt = conn.createStatement();
            rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                roomTypes.add(new RoomType(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("number_of_room"),
                        rs.getInt("number_of_bed"),
                        rs.getString("descrption"))
                );
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
    public boolean delete(int idRoomType) throws DAOException {

        PreparedStatement pstmt = null;

        String deleteQuery = "DELETE FROM room_type WHERE id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()) {

            pstmt = conn.prepareStatement(deleteQuery);
            pstmt.setInt(1, idRoomType);

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
    public void update(RoomType room_type) throws DAOException {

        PreparedStatement pstmt = null;

        String updateQuery = "UPDATE room_type " +
                "SET name = ?, number_of_room= ?, number_of_bed = ?, descrption = ? " +
                "WHERE id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(updateQuery);
            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");

            pstmt.setString(1, room_type.getName());
            pstmt.setInt(2, room_type.getNumberOfRoom());
            pstmt.setInt(3, room_type.getNumberOfBed());
            pstmt.setString(4, room_type.getDescriptions());
            pstmt.setInt(5, room_type.getId());
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
    public RoomType getByName(String name) throws DAOException {
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String query = "SELECT * FROM room_type where name = ?";

        try(Connection conn = HikariCPDataSource.getConnection()){

            stmt = conn.prepareStatement(query);
            stmt.setString(1, name);
            rs = stmt.executeQuery();

            if(rs.next()){
                return new RoomType(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("number_of_room"),
                        rs.getInt("number_of_bed"),
                        rs.getString("descrption")
                );

            }else{
                return new RoomType();
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
