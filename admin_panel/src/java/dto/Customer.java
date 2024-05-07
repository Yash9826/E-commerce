/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.Timestamp;

/**
 *
 * @author yashc
 */
public class Customer {


    private int id;
    private String name;
    private String email;
    private String mobileNo;
    private String city;
    private String password;
    private Timestamp r_date;
    
//    default constructor

    public Customer() {
    }
    

//    parametrized constructor without id and r_date
    public Customer(String name, String email, String mobileNo, String city, String password) {
        this.name = name;
        this.email = email;
        this.mobileNo = mobileNo;
        this.city = city;
        this.password = password;

    }

    //    parametrized constructor for setting values for login
    public Customer(String email, String password) {
        this.email = email;
        this.password = password;
    }

    
    
//    getters and setters
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Timestamp getR_date() {
        return r_date;
    }

    public void setR_date(Timestamp r_date) {
        this.r_date = r_date;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
