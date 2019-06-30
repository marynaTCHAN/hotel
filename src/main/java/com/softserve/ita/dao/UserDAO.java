package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
        import com.softserve.ita.model.User;

        import java.util.List;

public interface UserDAO {

    boolean add(User user) throws DAOException;

    List<User> select() throws DAOException;

    boolean delete(int userId) throws DAOException;

    boolean update(User user) throws DAOException;

    User getUser(String email, String password) throws DAOException;

    User getUserById(int userId) throws DAOException;

}
