package model.customer;

import java.sql.Date;

public class Customer {
    protected int cusID;
    protected CustomerType cusType;
    protected String cusName;
    protected Date dateOfBirth;
    protected boolean gender;
    protected String cusIDCard;
    protected String phoneNumber;
    protected String email;
    protected String address;

    public Customer() {
    }

    public Customer(int cusID, CustomerType cusType, String cusName, Date dateOfBirth, boolean gender, String cusIDCard, String phoneNumber, String email, String address) {
        this.cusID = cusID;
        this.cusType = cusType;
        this.cusName = cusName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.cusIDCard = cusIDCard;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
    }

    public Customer(CustomerType cusType, String cusName, Date dateOfBirth, boolean gender, String cusIDCard, String phoneNumber, String email, String address) {
        this.cusType = cusType;
        this.cusName = cusName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.cusIDCard = cusIDCard;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public CustomerType getCusType() {
        return cusType;
    }

    public void setCusType(CustomerType cusType) {
        this.cusType = cusType;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getCusIDCard() {
        return cusIDCard;
    }

    public void setCusIDCard(String cusIDCard) {
        this.cusIDCard = cusIDCard;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
