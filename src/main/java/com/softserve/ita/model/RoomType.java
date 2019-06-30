package com.softserve.ita.model;

public class RoomType {

    /**
     * POJO(Java Bean)
     */

    private int id;
    private String name;
    private int numberOfRoom;
    private int numberOfBed;
    private String description;

    public RoomType() {

    }

    public RoomType(int id, String name, int numberOfRoom, int numberOfBed, String description) {
        this.id = id;
        this.name = name;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
        this.description = description;
    }

    public RoomType(String name, int numberOfRoom, int numberOfBed, String description) {
        this.name = name;
        this.numberOfRoom = numberOfRoom;
        this.numberOfBed = numberOfBed;
        this.description = description;
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
        return description;
    }

    public void setDescriptions(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "RoomType{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", numberOfRoom=" + numberOfRoom +
                ", numberOfBed=" + numberOfBed +
                ", description=" + description +
                '}';
    }
}
