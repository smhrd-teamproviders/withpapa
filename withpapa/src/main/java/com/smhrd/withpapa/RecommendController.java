package com.smhrd.withpapa;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.withpapa.model.SearchElement;
import com.smhrd.withpapa.model.SearchResult;
import com.smhrd.withpapa.service.RecommendService;

@Controller
public class RecommendController {
	@Autowired
	RecommendService service;
	
	@RequestMapping(value="/recommend", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<SearchResult> searchRecommend() throws IOException {
		
		// 추천 프로그램 목록에서 중복되지 않도록 무작위로 프로그램 4개의 프로그램ID를 가져오기
		String[] searchProgId = service.selectRecommendArray();
		
		// 프로그램ID로 검색하기 위해 검색 DTO 선언 및 프로그램ID 대입 
		SearchElement element = new SearchElement(searchProgId);
		
		// 프로그램ID와 일치한 프로그램의 progId, progNm, placeDistrict, ingNm을 가져와서 result에 대입
		List<SearchResult> result = service.searchRecommend(element);
		
		for(SearchResult prog : result) {
			System.out.println("ID: "+prog.getProgId());
			System.out.println("프로그램명: "+prog.getProgNm());
			System.out.println("지역명: "+prog.getPlaceDistrict());
			System.out.println("이미지명: "+prog.getImgNm());
			System.out.println("-------------------");
		}
		
		return result;
	}
}
