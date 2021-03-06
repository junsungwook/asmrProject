package com.asmr.mapper;

import java.util.List;

import com.asmr.model.AsmrVoted;
import com.asmr.model.CommentDTO;
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
	public List<CommentDTO> commentList();
	public void commentInsert(CommentDTO co);
	public List<SaveDTO> colaboList();
	public void votedUp(String num);
	public void votedSave(AsmrVoted vote);
	public void votedDown(String num);
	public void votedDelete(AsmrVoted vote);
	public int votedCheck(AsmrVoted vote);
}
