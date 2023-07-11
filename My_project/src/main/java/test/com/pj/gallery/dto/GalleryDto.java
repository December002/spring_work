package test.com.pj.gallery.dto;

import org.springframework.web.multipart.MultipartFile;

public class GalleryDto {
	private int num;
	private int ref_group;
	private int comment_group;
	private String writer;
	private String caption;
	private String imagePath;
	private String regdate;
	private String profile;
	
	private MultipartFile image;
	
	private int startRowNum;
	private int endRowNum;
	
	
}
