package com.asmr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asmr.mapper.AsmrMapper;
import com.asmr.model.UserDTO;

@Service
public class AsmrService {
	@Autowired
	private AsmrMapper mapper;
	
	public void userInsert(UserDTO user) {
		mapper.userInsert(user);
	}
	public String idCheck(String userid) {
		String check = "ok";
		int size = mapper.idCheck(userid);
		System.out.println(size);
		if(size!=0) {
			check="no";
		}
		return check;
	}
	public String login(UserDTO user) {
		System.out.println("서비스 진입성공");
		String check = "no";
		int size = mapper.login(user);
		System.out.println("size = "+size);
		if(size!=0) {
			check="ok";
		}
		return check;
	}
}
