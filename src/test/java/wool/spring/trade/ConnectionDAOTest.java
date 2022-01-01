package wool.spring.trade;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class ConnectionDAOTest {
	
	private static final Log log = LogFactory.getLog(ConnectionDAOTest.class);
	@Autowired
	DataSource dataSource;
	
	
	@Test
	public void test() {
		Connection connection = null;
		try {
			connection = dataSource.getConnection();
			log.info(""+connection);
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
