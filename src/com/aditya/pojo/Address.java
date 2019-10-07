package com.aditya.pojo;

public class Address {
	private String Name;
	private String Contact;
	private String Username;
	private String City;
	private String State;
	private String Pincode;

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getContact() {
		return Contact;
	}

	public void setContact(String contact) {
		Contact = contact;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
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

	public String getPincode() {
		return Pincode;
	}

	public void setPincode(String pincode) {
		Pincode = pincode;
	}

	@Override
	public String toString() {
		return "Address [Name=" + Name + ", Contact=" + Contact + ", Username=" + Username + ", City=" + City
				+ ", State=" + State + ", Pincode=" + Pincode + "]";
	}

}
