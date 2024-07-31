package com.smhrd.withpapa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.withpapa.service.RecommendService;

@Controller
public class RecommendController {
	@Autowired
	RecommendService service;
	
	@RequestMapping(value="/recommend")
	
	public void searchRecommend() {
		
		service.selectRecommendArray();
	}
}
