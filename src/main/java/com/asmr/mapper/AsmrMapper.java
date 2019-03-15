package com.asmr.mapper;

import com.asmr.model.UserDTO;

public interface AsmrMapper {

	public void userInsert(UserDTO user);
	public int idCheck(String userid);
	public int login(UserDTO user);
}
