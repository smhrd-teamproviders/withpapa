package com.smhrd.withpapa.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class SearchElement {
	
	private String progNm;
	private String placeDistrict;
	private String progType;
	private String progDayStart;
	private String progDayEnd;
	public SearchElement(String progNm, String placeDistrict, String progType, String progDayStart, String progDayEnd) {
		super();
		this.progNm = progNm;
		this.placeDistrict = placeDistrict;
		this.progType = progType;
		this.progDayStart = progDayStart;
		this.progDayEnd = progDayEnd;
	}
	public SearchElement() {
		super();
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
	
	
	
	
	
	
	
}
