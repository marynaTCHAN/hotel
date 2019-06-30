package com.softserve.ita.model;

public class Bill {

    /**
     * POJO(Java Bean)
     */

    private int id;
    private int applicationId;
    private int roomId;
    private int price;


    public Bill() {

    }

    public Bill(int applicationId, int roomId, int price) {
        this.applicationId = applicationId;
        this.roomId = roomId;
        this.price = price;

    }


    public Bill(int id, int applicationId, int roomId, int price) {
        this.id = id;
        this.applicationId = applicationId;
        this.roomId = roomId;
        this.price = price;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }


    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", applicationId=" + applicationId +
                ", roomId=" + roomId +
                ", price=" + price +
                '}';
    }
}
