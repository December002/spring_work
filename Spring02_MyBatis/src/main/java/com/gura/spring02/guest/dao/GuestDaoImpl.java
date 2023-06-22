package com.gura.spring02.guest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.spring02.guest.dto.GuestDto;

//component scan
@Repository
public class GuestDaoImpl implements GuestDao {
	
	
	//mybatis 기반으로 DB 연동을 하기 위한 핵심 의존객체를 Dependency Inection 받는다.
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(GuestDto dto) {
		/*
		 *  1. Mapper's namespace => guest
		 *  2. sql's id => insert
		 *  3. parameterType => GuestDto
		 */
		session.insert("guest.insert", dto);
	}

	@Override
	public void update(GuestDto dto) {
		session.update("guest.update", dto);
		
	}

	@Override
	public void delete(GuestDto dto) {
		session.delete("guest.delete", dto);
		
	}

	/*
	 * 1. mapper's namespace => guest
	 * 2. sql's id => getData
	 * 3. parameterType => X
	 * 4. result => GuestDto
	 */
	
	@Override
	public List<GuestDto> getList() {
		List<GuestDto> list=session.selectList("guest.getList");
		return list;
	}
	
	/*
	 * 1. mapper's namespace => guest
	 * 2. sql's id => getData
	 * 3. parameterType => int
	 * 4. result => GuestDto
	 */
	@Override
	public GuestDto getData(int num) {
		return session.selectOne("guest.getData", num);
	}

}
