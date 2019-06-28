package com.softserve.ita.model;

public class Application {

    /**
     * POJO(Java Bean)
     */

    private int id;
    private int userId;
    private String dateOfArrival;
    private String dateDeparture;
    private String typeOfRoom;
    private int numberOfPeople;
    private int numberOfRoom;
    private int square;
    private String feeding;
    private boolean airConditioner;
    private boolean parking;
    private boolean gym;
    private boolean SPA;
    private boolean pool;

    private String nameUser;
    private String surnameUser;


    public Application() {

    }


    public Application(int userId, String dateOfArrival, String dateDeparture, int numberOfPeople, int numberOfRoom, int square, String feeding, boolean airConditioner, boolean parking, boolean gym, boolean SPA, boolean pool) {
        this.userId = userId;
        this.dateOfArrival = dateOfArrival;
        this.dateDeparture = dateDeparture;
        this.numberOfPeople = numberOfPeople;
        this.numberOfRoom = numberOfRoom;
        this.square = square;
        this.feeding = feeding;
        this.airConditioner = airConditioner;
        this.parking = parking;
        this.gym = gym;
        this.SPA = SPA;
        this.pool = pool;

    }


    public Application(int id, int userId, String dateOfArrival, String dateDeparture, int numberOfPeople, int numberOfRoom, int square, String feeding, boolean airConditioner, boolean parking, boolean gym, boolean SPA, boolean pool) {
        this.id = id;
        this.userId = userId;
        this.dateOfArrival = dateOfArrival;
        this.dateDeparture = dateDeparture;
        this.numberOfPeople = numberOfPeople;
        this.numberOfRoom = numberOfRoom;
        this.square = square;
        this.feeding = feeding;
        this.airConditioner = airConditioner;
        this.parking = parking;
        this.gym = gym;
        this.SPA = SPA;
        this.pool = pool;

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

    public String getDateOfArrival() {
        return dateOfArrival;
    }

    public void setDateOfArrival(String dateOfArrival) {
        this.dateOfArrival = dateOfArrival;
    }

    public String getDateDeparture() {
        return dateDeparture;
    }

    public void setDateDeparture(String dateDeparture) {
        this.dateDeparture = dateDeparture;
    }

    public String getTypeOfRoom() {
        return typeOfRoom;
    }

    public void setTypeOfRoom(String typeOfRoom) {
        this.typeOfRoom = typeOfRoom;
    }

    public int getNumberOfPeople() {
        return numberOfPeople;
    }

    public void setNumberOfPeople(int numberOfPeople) {
        this.numberOfPeople = numberOfPeople;
    }

    public int getNumberOfRoom() {
        return numberOfRoom;
    }

    public void setNumberOfRoom(int numberOfRoom) {
        this.numberOfRoom = numberOfRoom;
    }

    public int getSquare() {
        return square;
    }

    public void setSquare(int square) {
        this.square = square;
    }

    public String getFeeding() {
        return feeding;
    }

    public void setFeeding(String feeding) {
        this.feeding = feeding;
    }

    public boolean isAirConditioner() {
        return airConditioner;
    }

    public void setAirConditioner(boolean airConditioner) {
        airConditioner = airConditioner;
    }

    public boolean isParking() {
        return parking;
    }

    public void setParking(boolean parking) {
        parking = parking;
    }

    public boolean isGym() {
        return gym;
    }

    public void setGym(boolean gym) {
        gym = gym;
    }

    public boolean isSPA() {
        return SPA;
    }

    public void setSPA(boolean SPA) {
        SPA = SPA;
    }

    public boolean isPool() {
        return pool;
    }

    public void setPool(boolean pool) {
        pool = pool;
    }

    public String getNameUser() {
        return nameUser;
    }

    public void setNameUser(String nameUser) {
        this.nameUser = nameUser;
    }

    public String getSurnameUser() {
        return surnameUser;
    }

    public void setSurnameUser(String surnameUser) {
        this.surnameUser = surnameUser;
    }

    @Override
    public String toString() {
        return "Application{" +
                "id=" + id +
                ", userId=" + userId +
                ", dateOfArrival='" + dateOfArrival + '\'' +
                ", dateDeparture='" + dateDeparture + '\'' +
                ", numberOfPeople=" + numberOfPeople +
                ", numberOfRoom=" + numberOfRoom +
                ", square=" + square +
                ", feeding='" + feeding + '\'' +
                ", isAirConditioner=" + airConditioner +
                ", isParking=" + parking +
                ", isGym=" + gym +
                ", isSPA=" + SPA +
                ", isPool=" + pool +
                '}';
    }
}
