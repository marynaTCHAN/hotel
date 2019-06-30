package com.softserve.ita.model;

public class Room {

    /**
     * POJO(Java Bean)
     */

    private int id;
    private String number;
    private int idRoomType;
    private int square;
    private int price;
    private boolean airConditioner;
    private boolean miniBar;
    private boolean kitchen;
    private boolean free;


    private String name;
    private int numberOfRoom;
    private int numberOfBed;


    public Room() {

    }


    public Room(int id, String number, int idRoomType, int square, int price, boolean airConditioner, boolean miniBar, boolean kitchen, boolean free) {
        this.id = id;
        this.number = number;
        this.idRoomType = idRoomType;
        this.square = square;
        this.price = price;
        this.airConditioner = airConditioner;
        this.miniBar = miniBar;
        this.kitchen = kitchen;
        this.free = free;
    }

    public Room(String number, int idRoomType, int square, int price, boolean airConditioner, boolean miniBar, boolean kitchen, boolean free) {
        this.number = number;
        this.idRoomType = idRoomType;
        this.square = square;
        this.price = price;
        this.airConditioner = airConditioner;
        this.miniBar = miniBar;
        this.kitchen = kitchen;
        this.free = free;
    }


    public Room(int id, String number, int square, int price, boolean airConditioner, boolean miniBar, boolean kitchen, boolean free, String name, int numberOfRoom, int numberOfBed) {
        this.id = id;
        this.number = number;
        this.square = square;
        this.price = price;
        this.airConditioner = airConditioner;
        this.miniBar = miniBar;
        this.kitchen = kitchen;
        this.free = free;
        this.name = name;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
    }


    public Room(String number, int square, int price, boolean airConditioner, boolean miniBar, boolean kitchen, boolean free, String name, int numberOfRoom, int numberOfBed) {
        this.number = number;
        this.square = square;
        this.price = price;
        this.airConditioner = airConditioner;
        this.miniBar = miniBar;
        this.kitchen = kitchen;
        this.free = free;
        this.name = name;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public int getIdRoomType() {
        return idRoomType;
    }

    public void setIdRoomType(int idRoomType) {
        this.idRoomType = idRoomType;
    }

    public int getSquare() {
        return square;
    }

    public void setSquare(int square) {
        this.square = square;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public boolean isAirConditioner() {
        return airConditioner;
    }

    public void setAirConditioner(boolean airConditioner) {
        this.airConditioner = airConditioner;
    }

    public boolean isMiniBar() {
        return miniBar;
    }

    public void setMiniBar(boolean miniBar) {
        this.miniBar = miniBar;
    }

    public boolean isKitchen() {
        return kitchen;
    }

    public void setKitchen(boolean kitchen) {
        this.kitchen = kitchen;
    }

    public boolean isFree() {
        return free;
    }

    public void setFree(boolean free) {
        this.free = free;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumberOfRoom() {
        return numberOfRoom;
    }

    public void setNumberOfRoom(int numberOfRoom) {
        this.numberOfRoom = numberOfRoom;
    }

    public int getNumberOfBed() {
        return numberOfBed;
    }

    public void setNumberOfBed(int numberOfBed) {
        this.numberOfBed = numberOfBed;
    }


    @Override
    public String toString() {
        return "Room{" +
                ", number='" + number + '\'' +
                ", square=" + square +
                ", isAirConditioner=" + airConditioner +
                ", isMiniBar=" + miniBar +
                ", isKitchen=" + kitchen +
                ", isFree=" + free +
                ", name='" + name + '\'' +
                ", numberOfRoom=" + numberOfRoom +
                ", numberOfBed=" + numberOfBed +
                '}';
    }
}
