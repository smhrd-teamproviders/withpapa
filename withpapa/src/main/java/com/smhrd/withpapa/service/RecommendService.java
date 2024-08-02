package com.smhrd.withpapa.service;

import java.time.LocalDate;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.withpapa.mapper.RecommendMapper;
import com.smhrd.withpapa.model.RecommendArrays;
import com.smhrd.withpapa.model.SearchElement;
import com.smhrd.withpapa.model.SearchResult;

@Service
public class RecommendService {
	@Autowired
	RecommendMapper mapper;
	
	public String[] selectRecommendArray() {
		
		// 오늘 날짜를 가져온 다음, 그 중 월 값을 int형으로 todayMonth에 대입
		LocalDate now = LocalDate.now();
		int todayMonth = now.getMonthValue();
		
		// 추천 프로그램 정보를 가지고 있는 모델 객체 선언
		RecommendArrays rcmdArrs = new RecommendArrays();
		
		// 추천 프로그램 배열을 담을 변수 선언
		String[] cndProgArray;
		
		// 몇 월인지에 따라 계절별 프로그램 배열을 선택하여 cndProgArray에 대입
		// (12 ~ 2월: 겨울, 3 ~ 5월: 봄, 6 ~ 8월: 여름, 9 ~ 11월: 가을)
		switch(todayMonth) {
		case 12:
		case 1:
		case 2:
			cndProgArray = rcmdArrs.getProgRcmdWinter();
			break;
		case 3:
		case 4:
		case 5:
			cndProgArray = rcmdArrs.getProgRcmdSpring();
			break;
		case 6:
		case 7:
		case 8:
			cndProgArray = rcmdArrs.getProgRcmdSummer();
			break;
		case 9:
		case 10:
		case 11:
			cndProgArray = rcmdArrs.getProgRcmdAutumn();
			break;
		default:
	        cndProgArray = new String[0]; // 기본값으로 빈 배열 할당
	        break;
		}	
		
		// 0 ~ 9까지의 정수 중 중복되지 않는 4개의 숫자를 담을 배열 선언
		int[] selectedIndex = randomIndex(4, 10);
		
		// DB에 조회 요청을 할 프로그램ID를 담을 배열 선언
		String[] searchProgId = new String[4];
		
		// selectedIndex에 담긴 숫자를 가지고 cndProgArray에 인덱싱하여 나온 프로그램ID를 searchProgId 배열에 대입
		for(int i = 0; i < selectedIndex.length; i++) {
			searchProgId[i] = cndProgArray[selectedIndex[i]]; 
		}
		
		return searchProgId;
	}
	
	public List<SearchResult> searchRecommend(SearchElement element) {
		return mapper.searchRecommend(element);
	}
	
	// numCount: 뽑을 수의 개수, numRange: 랜덤으로 나오는 정수의 개수(0부터 numRange-1까지)
	public int[] randomIndex(int numCount, int numRange) {

		// 결과를 저장할 배열
        int[] selectedIndex = new int[numCount];
        // 중복 체크를 위한 배열
        boolean[] used = new boolean[numRange];
        
        Random random = new Random();
        int count = 0;

        while (count < numCount) {
            int num = random.nextInt(numRange); // 0부터 numRange-1까지의 숫자 중 하나를 랜덤으로 선택
            if (!used[num]) {
            	selectedIndex[count] = num;
                used[num] = true;
                count++;
            }
        }
        
        return selectedIndex;
        
	}
	
	
}
