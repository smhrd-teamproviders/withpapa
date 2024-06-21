package com.smhrd.withpapa.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.withpapa.model.ProgramInfo;

@Mapper
public interface InfoMapper {

	public ProgramInfo programInfo(String prog_id);
	
	
	
}