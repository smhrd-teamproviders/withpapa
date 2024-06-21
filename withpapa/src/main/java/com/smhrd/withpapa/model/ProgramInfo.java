package com.smhrd.withpapa.model;

public class ProgramInfo {

	// 검색 결과를 보여주는 데 필요한 프로그램 정보들을 모은 클래스
	// 이 클래스는 뒤에 만들 프로그램 상세 정보 클래스인
	// ProgramInfoPlus의 상위 클래스가 된다 - 상속 사용할 예정
	
	private String progNm;
	private String progType;
	private String progDayStart;
	private String progDayEnd;
	private String progReptDayStart;
	private String progReptDayEnd;
	private String progReptTf;
	private int progReptDow;
	private String progCost;
	private String progUrl;
	private String progContent;
	private String progTmStart;
	private String progTmEnd;
		
	private String placeNm;
	private String placeAddress;
	private String placePhoneNo;
	private String placeLatitd;
	private String placeLongtd;
	
	private String imgNm;
	
		
	public String getProgNm() {
		return progNm;
	}
	public void setProgNm(String progNm) {
		this.progNm = progNm;
	}
	public String getProgType() {
		return progType;
	}
	public void setProgType(String progType) {
		this.progType = progType;
	}
	public String getProgDayStart() {
		return progDayStart;
	}
	public void setProgDayStart(String progDayStart) {
		this.progDayStart = progDayStart;
	}
	public String getProgDayEnd() {
		return progDayEnd;
	}
	public void setProgDayEnd(String progDayEnd) {
		this.progDayEnd = progDayEnd;
	}
	
	public String getProgReptDayStart() {
		return progReptDayStart;
	}
	public void setProgReptDayStart(String progReptDayStart) {
		this.progReptDayStart = progReptDayStart;
	}
	public String getProgReptDayEnd() {
		return progReptDayEnd;
	}
	public void setProgReptDayEnd(String progReptDayEnd) {
		this.progReptDayEnd = progReptDayEnd;
	}
	
	public String getProgReptTf() {
		return progReptTf;
	}
	public void setProgReptTf(String progReptTf) {
		this.progReptTf = progReptTf;
	}
	public int getProgReptDow() {
		return progReptDow;
	}
	public void setProgReptDow(int progReptDow) {
		this.progReptDow = progReptDow;
	}
	
	public String getProgCost() {
		return progCost;
	}
	public void setProgCost(String progCost) {
		this.progCost = progCost;
	}
	public String getProgUrl() {
		return progUrl;
	}
	public void setProgUrl(String progUrl) {
		this.progUrl = progUrl;
	}
	
	public String getProgContent() {
		return progContent;
	}
	public void setProgContent(String progContent) {
		this.progContent = progContent;
	}
	
	public String getProgTmStart() {
		return progTmStart;
	}
	public void setProgTmStart(String progTmStart) {
		this.progTmStart = progTmStart;
	}
	public String getProgTmEnd() {
		return progTmEnd;
	}
	public void setProgTmEnd(String progTmEnd) {
		this.progTmEnd = progTmEnd;
	}

	public String getPlaceNm() {
		return placeNm;
	}
	public void setPlaceNm(String placeNm) {
		this.placeNm = placeNm;
	}
	public String getPlaceAddress() {
		return placeAddress;
	}
	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}
	public String getPlacePhoneNo() {
		return placePhoneNo;
	}
	public void setPlacePhoneNo(String placePhoneNo) {
		this.placePhoneNo = placePhoneNo;
	}
	public String getPlaceLatitd() {
		return placeLatitd;
	}
	public void setPlaceLatitd(String placeLatitd) {
		this.placeLatitd = placeLatitd;
	}
	public String getPlaceLongtd() {
		return placeLongtd;
	}
	public void setPlaceLongtd(String placeLongtd) {
		this.placeLongtd = placeLongtd;
	}
	public String getImgNm() {
		return imgNm;
	}
	public void setImgNm(String imgNm) {
		this.imgNm = imgNm;
	}
		
	public ProgramInfo( String progNm, String progType, String progDayStart, String progDayEnd,
			String progTmStart, String progTmEnd, String progReptTf, int progReptDow, String progCost, String progUrl,
			 String progContent, String placeNm, String placeAddress, String placePhoneNo, String placeLatitd, String placeLongtd, 
			 String imgNm) {
		super();

		this.progNm = progNm;
		this.progType = progType;
		this.progDayStart = progDayStart;
		this.progDayEnd = progDayEnd;
		this.progTmStart = progTmStart;
		this.progTmEnd = progTmEnd;
		this.progReptTf = progReptTf;
		this.progReptDow = progReptDow;
		this.progCost = progCost;
		this.progUrl = progUrl;
     	this.progContent = progContent;
     	
     	this.placeNm = placeNm;
     	this.placeAddress = placeAddress;
     	this.placePhoneNo = placePhoneNo;
     	this.placeLatitd = placeLatitd;
     	this.placeLongtd = placeLongtd;
     	
     	this.imgNm = imgNm;
     	   	
     	
	}
	
	public ProgramInfo() {
		
	}
	
	
	
	
	
	
	
}