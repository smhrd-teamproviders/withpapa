package com.smhrd.withpapa.model;

public class SearchElement {
	
	private String progNm;
	private String placeDistrict;
	private String[] progType;
	private String progDayStart;
	private String progDayEnd;
	private String[] progIdArr;
	
	// 체험 프로그램 검색 요청에 사용되는 키워드, 지역명, 유형, 기간 검색의 DTO 생성자
	public SearchElement(String progNm, String placeDistrict, String[] progType, String progDayStart, String progDayEnd) {
		super();
		this.progNm = progNm;
		this.placeDistrict = placeDistrict;
		this.progType = progType;
		this.progDayStart = progDayStart;
		this.progDayEnd = progDayEnd;
	}
	
	// 추천 체험 프로그램 정보 요청에 사용되는 progId 조건 검색의 DTO 생성자
	public SearchElement(String[] progIdArr) {
		super();
		this.progIdArr = progIdArr;
	}

	public SearchElement() {

	}
	public String getProgNm() {
		return progNm;
	}
	public void setProgNm(String progNm) {
		this.progNm = progNm;
	}
	public String getPlaceDistrict() {
		return placeDistrict;
	}
	public void setPlaceDistrict(String placeDistrict) {
		this.placeDistrict = placeDistrict;
	}
	public String[] getProgType() {
		return progType;
	}
	public void setProgType(String[] progType) {
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
	public String[] getProgIdArr() {
		return progIdArr;
	}
	public void setProgIdArr(String[] progIdArr) {
		this.progIdArr = progIdArr;
	}
}
