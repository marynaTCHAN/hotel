package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.AccountDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Bill;
import com.softserve.ita.util.HikariCPDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class AccountDAOImpl implements AccountDAO {

    private static final Logger logger = LoggerFactory.getLogger(RoomDAOImpl.class);

    @Override
    public boolean add(Bill bill) throws DAOException {
        PreparedStatement pstmt = null;

        String addQuery = "INSERT INTO bill(application_id, room_id, price)" +
                " VALUES(?,?,?)";
        try(Connection conn = HikariCPDataSource.getConnection()
        ){
            pstmt = conn.prepareStatement(addQuery);
            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ

            pstmt.setInt(1, bill.getApplicationId());
            pstmt.setInt(2, bill.getRoomId());
            pstmt.setInt(3, bill.getPrice());
            //pstmt.setBoolean(4, bill.isAccepted());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't added bill");
            } else logger.info("Bill was added successful");
            return (check != 0);
        }catch (SQLException e){
            logger.error("Cannot add bill to database", e);
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
    public List<Bill> select() throws DAOException {
        return null;
    }

    @Override
    public void delete(Bill bill) throws DAOException {

        PreparedStatement pstmt = null;

        String deleteQuery = "DELETE FROM bill WHERE id = ?";


        try (Connection conn = HikariCPDataSource.getConnection()) {

            pstmt = conn.prepareStatement(deleteQuery);

            pstmt.setInt(1, bill.getId());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't deleted bill");
            } else logger.info("Bill was deleted successful");

        } catch (SQLException e) {
            logger.error("Cannot delete bill from database", e);
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
    public void update(Bill bill) throws DAOException {

        PreparedStatement pstmt = null;

        String updateQuery = "UPDATE bill " +
                "SET  price= ? WHERE id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(updateQuery);

            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ

            pstmt.setInt(1, bill.getPrice());
            pstmt.setInt(2, bill.getId());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't update bill");
            } else logger.info("Bill was updated successful");

        } catch (SQLException e) {
            logger.error("Cannot update bill in database", e);
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
