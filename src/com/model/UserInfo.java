package com.model;

import java.util.Date;

/**
 * UserInfo entity. @author MyEclipse Persistence Tools
 */

public class UserInfo implements java.io.Serializable {

	// Fields

	private String userNo;
	private String userNick;
	private String userName;
	private String userPassword;
	private String userSex;
	private String userDepartment;
	private String userClass;
	private String userPhone;
	private String userEmail;
	private String userAddress;
	private Date createDate;

	// Constructors

	/** default constructor */
	public UserInfo() {
	}

	/** minimal constructor */
	public UserInfo(String userNick, String userName, String userPassword, String userSex,
			String userDepartment, String userClass) {
		this.userNick = userNick;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userSex = userSex;
		this.userDepartment = userDepartment;
		this.userClass = userClass;
	}

	/** full constructor */
	public UserInfo(String userNick, String userName, String userPassword, String userSex,
			String userDepartment, String userClass, String userPhone,
			String userEmail, String userAddress, Date createDate) {
		this.userName = userName;
		this.userNick = userNick;
		this.userPassword = userPassword;
		this.userSex = userSex;
		this.userDepartment = userDepartment;
		this.userClass = userClass;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.createDate = createDate;
	}

	// Property accessors

	public String getUserNo() {
		return this.userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserSex() {
		return this.userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserDepartment() {
		return this.userDepartment;
	}

	public void setUserDepartment(String userDepartment) {
		this.userDepartment = userDepartment;
	}

	public String getUserClass() {
		return this.userClass;
	}

	public void setUserClass(String userClass) {
		this.userClass = userClass;
	}

	public String getUserPhone() {
		return this.userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddress() {
		return this.userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}