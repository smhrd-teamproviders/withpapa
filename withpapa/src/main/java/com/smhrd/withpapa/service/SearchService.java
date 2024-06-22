package com.smhrd.withpapa.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.withpapa.mapper.SearchMapper;
import com.smhrd.withpapa.model.SearchElement;
import com.smhrd.withpapa.model.SearchResult;

@Service
public class SearchService {

	@Autowired
	SearchMapper mapper;
	
	public List<SearchResult> searchTbProg(SearchElement element) {
		// mapper에 넘겨야 하는 파라미터(객체)는 하나만 넘겨야 함
		return mapper.searchTbProg(element);
		
	}
	
	public List<SearchResult> filterToDate(List<SearchResult> listProg, SearchElement element) {
		// 오늘의 연도 구하기
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy");
		String yearNow = now.format(formatter);
		
		// 검색 조건의 시작일과 종료일을 int로 형변환
		int dayStart = Integer.parseInt(element.getProgDayStart());
		int dayEnd = Integer.parseInt(element.getProgDayEnd());
		
		// 프로그램의 시작일과 종료일 선언 및 초기화
		int dayProgStart = 0;
		int dayProgEnd = 0;
		
		// 조건을 충족하는 프로그램을 담을 List
		List<SearchResult> result = new ArrayList<SearchResult>();
		
		// 모든 조건을 충족시키는 프로그램만 새로운 리스트인 result에 담고
		// 조건을 충족하지 못하는 프로그램은 continue를 통해 넘긴다
		for(SearchResult prog : listProg) {
			
			// 시작일, 종료일 설정
			if(prog.getProgReptTf() == 1) { // 매년 반복
				dayProgStart = Integer.parseInt(yearNow + prog.getProgReptDayStart());
				dayProgEnd = Integer.parseInt(yearNow + prog.getProgReptDayEnd()) + (1 * 10000);
			} else { // 매년 반복하지는 않음
				dayProgStart = Integer.parseInt(prog.getProgDayStart());
				dayProgEnd = Integer.parseInt(prog.getProgDayEnd());
			}
			
			// 검색 기간 내에 단 하루라도 포함되지 않는 프로그램들은 제외
			if((dayEnd < dayProgStart) || (dayProgEnd < dayStart)) {
				continue;
			}
			
			result.add(prog);
		}
		
		return result;
	}
	
}
