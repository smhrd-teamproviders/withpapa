package com.smhrd.withpapa.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.withpapa.model.ProgramInfo;

@Mapper
public interface InfoMapper {

	// 프로그램 상세정보 불러오기 
	public ProgramInfo programInfo(String prog_id);
	
	
	
}