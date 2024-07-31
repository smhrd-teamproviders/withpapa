package com.smhrd.withpapa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.smhrd.withpapa.service.RecommendService;

@Controller
public class RecommendController {
	@Autowired
	RecommendService service;
}
