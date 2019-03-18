package com.asmr.mapper;

import com.asmr.model.SaveDTO;
import com.asmr.model.UserDTO;

public interface AsmrMapper {

	public void userInsert(UserDTO user);
	public int idCheck(String userid);
	public int login(UserDTO user);
	public void soundsave(SaveDTO save);
	public int nameCheck(String name);
	public void soundUpdate(SaveDTO save);
	public SaveDTO soundLoad(String username);
}
