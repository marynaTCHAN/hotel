package com.softserve.ita.dao.impl;

import com.softserve.ita.dao.UserDAO;
import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.User;
import com.softserve.ita.util.HikariCPDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {


    private static final Logger logger = LoggerFactory.getLogger(RoomDAOImpl.class);


    @Override
    public boolean add(User user) throws DAOException {

        PreparedStatement pstmtOne = null;
        PreparedStatement pstmtTwo = null;

        String addQueryOne = "INSERT INTO user(email,password, role) VALUES(?,?,?)";

        String addQueryTwo = "INSERT INTO contact(name, surname, phone, adress) VALUES(?,?,?,?)";


        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmtOne = conn.prepareStatement(addQueryOne);
            pstmtTwo = conn.prepareStatement(addQueryTwo);

            pstmtOne.setString(1, user.getEmail());
            pstmtOne.setString(2, user.getPassword());
            pstmtOne.setString(3, user.getRole());
            pstmtTwo.setString(1, user.getName());
            pstmtTwo.setString(2,user.getSurname());
            pstmtTwo.setString(3, user.getPhoneNumber());
            pstmtTwo.setString(4, user.getAddress());

            int checkOne = pstmtOne.executeUpdate();
            int checkTwo = pstmtTwo.executeUpdate();
            if (checkOne == 0 || checkTwo == 0) {
                logger.error("Can't added user");
            } else logger.info("User was added successful");
            return (checkOne != 0 && checkTwo != 0);
        } catch (SQLException e) {
            logger.error("Cannot add user to database", e);
            throw new DAOException(e.getMessage(), e);
        } finally {
            if (pstmtOne != null || pstmtTwo != null) {
                try {
                    pstmtOne.close();
                    pstmtTwo.close();
                } catch (SQLException e) {
                    logger.error("Cannot close prepare statement");
                }
            }
        }

    }
    @Override
    public List<User> select() throws DAOException {
        Statement stmt = null;
        List users = new ArrayList<User>();

        String selectQuery = "SELECT * from user RIGHT JOIN contact c on user.id = c.user_id";
        ResultSet rs = null;

        try (Connection conn = HikariCPDataSource.getConnection()) {

            stmt = conn.createStatement();
            rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                users.add(new User(rs.getString("email"),
                        rs.getString("password"), rs.getString("role"),
                        rs.getString("name"), rs.getString("surname"),
                        rs.getString("phone"), rs.getString("adress")));
            }
            rs.close();
        } catch (SQLException e) {
            logger.error("Cannot select users", e);
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
        return users;
    }

    @Override
    public void delete(User user) throws DAOException {

        PreparedStatement pstmtOne = null;
        PreparedStatement pstmtTwo = null;

        String deleteQueryOne = "DELETE FROM contact WHERE user_id = ?";
        String deleteQueryTwo = "DELETE FROM user WHERE id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()) {

            pstmtOne = conn.prepareStatement(deleteQueryOne);
            pstmtOne.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ
            pstmtOne.setInt(1, user.getId());

            int checkOne = pstmtOne.executeUpdate();

            pstmtTwo = conn.prepareStatement(deleteQueryTwo);
            pstmtTwo.execute("SET FOREIGN_KEY_CHECKS=0");
            pstmtTwo.setInt(1, user.getId());

            int checkTwo = pstmtOne.executeUpdate();


        } catch (SQLException e) {
            logger.error("Cannot delete user from database", e);
            throw new DAOException(e.getMessage(), e);
        } finally {
            if (pstmtOne != null) {
                try {
                    pstmtOne.close();
                } catch (SQLException e) {
                    logger.error("Cannot close prepare statement");
                }
            }
        }
    }

    @Override
    public boolean update(User user) throws DAOException {

        PreparedStatement pstmtOne = null;
        PreparedStatement pstmtTwo = null;
        String updateQueryOne = "UPDATE contact set name = ?, surname = ?, phone = ?," +
                " adress = ? where user_id = ?";
        String updateQueryTwo = "UPDATE user set email = ?, password = ?" +
                " where id = ?";

        try (Connection conn = HikariCPDataSource.getConnection()
        ) {
            pstmtOne = conn.prepareStatement(updateQueryOne);
            pstmtOne.execute("SET FOREIGN_KEY_CHECKS=0");
            //ЗАБРАЛИ ПЕРЕВІРКУ ФОРЕІНГ КІ
            pstmtOne.setString(1, user.getName());
            pstmtOne.setString(2, user.getSurname());
            pstmtOne.setString(3, user.getPhoneNumber());
            pstmtOne.setString(4, user.getAddress());
            pstmtOne.setInt(5, user.getId());
            int checkOne = pstmtOne.executeUpdate();

            pstmtTwo = conn.prepareStatement(updateQueryTwo);
            pstmtTwo.execute("SET FOREIGN_KEY_CHECKS=0");
            pstmtTwo.setString(1, user.getEmail());
            pstmtTwo.setString(2, user.getPassword());
            pstmtTwo.setInt(3, user.getId());
            int checkTwo = pstmtTwo.executeUpdate();

            if (checkOne == 0 || checkTwo == 0) {
                logger.error("Can't update user");
            } else logger.info("User was update successful");

            return (checkOne != 0 && checkTwo != 0);
        } catch (SQLException e) {
            logger.error("Cannot update user in database", e);
            throw new DAOException(e.getMessage(), e);
        } finally {
            if (pstmtOne != null || pstmtTwo != null) {
                try {
                    pstmtOne.close();
                    pstmtTwo.close();
                } catch (SQLException e) {
                    logger.error("Cannot close prepare statement");
                }
            }
        }
    }

    @Override
    public User getUser(String email, String password) throws DAOException {
        PreparedStatement stmt = null;
        ResultSet rs = null;

        String query = "SELECT * from user RIGHT JOIN contact c on user.id = c.user_id where email = ? and password = ?";

        try(Connection conn = HikariCPDataSource.getConnection()){

            stmt = conn.prepareStatement(query);
            stmt.setString(1,email);
            stmt.setString(2,password);
            rs = stmt.executeQuery();

            if(rs.next()){
                return new User(rs.getInt("id"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("role"),
                        rs.getString("name"),
                        rs.getString("surname"),
                        rs.getString("phone"),
                        rs.getString("adress")
                );

            }else{
                return new User();
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