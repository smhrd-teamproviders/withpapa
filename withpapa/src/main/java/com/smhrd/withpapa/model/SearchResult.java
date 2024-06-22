package com.smhrd.withpapa.model;

public class SearchResult {
	
	private String progId;
	private String progNm;
	private String placeDistrict;
	private String progType;
	private String progDayStart;
	private String progDayEnd;
	private String progReptDayStart;
	private String progReptDayEnd;
	private int progReptTf;
	private String progReptDow;
	private String imgNm;
	
	public SearchResult(String progId, String progNm, String placeDistrict, String progType, String progDayStart,
			String progDayEnd, String progReptDayStart, String progReptDayEnd, int progReptTf, String progReptDow,
			String imgNm) {
		super();
		this.progId = progId;
		this.progNm = progNm;
		this.placeDistrict = placeDistrict;
		this.progType = progType;
		this.progDayStart = progDayStart;
		this.progDayEnd = progDayEnd;
		this.progReptDayStart = progReptDayStart;
		this.progReptDayEnd = progReptDayEnd;
		this.progReptTf = progReptTf;
		this.progReptDow = progReptDow;
		this.imgNm = imgNm;
	}

	public SearchResult() {
		
	}

	public String getProgId() {
		return progId;
	}

	public void setProgId(String progId) {
		this.progId = progId;
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

	public int getProgReptTf() {
		return progReptTf;
	}

	public void setProgReptTf(int progReptTf) {
		this.progReptTf = progReptTf;
	}

	public String getProgReptDow() {
		return progReptDow;
	}

	public void setProgReptDow(String progReptDow) {
		this.progReptDow = progReptDow;
	}

	public String getImgNm() {
		return imgNm;
	}

	public void setImgNm(String imgNm) {
		this.imgNm = imgNm;
	}
	
	
	
	
}
