package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Account;

import java.util.List;

public interface AccountDAO {

    void add(Account account) throws DAOException;

    List<Account> select() throws DAOException;

    void delete(Account account) throws DAOException;

    void update(Account account) throws DAOException;

}
