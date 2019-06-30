package com.softserve.ita.dao;

import com.softserve.ita.exсeption.DAOException;
import com.softserve.ita.model.Room;


import java.util.List;

public interface RoomDAO {

    boolean add(Room room) throws DAOException;

    List<Room> select() throws DAOException;

    boolean delete(int idRoom) throws DAOException;

    void update(Room room) throws DAOException;

}
