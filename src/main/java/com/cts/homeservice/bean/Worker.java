package com.cts.homeservice.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Worker {
	
	private int workerId;
	private String firstName;
	private String lastName;
	private String email;
	private String contactNumber;
	private String pwd;
	private String locality;
	private String skills;
	
	
	@Id
	@Column
	public int getWorkerId() {
		return workerId;
	}
	public void setWorkerId(int workerId) {
		this.workerId = workerId;
	}
	@Column
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@Column
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@Column
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	@Column
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Column
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	@Column
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public Worker() {
		super();
	}
	public Worker(int workerId, String firstName, String lastName, String email, String contactNumber, String pwd,
			String locality, String skills) {
		super();
		this.workerId = workerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.contactNumber = contactNumber;
		this.pwd = pwd;
		this.locality = locality;
		this.skills = skills;
	}
	@Override
	public String toString() {
		return "Worker [workerId=" + workerId + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", contactNumber=" + contactNumber + ", pwd=" + pwd + ", locality=" + locality + ", skills="
				+ skills + "]";
	}
	
	
	


}
