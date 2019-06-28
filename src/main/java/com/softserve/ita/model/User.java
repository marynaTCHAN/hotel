package com.softserve.ita.model;

public class User {


    /**
     * POJO(Java Bean)
     */

    private int id;
    private String email;
    private String password;
    private String role;
    private String name;
    private String surname;
    private String phoneNumber;
    private String address;


    public User() {

    }

    public User(int id, String email, String password, String role,
                String name, String surname, String phoneNumber, String address) {
        this.id = id;
        this.email = email;
        this.password=password;
        this.role = role;
        this.name = name;
        this.surname=surname;
        this.phoneNumber = phoneNumber;
        this.address=address;
    }

    public User(String email, String password, String role,
                String name, String surname, String phoneNumber, String address) {
        this.email = email;
        this.password=password;
        this.role = role;
        this.name = name;
        this.surname=surname;
        this.phoneNumber = phoneNumber;
        this.address=address;
    }

    public User(int id, String email, String password, String role) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public String getRole() {
        return role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
