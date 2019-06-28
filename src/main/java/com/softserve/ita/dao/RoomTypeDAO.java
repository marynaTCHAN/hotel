package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.RoomType;

import java.util.List;

public interface RoomTypeDAO {

    void add(RoomType roomType) throws DAOException;

    List<RoomType> select() throws DAOException;

    void delete(RoomType roomType) throws DAOException;

    void update(RoomType roomType) throws DAOException;

}
