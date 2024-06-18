package com.smhrd.withpapa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.withpapa.model.SearchElement;
import com.smhrd.withpapa.service.SearchService;

@Controller
public class SearchController {
	@Autowired
	SearchService service;
	
	@RequestMapping(value="/search/searchresult")
	public void searchResult(@ModelAttribute SearchElement element) {
		
		service.searchTbProg(element.getProgType(), element.getProgNm());
	}
	
	
}
