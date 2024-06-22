package com.smhrd.withpapa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.withpapa.model.SearchElement;
import com.smhrd.withpapa.model.SearchResult;

@Mapper
public interface SearchMapper {
	
	// 검색 결과 불러오기	(프로그램의 id, 유형, 이름)
	public List<SearchResult> searchTbProg(SearchElement element);
}
