package com.smhrd.withpapa;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.withpapa.converter.ImageToBase64;
import com.smhrd.withpapa.model.ImgPath;
import com.smhrd.withpapa.model.ProgramInfo;
import com.smhrd.withpapa.service.InfoService;

@Controller
public class InfoController {

	@Autowired
	InfoService service;

	@RequestMapping(value = "/search/programinfo")
	public String programInfo(@RequestParam("progId") String progId, Model model) throws IOException {
		ProgramInfo prog = service.programInfo(progId);

		// 슬라이싱하기 위해 문자형 or 숫자형으로 변환
		String progReptDayStart = prog.getProgReptDayStart();
		String progReptDayEnd = prog.getProgReptDayEnd();
		int progReptTf = Integer.parseInt(prog.getProgReptTf());
		String progDayStart = prog.getProgDayStart();
		String progDayEnd = prog.getProgDayEnd();
		String progTmStart = prog.getProgTmStart();
		String progTmEnd = prog.getProgTmEnd();
		String progPeriod = "";
		String progTime = "";

		// progReptTf - view에서 보여주는 값 변경 (0201 -> 2월, 1031 -> 10월)
		// 매년 반복되는 경우
		if (progReptTf == 1) { // 문자열 잘라내기
			int viewMonthStart = Integer.parseInt(progReptDayStart.substring(0, 2));
			String viewDayStart = progReptDayStart.substring(2);
			int viewMonthEnd = Integer.parseInt(progReptDayEnd.substring(0, 2));
			String viewDayEnd = progReptDayEnd.substring(2);
			 // 0101, 1231 인 경우 '상시'로 표시
			if (progReptDayStart.equals("0101") && progReptDayEnd.equals("1231")) {
				progPeriod = "상시";
			 // 01(일) 표기 -> '월' 표기로 변경
			 // 시작일이 01, 끝나는 일이 28일 이상인 경우
			} else if (viewDayStart.equals("01") && Integer.parseInt(viewDayEnd) >= 28) {
				viewDayStart = "월";
				viewDayEnd = "월";
				progPeriod = "매년 " + (viewMonthStart + viewDayStart) + " ~ " + (viewMonthEnd + viewDayEnd);
			 // 시작일이 01이외, 끝나는 일이 1~27일인 경우
			} else {
				viewDayStart = "월";
				viewDayEnd = "월";
				progPeriod = "매년 " + (viewMonthStart + viewDayStart) + " ~ " + (viewMonthEnd + viewDayEnd);
			} // 2024년에 한정되는 경우 
		} else { // 문자열 잘라내기
			int viewYearDayStart = Integer.parseInt(progDayStart.substring(0, 4)); // 2024
			int viewMonthDayStart = Integer.parseInt(progDayStart.substring(4, 6)); // 04
			String viewDateStart = progDayStart.substring(6); // 06

			int viewYearDayEnd = Integer.parseInt(progDayEnd.substring(0, 4)); // 2024
			int viewMonthDayEnd = Integer.parseInt(progDayEnd.substring(4, 6)); // 10
			String viewDateEnd = progDayEnd.substring(6); // 31
			progPeriod = viewYearDayStart + "." + viewMonthDayStart + "." + viewDateStart + " ~ " + viewYearDayEnd + "."
					+ viewMonthDayEnd + "." + viewDateEnd;
		}

		// progTmStart, progTmEnd - view에서 보여주는 값 변경
		int viewHourTmStart = 0;
		int viewHourTmEnd = 0;
		String viewMinTmStart = "";
		String viewMinTmEnd = "";

		// 문자열 잘라내기
		if (!progTmStart.equals("")) { 
			viewHourTmStart = Integer.parseInt(progTmStart.substring(0, 2));
			viewMinTmStart = progTmStart.substring(2);
		}
		if (!progTmEnd.equals("")) { 
			viewHourTmEnd = Integer.parseInt(progTmEnd.substring(0, 2));
			viewMinTmEnd = progTmEnd.substring(2);
		}
		// progTmStrart, progTmEnd 값이 null인 경우 
		if (progTmStart.equals("") && progTmEnd.equals("")) {
			progTime = "-";
		} else { // progTmStart, progTmEnd 값이 null이 아닌 경우
			String viewTmStart = viewHourTmStart + ":" + viewMinTmStart;
			String viewTmEnd = viewHourTmEnd + ":" + viewMinTmEnd;

			if (viewHourTmStart == 0) {
				viewTmStart = "";
			}
			if (viewHourTmEnd == 0) {
				viewTmEnd = "";
			}
			progTime = viewTmStart + " ~ " + viewTmEnd;
		}
		
		// 프로젝트 내 프로그램 이미지 디렉토리 주소 값이 담긴 VO 객체 선언
		ImgPath imgPath = new ImgPath();
		
		// 프로그램 이미지 이름, 유형을 이미지로 변환
		ImageToBase64 converter = new ImageToBase64();
		
		prog.setProgType(converter.encodeImg(imgPath.getImgPathProgType(), prog.getProgType(), "png"));
		prog.setImgNm(converter.encodeImg(imgPath.getImgPathImgNm(), prog.getImgNm(), "png"));

		//model 
		model.addAttribute("progNm", prog.getProgNm());
		model.addAttribute("progType", prog.getProgType());
		model.addAttribute("progDayStart", prog.getProgDayStart());
		model.addAttribute("progDayEnd", prog.getProgDayEnd());
		model.addAttribute("progReptDayStart", prog.getProgReptDayStart());
		model.addAttribute("progReptDayEnd", prog.getProgReptDayEnd());
		model.addAttribute("progReptTf", prog.getProgReptTf());
		model.addAttribute("progReptDow", prog.getProgReptDow());
		model.addAttribute("progCost", prog.getProgCost());
		model.addAttribute("progUrl", prog.getProgUrl());
		model.addAttribute("progContent", prog.getProgContent());
		model.addAttribute("progTmStart", prog.getProgTmStart());
		model.addAttribute("progTmEnd", prog.getProgTmEnd());

		model.addAttribute("placeNm", prog.getPlaceNm());
		model.addAttribute("placeAddress", prog.getPlaceAddress());
		model.addAttribute("placePhoneNo", prog.getPlacePhoneNo());
		model.addAttribute("placeLatitd", prog.getPlaceLatitd());
		model.addAttribute("placeLongtd", prog.getPlaceLongtd());

		model.addAttribute("imgNm", prog.getImgNm());

		model.addAttribute("progPeriod", progPeriod);
		model.addAttribute("progTime", progTime);
		return "programinfo";

	}

}
