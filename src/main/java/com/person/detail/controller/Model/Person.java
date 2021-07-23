package com.person.detail.controller.Model;

import javax.persistence.*;

@Entity(name = "Count")
@Table(name="PERSON")
public class Person {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    @Column(name = "Nationality")
    String nationality;
    @Column(name = "Address")
    String address;

    @Column(name = "Firstname")
    String firstname;
    @Column(name = "Lastname")
    String lastname;
    @Column(name = "Email")
    String Email;
    @Column( name = "Mobile")
    long mobile;
    @Column(name = "Age")
    long age;
    @Column(name = "Gender")
    String gender;

    public Person() {
        super();
    }

    public Person(int id, String nationality, String address, String firstname, String gender,String lastname, String email,long mobile,long age) {
        this.id = id;
        this.nationality = nationality;
        this.address = address;
        this.firstname = firstname;
        this.lastname = lastname;
        this.Email = email;
        this.mobile = mobile;
        this.age=age;
        this.gender=gender;

    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public long getMobile() {
        return mobile;
    }

    public void setMobile(long mobile) {
        this.mobile = mobile;
    }

    public long getAge() {
        return age;
    }

    public void setAge(long age) {
        this.age = age;
    }
}


