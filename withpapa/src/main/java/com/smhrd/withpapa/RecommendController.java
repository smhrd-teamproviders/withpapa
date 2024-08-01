package com.smhrd.withpapa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.withpapa.service.RecommendService;

@Controller
public class RecommendController {
	@Autowired
	RecommendService service;
	
	@RequestMapping(value="/recommend", method = RequestMethod.GET)
	@ResponseBody
	public void searchRecommend() {
		
		service.selectRecommendArray();
	}
}
