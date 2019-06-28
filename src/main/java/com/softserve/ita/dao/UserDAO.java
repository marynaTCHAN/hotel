package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
        import com.softserve.ita.model.User;

        import java.util.List;

public interface UserDAO {

    boolean add(User user) throws DAOException;

    List<User> select() throws DAOException;

    void delete(User user) throws DAOException;

    boolean update(User user) throws DAOException;

    User getUser(String email, String password) throws DAOException;

}
