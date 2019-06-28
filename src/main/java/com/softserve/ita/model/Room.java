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
    private boolean isAirConditioner;
    private boolean isMiniBar;
    private boolean isKitchen;
    private boolean isFree;


    private String name;
    private int numberOfRoom;
    private int numberOfBed;


    public Room() {

    }


    public Room(int id, String number, int idRoomType, int square, boolean isAirConditioner, boolean isMiniBar, boolean isKitchen, boolean isFree) {
        this.id = id;
        this.number = number;
        this.idRoomType = idRoomType;
        this.square = square;
        this.isAirConditioner = isAirConditioner;
        this.isMiniBar = isMiniBar;
        this.isKitchen = isKitchen;
        this.isFree = isFree;
    }

    public Room(String number, int idRoomType, int square, boolean isAirConditioner, boolean isMiniBar, boolean isKitchen, boolean isFree) {
        this.number = number;
        this.idRoomType = idRoomType;
        this.square = square;
        this.isAirConditioner = isAirConditioner;
        this.isMiniBar = isMiniBar;
        this.isKitchen = isKitchen;
        this.isFree = isFree;
    }


    public Room(int id, String number, int square, boolean isAirConditioner, boolean isMiniBar, boolean isKitchen, boolean isFree, String name, int numberOfRoom, int numberOfBed) {
        this.id = id;
        this.number = number;
        this.square = square;
        this.isAirConditioner = isAirConditioner;
        this.isMiniBar = isMiniBar;
        this.isKitchen = isKitchen;
        this.isFree = isFree;
        this.name = name;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
    }


    public Room(String number, int square, boolean isAirConditioner, boolean isMiniBar, boolean isKitchen, boolean isFree, String name, int numberOfRoom, int numberOfBed) {
        this.number = number;
        this.square = square;
        this.isAirConditioner = isAirConditioner;
        this.isMiniBar = isMiniBar;
        this.isKitchen = isKitchen;
        this.isFree = isFree;
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
        return isAirConditioner;
    }

    public void setAirConditioner(boolean airConditioner) {
        isAirConditioner = airConditioner;
    }

    public boolean isMiniBar() {
        return isMiniBar;
    }

    public void setMiniBar(boolean miniBar) {
        isMiniBar = miniBar;
    }

    public boolean isKitchen() {
        return isKitchen;
    }

    public void setKitchen(boolean kitchen) {
        isKitchen = kitchen;
    }

    public boolean isFree() {
        return isFree;
    }

    public void setFree(boolean free) {
        isFree = free;
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
                ", isAirConditioner=" + isAirConditioner +
                ", isMiniBar=" + isMiniBar +
                ", isKitchen=" + isKitchen +
                ", isFree=" + isFree +
                ", name='" + name + '\'' +
                ", numberOfRoom=" + numberOfRoom +
                ", numberOfBed=" + numberOfBed +
                '}';
    }
}
