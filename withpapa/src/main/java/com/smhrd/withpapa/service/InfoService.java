package com.smhrd.withpapa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.withpapa.mapper.InfoMapper;
import com.smhrd.withpapa.model.ProgramInfo;

@Service
public class InfoService {

	@Autowired
	InfoMapper mapper;
	
	public ProgramInfo programInfo(String progId) {
		System.out.println("서비스: "+progId);
		return mapper.programInfo(progId);
			
	}
	
}
