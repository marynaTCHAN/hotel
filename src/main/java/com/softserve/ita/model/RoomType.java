package com.softserve.ita.model;

public class RoomType {

    /**
     * POJO(Java Bean)
     */

    private int id;
    private String name;
    private int numberOfRoom;
    private int numberOfBed;
    private String descriptions;

    public RoomType() {

    }

    public RoomType(int id, String name, int numberOfRoom, int numberOfBed, String descriptions) {
        this.id = id;
        this.name = name;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
        this.descriptions = descriptions;
    }

    public RoomType(int id, String name, int numberOfRoom, int numberOfBed) {
        this.id = id;
        this.name = name;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
        this.descriptions = descriptions;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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


    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    @Override
    public String toString() {
        return "RoomType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", numberOfRoom=" + numberOfRoom +
                ", numberOfBed=" + numberOfBed +
                ", description=" + descriptions +
                '}';
    }
}
