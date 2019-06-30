package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.RoomType;

import java.util.List;

public interface RoomTypeDAO {

    boolean add(RoomType roomType) throws DAOException;

    List<RoomType> select() throws DAOException;

    boolean delete(int idRoomType) throws DAOException;

    void update(RoomType roomType) throws DAOException;

    RoomType getByName(String name) throws DAOException;

}
