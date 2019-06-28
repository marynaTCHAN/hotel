package com.softserve.ita.model;

public class Account {

    /**
     * POJO(Java Bean)
     */

    private int id;
    private int userId;
    private int applicationId;
    private int roomId;
    private int price;
    private boolean isAccepted;

    public Account () {

    }

    public Account(int userId, int applicationId, int roomId, int price, boolean isAccepted) {
        this.userId = userId;
        this.applicationId = applicationId;
        this.roomId = roomId;
        this.price = price;
        this.isAccepted = isAccepted;
    }


    public Account(int id, int userId, int applicationId, int roomId, int price, boolean isAccepted) {
        this.id = id;
        this.userId = userId;
        this.applicationId = applicationId;
        this.roomId = roomId;
        this.price = price;
        this.isAccepted = isAccepted;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public boolean isAccepted() {
        return isAccepted;
    }

    public void setAccepted(boolean accepted) {
        isAccepted = accepted;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", userId=" + userId +
                ", applicationId=" + applicationId +
                ", roomId=" + roomId +
                ", price=" + price +
                ", isAccepted=" + isAccepted +
                '}';
    }
}
