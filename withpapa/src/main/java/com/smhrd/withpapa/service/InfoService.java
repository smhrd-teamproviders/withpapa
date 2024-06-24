package com.smhrd.withpapa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.withpapa.mapper.InfoMapper;
import com.smhrd.withpapa.model.ProgramInfo;

@Service
public class InfoService {

	@Autowired
	InfoMapper mapper;
	
	public ProgramInfo programInfo(String progId) {	
		return mapper.programInfo(progId);
			
	}
	
}
