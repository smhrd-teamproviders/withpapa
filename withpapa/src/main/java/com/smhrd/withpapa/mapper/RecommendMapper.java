package com.smhrd.withpapa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.withpapa.model.SearchElement;
import com.smhrd.withpapa.model.SearchResult;

@Mapper
public interface RecommendMapper {
	public List<SearchResult> searchRecommend(SearchElement element);
}
