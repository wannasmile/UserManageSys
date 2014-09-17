package com.model;

import java.util.Date;

/**
 * AdminInfo entity. @author MyEclipse Persistence Tools
 */

public class AdminInfo implements java.io.Serializable {

	// Fields

	private String adminNo;
	private String adminName;
	private String adminPassword;
	private Date createDate;

	// Constructors

	/** default constructor */
	public AdminInfo() {
	}

	/** minimal constructor */
	public AdminInfo(String adminName, String adminPassword) {
		this.adminName = adminName;
		this.adminPassword = adminPassword;
	}

	/** full constructor */
	public AdminInfo(String adminName, String adminPassword, Date createDate) {
		this.adminName = adminName;
		this.adminPassword = adminPassword;
		this.createDate = createDate;
	}

	// Property accessors

	public String getAdminNo() {
		return this.adminNo;
	}

	public void setAdminNo(String adminNo) {
		this.adminNo = adminNo;
	}

	public String getAdminName() {
		return this.adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminPassword() {
		return this.adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}