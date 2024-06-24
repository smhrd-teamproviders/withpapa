package com.smhrd.withpapa;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smhrd.withpapa.converter.ImageToBase64;
import com.smhrd.withpapa.model.SearchElement;
import com.smhrd.withpapa.model.SearchResult;
import com.smhrd.withpapa.service.SearchService;

@Controller
public class SearchController {
	@Autowired
	SearchService service;

	@RequestMapping(value = "/search/searchresult", method = RequestMethod.POST)
	public String searchResult(@ModelAttribute SearchElement element, Model model) throws IOException {
		// 검색 요청에 날짜 정보가 없을 경우, 시작일을 오늘로, 종료일은 올해 12월 31일로 값을 변경
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		String dayStartIfNull = now.format(formatter);
		String dayEndIfNull = dayStartIfNull.substring(0, 4) + "1231";
		
		if(element.getProgDayStart().equals("")) {
			element.setProgDayStart(dayStartIfNull);
		}
		
		if(element.getProgDayEnd().equals("")) {
			element.setProgDayEnd(dayEndIfNull);
		}
		
		// 시작일, 종료일 값에서 '-' 제거
		element.setProgDayStart(element.getProgDayStart().replace("-", ""));
		element.setProgDayEnd(element.getProgDayEnd().replace("-", ""));

		// 검색 키워드, 지역, 유형 정보를 통해 조건에 부합하는 프로그램 목록을 조회하여 반환
		List<SearchResult> listProg = service.searchTbProg(element);

		// 위에서 반환된 프로그램 목록 중에서, 시작일과 종료일 사이에 있는 프로그램만을 다시 반환
		List<SearchResult> result = service.filterToDate(listProg, element);
		
		// 프로젝트 내 프로그램 이미지 폴더 주소 입력
		String imgPathRootImgNm = "C:\\Users\\smhrd\\git\\withpapa\\withpapa\\src\\main\\webapp\\resources\\img\\img_program\\";
		String imgPathRootProgType = "C:\\Users\\smhrd\\git\\withpapa\\withpapa\\src\\main\\webapp\\resources\\img\\img_type\\";		
		
		ImageToBase64 converter = new ImageToBase64();
		
		// 프로그램 이미지명, 유형에 해당하는 이미지를 인코딩
		for (SearchResult prog : result) {
			prog.setImgNm(converter.encodeImg(imgPathRootImgNm, prog.getImgNm(), "png"));
			prog.setProgType(converter.encodeImg(imgPathRootProgType, prog.getProgType(), "png"));
		}
		
		// model에 List<SearchResult> result 추가
		model.addAttribute("result", result);
		return "searchresult";
	}

}
