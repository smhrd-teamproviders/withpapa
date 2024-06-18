package com.smhrd.withpapa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.withpapa.model.SearchElement;

@Mapper
public interface SearchMapper {
	
	// 검색 결과 불러오기
	public void searchResult(SearchElement element);
	
	public void searchTbProg(List<String> progType, String progNm);
}
