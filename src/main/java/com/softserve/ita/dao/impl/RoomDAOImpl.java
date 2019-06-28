package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.RoomDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Room;
import com.softserve.ita.util.HikariCPDataSource;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;

public class RoomDAOImpl implements RoomDAO {

    private static final Logger logger = LoggerFactory.getLogger(RoomDAOImpl.class);

    @Override
    public void add(Room room) throws DAOException {
        PreparedStatement pstmt = null;

        String addQuery = "INSERT INTO room(number, type_room_id, square_room, is_air_conditioner," +
                " is_mini_bar, is_kitchen, is_free) VALUES(?,?,?,?,?,?,?)";
        try(Connection conn = HikariCPDataSource.getConnection()
        ){
            pstmt = conn.prepareStatement(addQuery);
            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ

            pstmt.setString(1,room.getNumber());
            pstmt.setInt(2,room.getIdRoomType());
            pstmt.setInt(3,room.getSquare());
            pstmt.setBoolean(4,room.isAirConditioner());
            pstmt.setBoolean(5,room.isMiniBar());
            pstmt.setBoolean(6,room.isKitchen());
            pstmt.setBoolean(7,room.isFree());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't added room");
            } else logger.info("Room was added successful");
        }catch (SQLException  e){
            logger.error("Cannot add room to database", e);
            throw new DAOException(e.getMessage(), e);
        }finally {
            if(pstmt != null){
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    logger.error("Cannot close prepare statement");
                }
            }
        }
    }

    @Override
    public List<Room> select() throws DAOException {
        Statement stmt = null;
        List rooms = new ArrayList<Room>();

        String selectQuery = "SELECT number, name, number_of_room, number_of_bed, square_room, is_air_conditioner, " +
                " is_mini_bar, is_kitchen, is_free FROM room " +
                "RIGHT JOIN room_type rt on room.type_room_id = rt.id";
        ResultSet rs = null;

        try (Connection conn = HikariCPDataSource.getConnection()) {

            stmt = conn.createStatement();
            //pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ
            rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                rooms.add(new Room(rs.getString("number"), rs.getInt("square_room"),
                        rs.getBoolean("is_air_conditioner"), rs.getBoolean("is_mini_bar"),
                        rs.getBoolean("is_kitchen"), rs.getBoolean("is_free"),
                        rs.getString("name"), rs.getInt("number_of_room"),
                        rs.getInt("number_of_bed")));
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
        return rooms;
    }

    @Override
    public void delete(String number) throws DAOException {

        PreparedStatement pstmt = null;

        String deleteQuery = "DELETE FROM room WHERE number = ?";

        try (Connection conn = HikariCPDataSource.getConnection()) {

            pstmt = conn.prepareStatement(deleteQuery);

            pstmt.setString(1, number);

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
    public void update(Room room) throws DAOException {

        PreparedStatement pstmt = null;

        String updateQuery = "UPDATE room " +
                "SET number = ?, square_room= ?, is_air_conditioner = ?,  is_mini_bar = ?," +
                "is_kitchen = ?, is_free=? WHERE number = ?";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(updateQuery);

            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ

            pstmt.setString(1, room.getNumber());
            pstmt.setInt(2, room.getSquare());
            pstmt.setBoolean(3, room.isAirConditioner());
            pstmt.setBoolean(4, room.isMiniBar());
            pstmt.setBoolean(5, room.isKitchen());
            pstmt.setBoolean(6, room.isFree());
            pstmt.setString(7, room.getNumber());

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
