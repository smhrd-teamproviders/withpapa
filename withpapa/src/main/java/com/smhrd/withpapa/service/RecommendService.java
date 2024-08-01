package com.smhrd.withpapa.service;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.withpapa.mapper.RecommendMapper;
import com.smhrd.withpapa.model.RecommendArrays;

@Service
public class RecommendService {
	@Autowired
	RecommendMapper mapper;
	
	public void selectRecommendArray() {
		
		LocalDate now = LocalDate.now();
		int todayMonth = now.getMonthValue();
		//System.out.println("오늘은"+todayMonth);
		
		RecommendArrays rcmdArrs = new RecommendArrays();
//		System.out.println(rcmdArrs.getProgRcmdSummer());
	}
	
}
