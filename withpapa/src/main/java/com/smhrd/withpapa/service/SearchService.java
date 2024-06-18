package com.smhrd.withpapa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.withpapa.mapper.SearchMapper;
import com.smhrd.withpapa.model.SearchElement;

@Service
public class SearchService {

	@Autowired
	SearchMapper mapper;
	
	public void searchResult(SearchElement element) {
		mapper.searchResult(element);
	}
	
	public void searchTbProg(List<String> progType, String progNm) {
		SearchElement element = new SearchElement();
		mapper.searchTbProg(progType, progNm);
		
		
	}
	
}
