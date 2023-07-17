package com.example.boot07.gallery.dto;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//lombok 을 이용한 Dto 만들기
@Alias("galleryDto")
@Data //setter getter 만들기
@Builder // setter 메소드 대신에 chain 형태로 값을 넣어줄 수 있게 만들어 준다.
@NoArgsConstructor// 디폴트 생성자
@AllArgsConstructor//인자로 모든 값이 전달되는 생성자
public class GalleryDto {
	private int num;
	private String writer;
	private String caption;
	private String imagePath;
	private String regdate;
	
	private int startRowNum;
	private int endRowNum;
	
	private int prevNum;//이전글의 글번호
	private int nextNum;//다음글의 글번호
	
	private MultipartFile image;//이미지 파일 업로드 처리를 위한 필드
	
}
