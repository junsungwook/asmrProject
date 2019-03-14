package com.asmr.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asmr.mapper.BoardMapper;
import com.asmr.model.BoardDTO;



@Service
public class BoardService {
	@Autowired
	private BoardMapper mapper;
	

	
}
