package com.wool.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.wool.board.dto.MemberDTO;

@Repository

@EnableAspectJAutoProxy(proxyTargetClass = true)
public class MemberDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<MemberDTO> MemberSelectAll() {
		return sqlSessionTemplate.selectList("memberSelectAll");	
	}
	public MemberDTO MemberSelect(MemberDTO memberDTO) {
		return sqlSessionTemplate.selectOne("memberSelect", memberDTO.getMemberId());
	}

	@Transactional
	public void MemberInsert(MemberDTO memberDTO) {
		sqlSessionTemplate.insert("memberInsert" , memberDTO);		
	}
	
	public void MemberUpdate(MemberDTO memberDTO) {
		sqlSessionTemplate.update("memberUpdate" , memberDTO);	
	}
	
	public void MemberDelete(String memberId) {
		sqlSessionTemplate.delete("memberDelete", memberId);
	}
	
	
	
	
}
