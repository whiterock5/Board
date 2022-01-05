package com.wool.board.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;

import com.wool.board.dto.MemberDTO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class LoginDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int login(MemberDTO memberDTO) {
		return sqlSessionTemplate.selectOne("Login", memberDTO);
	}
}
