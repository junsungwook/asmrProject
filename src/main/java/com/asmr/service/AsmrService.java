package com.asmr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asmr.mapper.AsmrMapper;
import com.asmr.model.CommentDTO;
import com.asmr.model.SaveDTO;
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
		System.out.println("로그인 서비스 진입성공-----------");
		String check = "no";
		int size = mapper.login(user);
		System.out.println("size = "+size);
		if(size!=0) {
			check="ok";
		}
		return check;
	}
	public void soundsave(SaveDTO save) {
		System.out.println("저장 서비스 진입성공-----------");
		String name = save.getUsername();
		int count = mapper.nameCheck(name);
		if(count==0) {
			mapper.soundsave(save);
		}
		else {
			mapper.soundUpdate(save);
		}
	}
	public SaveDTO soundLoad(String username) {
		System.out.println("로드 서비스 진입성공----------");
		return mapper.soundLoad(username);
	}
	
	public List<CommentDTO> commentList() {
		List<CommentDTO> arr = mapper.commentList();
		return arr;
	}
	
	public void commentInsert(CommentDTO co) {
		mapper.commentInsert(co);
	}
	
	public List<SaveDTO> colaboList(){
		List<SaveDTO> arr = mapper.colaboList();
		return arr;
	}
	
	public void votedUp(String username) {
		mapper.votedUp(username);
	}
}
