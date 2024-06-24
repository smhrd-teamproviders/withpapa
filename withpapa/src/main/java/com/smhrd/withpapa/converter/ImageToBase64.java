package com.smhrd.withpapa.converter;

import java.io.File;
import java.io.IOException;
import java.util.Base64;

import org.apache.commons.io.FileUtils;

public class ImageToBase64 {

	// 이미지파일을  base64로 인코딩한 문자열로 변경해주는 메서드 
	public String convert(File file) throws IOException {
		byte[] fileContent = FileUtils.readFileToByteArray(file);
		return Base64.getEncoder().encodeToString(fileContent);
	}
	
	public String encodeImg(String imgPathRoot, String imgName, String imgExtension)
			throws IOException {
		/**
		 * 이미지명과 유형 문자열을 이미지로 변경하는 메소드
		 * 
		 * @param imgPathRoot 이미지 파일이 있는 폴더 주소
		 * @param imgName 이미지 파일의 이름
		 * @param imgExtension 이미지 파일의 확장자명 ex) "png" "jpg" 등
		 */
		
		String imgPath = imgPathRoot+imgName+"."+imgExtension;
		File imgFile = new File(imgPath);
		String imgBase64String = convert(imgFile);
	
		return imgBase64String;
	}
	
}
