package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Application;


import java.util.List;

public interface ApplicationDAO {

    boolean add(Application application) throws DAOException;

    List<Application> select() throws DAOException;

    boolean delete(Application application) throws DAOException;

}
