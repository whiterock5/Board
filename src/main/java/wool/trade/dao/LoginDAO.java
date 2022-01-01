package wool.trade.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;

import wool.trade.dto.MemberDTO;

@Repository
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class LoginDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int login(MemberDTO memberDTO) {
		return sqlSessionTemplate.selectOne("Login", memberDTO);
	}
	
	public String PermissionCheck(String memberId) {
		return sqlSessionTemplate.selectOne("PermissionCheck", memberId);
	}
}
