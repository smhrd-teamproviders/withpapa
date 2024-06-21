package com.smhrd.withpapa;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.withpapa.converter.ImageToBase64;
import com.smhrd.withpapa.model.ProgramInfo;
import com.smhrd.withpapa.service.InfoService;

@Controller
public class InfoController {

	@Autowired
	InfoService service;
	
	@RequestMapping(value="/info/programinfo")
	public String programInfo(@RequestParam("progId")String progId,
						      Model model) throws IOException {
		ProgramInfo prog = service.programInfo(progId);
		
		String progReptDayStart = prog.getProgReptDayStart();
		String progReptDayEnd = prog.getProgReptDayEnd();
		int progReptTf = Integer.parseInt(prog.getProgReptTf());
		String progDayStart = prog.getProgDayStart();
		String progDayEnd = prog.getProgDayEnd();
		String progTmStart = prog.getProgTmStart();
		String progTmEnd = prog.getProgTmEnd();
		String progPeriod = "";
		String progTime = "";
		
		// progReptTf - view에서 보여주는 값 변경
		if(progReptTf ==1 ) {
			int viewMonthStart = Integer.parseInt(progReptDayStart.substring(0, 2));
		    String viewDayStart = progReptDayStart.substring(2);
		    int viewMonthEnd = Integer.parseInt(progReptDayEnd.substring(0, 2));
		    String viewDayEnd = progReptDayEnd.substring(2);
			if(progReptDayStart.equals("0101") && progReptDayEnd.equals("1231")) {
				progPeriod="상시";
			}else if(viewDayStart.equals("01") && Integer.parseInt(viewDayEnd) >=28) {
				viewDayStart="월";
				viewDayEnd="월";
				progPeriod = "매년 " + (viewMonthStart + viewDayStart) + " ~ " + (viewMonthEnd + viewDayEnd);
			}else {
				viewDayStart="월";
				viewDayEnd="월";
				progPeriod = "매년 " + (viewMonthStart + viewDayStart) + " ~ " + (viewMonthEnd + viewDayEnd);
			}
		}
		else {
	      int viewYearDayStart = Integer.parseInt(progDayStart.substring(0, 4)); //2024
	      int viewMonthDayStart = Integer.parseInt(progDayStart.substring(4, 6)); //04
	      String viewDateStart = progDayStart.substring(6); //06
	      
	      int viewYearDayEnd = Integer.parseInt(progDayEnd.substring(0, 4)); //2024
	      int viewMonthDayEnd = Integer.parseInt(progDayEnd.substring(4, 6)); //10
	      String viewDateEnd = progDayEnd.substring(6); //31
		  progPeriod = viewYearDayStart + "." + viewMonthDayStart + "." +  viewDateStart + " ~ " + viewYearDayEnd + "." + viewMonthDayEnd + "." + viewDateEnd;
		}
		
		// progTmStart, progTmEnd - view에서 보여주는 값 변경
		int viewHourTmStart=0;
		int viewHourTmEnd =0;
		String viewMinTmStart="";
		String viewMinTmEnd ="";
		
		System.out.println(progTmStart != null);
		if(!progTmStart.equals("")) {
		 viewHourTmStart = Integer.parseInt(progTmStart.substring(0, 2));
		 viewMinTmStart = progTmStart.substring(2);
		}
		if(!progTmEnd.equals("")) {
		 viewHourTmEnd = Integer.parseInt(progTmEnd.substring(0, 2));
		 viewMinTmEnd = progTmEnd.substring(2);
		}
		
		if(progTmStart.equals("") && progTmEnd.equals("")) {
			progTime = "-";
		}else {
	         String viewTmStart = viewHourTmStart + ":" + viewMinTmStart;
	         String viewTmEnd = viewHourTmEnd + ":" + viewMinTmEnd;
	         
	         if(viewHourTmStart == 0) {
	            viewTmStart = "";
	         }
	         if(viewHourTmEnd == 0) {
	            viewTmEnd = "";
	         }
	         progTime = viewTmStart + " ~ " + viewTmEnd;
		}
		
		
		String imgPathRoot = "C:\\Users\\smhrd\\git\\withpapa\\withpapa\\src\\main\\webapp\\resources\\img\\img_type\\";
		
		String imgProgType = prog.getProgType();
		
		String imgPath = imgPathRoot + imgProgType +".png";
		File imgFile = new File(imgPath);
		
		ImageToBase64 converter = new ImageToBase64();
		String imgBase64String = converter.convert(imgFile);
		
		System.out.println(imgBase64String);
		prog.setProgType(imgBase64String);
		
				
		String progPathRoot = "C:\\Users\\smhrd\\git\\withpapa\\withpapa\\src\\main\\webapp\\resources\\img\\img_program\\";
		
		String progProgImg = prog.getImgNm();
		
		String progPath = progPathRoot + progProgImg +".png";
		File progFile = new File(progPath);
		
		String imgBase64String2 = converter.convert(progFile);
		
		System.out.println(imgBase64String2);
		prog.setImgNm(imgBase64String2);
		
				
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
