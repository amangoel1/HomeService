package com.cts.homeservice.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Requests {

	private int requestId;
	private int userId;
	private String description;
	private String date;
	private String time;
	private String serviceType;
	private String locality;
	private int workerId;
	
	@Id
	@Column
	public int getRequestId() {
		return requestId;
	}
	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}
	@Column
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Column
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Column
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Column
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	@Column
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	@Column
	public int getWorkerId() {
		return workerId;
	}
	public void setWorkerId(int workerId) {
		this.workerId = workerId;
	}
	@Column
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Requests(int requestId, int userId, String description, String date, String time, String serviceType,
			String locality, int workerId) {
		super();
		this.requestId = requestId;
		this.userId = userId;
		this.description = description;
		this.date = date;
		this.time = time;
		this.serviceType = serviceType;
		this.locality = locality;
		this.workerId = workerId;
	}
	@Override
	public String toString() {
		return "Requests [requestId=" + requestId + ", userId=" + userId + ", description=" + description + ", date="
				+ date + ", time=" + time + ", serviceType=" + serviceType + ", locality=" + locality + ", workerId="
				+ workerId + "]";
	}
	public Requests() {
		super();
	}
	
	
	
	
	
	
	
}
