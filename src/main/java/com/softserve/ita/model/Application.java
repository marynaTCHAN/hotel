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
    private boolean accepted;

    private String nameUser;
    private String surnameUser;


    public Application() {

    }


    public Application(int userId, String dateOfArrival, String dateDeparture, String typeOfRoom,
                       int numberOfPeople, int numberOfRoom, int square, String feeding, boolean airConditioner, boolean parking, boolean gym, boolean SPA, boolean pool, boolean accepted) {
        this.userId = userId;
        this.dateOfArrival = dateOfArrival;
        this.dateDeparture = dateDeparture;
        this.typeOfRoom = typeOfRoom;
        this.numberOfPeople = numberOfPeople;
        this.numberOfRoom = numberOfRoom;
        this.square = square;
        this.feeding = feeding;
        this.airConditioner = airConditioner;
        this.parking = parking;
        this.gym = gym;
        this.SPA = SPA;
        this.pool = pool;
        this.accepted = accepted;

    }

    public Application(int id, int userId, String dateOfArrival, String dateDeparture, String typeOfRoom,
                       int numberOfPeople, int numberOfRoom, int square, String feeding, boolean airConditioner, boolean parking, boolean gym, boolean SPA, boolean pool, boolean accepted) {
        this.id = id;
        this.userId = userId;
        this.dateOfArrival = dateOfArrival;
        this.dateDeparture = dateDeparture;
        this.typeOfRoom = typeOfRoom;
        this.numberOfPeople = numberOfPeople;
        this.numberOfRoom = numberOfRoom;
        this.square = square;
        this.feeding = feeding;
        this.airConditioner = airConditioner;
        this.parking = parking;
        this.gym = gym;
        this.SPA = SPA;
        this.pool = pool;
        this.accepted = accepted;

    }


    public Application(String nameUser, String surnameUser, String dateOfArrival, String dateDeparture, String typeOfRoom,
                       int numberOfPeople, int numberOfRoom, int square, String feeding, boolean airConditioner, boolean parking, boolean gym, boolean SPA, boolean pool, boolean accepted) {
        this.nameUser = nameUser;
        this.surnameUser = surnameUser;
        this.dateOfArrival = dateOfArrival;
        this.dateDeparture = dateDeparture;
        this.typeOfRoom = typeOfRoom;
        this.numberOfPeople = numberOfPeople;
        this.numberOfRoom = numberOfRoom;
        this.square = square;
        this.feeding = feeding;
        this.airConditioner = airConditioner;
        this.parking = parking;
        this.gym = gym;
        this.SPA = SPA;
        this.pool = pool;
        this.accepted = accepted;

    }


    public Application(int id, String nameUser, String surnameUser, String dateOfArrival, String dateDeparture, String typeOfRoom,
                       int numberOfPeople, int numberOfRoom, int square, String feeding, boolean airConditioner, boolean parking, boolean gym, boolean SPA, boolean pool, boolean accepted) {
        this.id = id;
        this.nameUser = nameUser;
        this.surnameUser = surnameUser;
        this.dateOfArrival = dateOfArrival;
        this.dateDeparture = dateDeparture;
        this.typeOfRoom = typeOfRoom;
        this.numberOfPeople = numberOfPeople;
        this.numberOfRoom = numberOfRoom;
        this.square = square;
        this.feeding = feeding;
        this.airConditioner = airConditioner;
        this.parking = parking;
        this.gym = gym;
        this.SPA = SPA;
        this.pool = pool;
        this.accepted = accepted;

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
        this.airConditioner = airConditioner;
    }

    public boolean isParking() {
        return parking;
    }

    public void setParking(boolean parking) {
        this.parking = parking;
    }

    public boolean isGym() {
        return gym;
    }

    public void setGym(boolean gym) {
        this.gym = gym;
    }

    public boolean isSPA() {
        return SPA;
    }

    public void setSPA(boolean SPA) {
        this.SPA = SPA;
    }

    public boolean isPool() {
        return pool;
    }

    public void setPool(boolean pool) {
        this.pool = pool;
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

    public boolean isAccepted() {
        return accepted;
    }

    public void setAccepted(boolean accepted) {
        this.accepted = accepted;
    }

    @Override
    public String toString() {
        return "Application{" +
                "id=" + id +
                ", userId=" + userId +
                ", dateOfArrival='" + dateOfArrival + '\'' +
                ", dateDeparture='" + dateDeparture + '\'' +
                ", typeOfRoom='" + typeOfRoom + '\'' +
                ", numberOfPeople=" + numberOfPeople +
                ", numberOfRoom=" + numberOfRoom +
                ", square=" + square +
                ", feeding='" + feeding + '\'' +
                ", airConditioner=" + airConditioner +
                ", parking=" + parking +
                ", gym=" + gym +
                ", SPA=" + SPA +
                ", pool=" + pool +
                ", nameUser='" + nameUser + '\'' +
                ", surnameUser='" + surnameUser + '\'' +
                ", accepted='" + accepted + '\'' +
                '}';
    }
}
