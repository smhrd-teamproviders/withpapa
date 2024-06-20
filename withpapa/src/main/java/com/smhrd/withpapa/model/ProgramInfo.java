package com.smhrd.withpapa.model;

public class ProgramInfo {

	// 검색 결과를 보여주는 데 필요한 프로그램 정보들을 모은 클래스
	// 이 클래스는 뒤에 만들 프로그램 상세 정보 클래스인
	// ProgramInfoPlus의 상위 클래스가 된다 - 상속 사용할 예정
	
	
	private String progId;
	private String progType;
	private String progNm;
	private String progDayStart;
	private String progDayEnd;
	private String progTmStart;
	private String progTmEnd;
	private String progReptTf;
	private int progReptDow;
	private String progCost;
	private String progUrl;
	private String placeId;
	private String progContent;
	
	
	public String getProgId() {
		return progId;
	}
	public void setProgId(String progId) {
		this.progId = progId;
	}
	public String getProgType() {
		return progType;
	}
	public void setProgType(String progType) {
		this.progType = progType;
	}
	public String getProgNm() {
		return progNm;
	}
	public void setProgNm(String progNm) {
		this.progNm = progNm;
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
	public String getPlaceId() {
		return placeId;
	}
	public void setPlaceId(String placeId) {
		this.placeId = placeId;
	}
	public String getProgContent() {
		return progContent;
	}
	public void setProgContent(String progContent) {
		this.progContent = progContent;
	}
	public ProgramInfo(String progId, String progType, String progNm, String progDayStart, String progDayEnd,
			String progTmStart, String progTmEnd, String progReptTf, int progReptDow, String progCost, String progUrl,
			String placeId, String progContent) {
		super();
		this.progId = progId;
		this.progType = progType;
		this.progNm = progNm;
		this.progDayStart = progDayStart;
		this.progDayEnd = progDayEnd;
		this.progTmStart = progTmStart;
		this.progTmEnd = progTmEnd;
		this.progReptTf = progReptTf;
		this.progReptDow = progReptDow;
		this.progCost = progCost;
		this.progUrl = progUrl;
		this.placeId = placeId;
		this.progContent = progContent;
	}
	
	public ProgramInfo() {
		
	}
	
}
