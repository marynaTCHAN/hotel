package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.AccountDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Account;
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
    public void add(Account account) throws DAOException {
        PreparedStatement pstmt = null;

        String addQuery = "INSERT INTO account(application_id, user_id, room_id, price, is_accepted)" +
                " VALUES(?,?,?,?,?)";
        try(Connection conn = HikariCPDataSource.getConnection()
        ){
            pstmt = conn.prepareStatement(addQuery);
            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ

            pstmt.setInt(1, account.getApplicationId());
            pstmt.setInt(2, account.getUserId());
            pstmt.setInt(3, account.getRoomId());
            pstmt.setInt(4, account.getPrice());
            pstmt.setBoolean(5, account.isAccepted());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't added account");
            } else logger.info("Account was added successful");
        }catch (SQLException e){
            logger.error("Cannot add account to database", e);
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
    public List<Account> select() throws DAOException {
        return null;
    }

    @Override
    public void delete(Account account) throws DAOException {

        PreparedStatement pstmt = null;

        String deleteQuery = "DELETE FROM account WHERE id = ?";


        try (Connection conn = HikariCPDataSource.getConnection()) {

            pstmt = conn.prepareStatement(deleteQuery);

            pstmt.setInt(1, account.getId());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't deleted account");
            } else logger.info("Account was deleted successful");

        } catch (SQLException e) {
            logger.error("Cannot delete account from database", e);
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
    public void update(Account account) throws DAOException {

        PreparedStatement pstmt = null;

        String updateQuery = "UPDATE account " +
                "SET  price= ?, is_accepted= ? WHERE id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmt = conn.prepareStatement(updateQuery);

            pstmt.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ

            pstmt.setInt(1, account.getPrice());
            pstmt.setBoolean(2, account.isAccepted());
            pstmt.setInt(3, account.getId());

            int check = pstmt.executeUpdate();

            if (check == 0) {
                logger.error("Can't update account");
            } else logger.info("Account was updated successful");

        } catch (SQLException e) {
            logger.error("Cannot update account in database", e);
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
