package wool.trade.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import wool.trade.dto.MemberDTO;

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
	public String PermissionCheck(String memberId) {
		return sqlSessionTemplate.selectOne("permissionCheck", memberId);
	}
	
	@Transactional
	public void MemberInsert(MemberDTO memberDTO) {
		sqlSessionTemplate.insert("memberInsert" , memberDTO);	
		sqlSessionTemplate.insert("permissionInsert" , memberDTO);	
	}
	
	public void MemberUpdate(MemberDTO memberDTO) {
		sqlSessionTemplate.update("memberUpdate" , memberDTO);	
		sqlSessionTemplate.update("permissionUpdate" , memberDTO);	
	}
	
	public void MemberDelete(String memberId) {
		sqlSessionTemplate.delete("permissionDelete", memberId);
		sqlSessionTemplate.delete("memberDelete", memberId);
	}
	
	
	
	
}
