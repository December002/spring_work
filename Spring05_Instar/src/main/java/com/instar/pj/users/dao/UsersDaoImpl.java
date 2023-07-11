package com.instar.pj.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.instar.pj.users.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao{
	@Autowired
	private SqlSession session;
	
	@Override
	public boolean isExist(String inputId) {
		// 전달된 아이디로 select 해서
		UsersDto dto = session.selectOne("users.getData", inputId);
		// 아이디 존재 여부를 알아내서 (null 이면 존재하지 않고, null 이 아니면 존재한다)
		boolean isExist = dto == null ? false : true;
		return isExist;
	}


	@Override
	public void insert(UsersDto dto) {
		session.insert("users.insert", dto);
	}

	@Override
	public UsersDto getData(String id) {
		
		return session.selectOne("users.getData", id);
	}

	@Override
	public void updatePwd(UsersDto dto) {
		session.update("users.updatePwd", dto);
		
	}

	@Override
	public void update(UsersDto dto) {
		//email 과 profile 수정
		session.update("users.update", dto);
		
	}

	@Override
	public void delete(String id) {
		session.delete("users.delete", id);
		
	}
}
