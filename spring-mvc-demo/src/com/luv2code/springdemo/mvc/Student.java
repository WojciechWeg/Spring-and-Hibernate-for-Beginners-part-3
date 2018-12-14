package com.luv2code.springdemo.mvc;

import java.util.ArrayList;

public class Student {
	
	private String firstName;
	private String lastName;
	private String country;
	
	private String favoriteLanguage;
		
	private ArrayList operatingSystems;
	
	public Student() {
		operatingSystems = new ArrayList();
		firstName = "Janek";
	}


	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}


	public String getFavoriteLanguage() {
		return favoriteLanguage;
	}


	public void setFavoriteLanguage(String favoriteLanguage) {
		this.favoriteLanguage = favoriteLanguage;
	}


	public ArrayList getOperatingSystems() {
		return operatingSystems;
	}


	public void setOperatingSystems(ArrayList operatingSystems) {
		this.operatingSystems = operatingSystems;
	}



	
}
