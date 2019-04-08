package com.demo.entity;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@SuppressWarnings("serial")
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name="Zadeshwar_Details")
public class Member implements Serializable {

	

	
	
	/**
	 * 
	 */
	public Member() {
	}

	@Override
	public String toString() {
		return String.format(
				"Member [id=%s, FirstName=%s, MiddleName=%s, LastName=%s, SpouseName=%s, ParentsName=%s, StreetName=%s, City=%s, State=%s, ZipCode=%s, Email=%s, PhoneNumber=%s, Homenumber=%s, ZadeshwarAddress=%s]",
				id, FirstName, MiddleName, LastName, SpouseName, ParentsName, StreetName, City, State, ZipCode, Email,
				PhoneNumber, Homenumber, ZadeshwarAddress);
	}

	@Id
	private int id;
    
     @Column(name="FirstName")
	 private String FirstName;
     
     @Column(name="MiddleName")
	 private String MiddleName;
     
     @Column(name="LastName")
	 private String LastName;
	 
     @Column(name="SpouseName")
	 private String SpouseName;
	 
     @Column(name="ParentsName")
	 private String ParentsName;
     
     @Column(name="StreetName")
	 private String StreetName;
	 
     @Column(name="City")
	 private String City;
     
     @Column(name="State")
	 private String State;
     
     
     @Column(name="ZipCode")
	 private String ZipCode;
     
     @Column(name="Email")
	 private String Email;
     
     @Column(name="PhoneNumber")
	 private String PhoneNumber;
     
     @Column(name="Homenumber")
	 private String Homenumber;
     
     @Column(name="ZadeshwarAddress")
	 private String ZadeshwarAddress;

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getMiddleName() {
		return MiddleName;
	}

	public void setMiddleName(String middleName) {
		MiddleName = middleName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getSpouseName() {
		return SpouseName;
	}

	public void setSpouseName(String spouseName) {
		SpouseName = spouseName;
	}

	public String getParentsName() {
		return ParentsName;
	}

	public void setParentsName(String parentsName) {
		ParentsName = parentsName;
	}

	public String getStreetName() {
		return StreetName;
	}

	public void setStreetName(String streetName) {
		StreetName = streetName;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getZipCode() {
		return ZipCode;
	}

	public void setZipCode(String zipCode) {
		ZipCode = zipCode;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	public String getHomenumber() {
		return Homenumber;
	}

	public void setHomenumber(String homenumber) {
		Homenumber = homenumber;
	}

	public String getZadeshwarAddress() {
		return ZadeshwarAddress;
	}

	public void setZadeshwarAddress(String zadeshwarAddress) {
		ZadeshwarAddress = zadeshwarAddress;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
}
