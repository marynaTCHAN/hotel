package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Bill;

import java.util.List;

public interface AccountDAO {

    boolean add(Bill bill) throws DAOException;

    List<Bill> select() throws DAOException;

    void delete(Bill bill) throws DAOException;

    void update(Bill bill) throws DAOException;

}
