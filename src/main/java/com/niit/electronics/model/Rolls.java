package com.niit.electronics.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Rolls {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int rollsId;
	private int userId;
	private String rolls;
	public int getRollsId() {
		return rollsId;
	}
	public void setRollsId(int rollsId) {
		this.rollsId = rollsId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getRolls() {
		return rolls;
	}
	public void setRolls(String rolls) {
		this.rolls = rolls;
	}
	
}
