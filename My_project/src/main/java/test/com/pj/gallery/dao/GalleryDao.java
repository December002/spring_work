package test.com.pj.gallery.dao;

import java.util.List;

import test.com.pj.gallery.dto.GalleryDto;

public interface GalleryDao {
	public List<GalleryDto> getList(GalleryDto dto);
	public int getCount();
	public void insert(GalleryDto dto);
	public GalleryDto getData(int num);
}
