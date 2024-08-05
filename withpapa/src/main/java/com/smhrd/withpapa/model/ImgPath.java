package com.smhrd.withpapa.model;

// 프로그램 이미지 디렉토리 경로를 담는 VO
public class ImgPath {
	private final String imgPathImgNm = "C:\\Users\\smhrd\\git\\withpapa\\withpapa\\src\\main\\webapp\\resources\\img\\img_program\\";
	private final String imgPathProgType = "C:\\Users\\smhrd\\git\\withpapa\\withpapa\\src\\main\\webapp\\resources\\img\\img_type\\";
	
	public ImgPath() {
		super();
	}

	public String getImgPathImgNm() {
		return imgPathImgNm;
	}

	public String getImgPathProgType() {
		return imgPathProgType;
	}
	
	
}
