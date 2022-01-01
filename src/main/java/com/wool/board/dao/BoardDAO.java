package wool.trade.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import wool.trade.dto.NoticeDTO;

@Repository

@EnableAspectJAutoProxy(proxyTargetClass = true)
public class NoticeDAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<NoticeDTO> NoticeSelectAll() {
		return sqlSessionTemplate.selectList("noticeSelectAll");	
	}
	public NoticeDTO NoticeSelect(String title) {
		return sqlSessionTemplate.selectOne("noriceSelect", title);	
	}
	
	@Transactional
	public void NoticeInsert(NoticeDTO noticeDTO) {
		sqlSessionTemplate.insert("noticeInsert" , noticeDTO);	
	}
	
	public void NoticeUpdate(NoticeDTO noticeDTO) {
		sqlSessionTemplate.update("noticeUpdate" , noticeDTO);		
	}
	
	public void MemberDelete(String title) {
		sqlSessionTemplate.delete("permissionDelete", title);
	}

}
