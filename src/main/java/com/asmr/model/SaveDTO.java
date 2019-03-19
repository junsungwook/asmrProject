package com.asmr.model;

public class SaveDTO {
	int num,voted;
	String sound,username,memo;
	public int getVoted() {
		return voted;
	}
	public void setVoted(int voted) {
		this.voted = voted;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSound() {
		return sound;
	}
	public void setSound(String sound) {
		this.sound = sound;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
