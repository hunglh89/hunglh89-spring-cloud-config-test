package restful.post.service.app.dao;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import restful.post.service.app.mapper.PostMapper;
import restful.post.service.app.model.PostModel;

@Repository
@Transactional
public class PostDao extends JdbcDaoSupport {
	@Autowired
	public PostDao(DataSource dataSource) {
		this.setDataSource(dataSource);
	}

	public List<PostModel> getListNew() {
		String sql = PostMapper.BASE_SQL;

		Object[] params = new Object[] {};
		PostMapper mapper = new PostMapper();
		List<PostModel> list = this.getJdbcTemplate().query(sql, params, mapper);

		return list;
	}
	
	public PostModel getPostById(int postId) {
		String sql = PostMapper.BASE_SQL;
		sql = sql + " where id=" + postId;
		Object[] params = new Object[] {};
		PostMapper mapper = new PostMapper();
		List<PostModel> list = this.getJdbcTemplate().query(sql, params, mapper);
		PostModel post = list.get(0);
		return post;
	}
	
	public List<PostModel> getPostByCategId(int catId) {
		String sql = PostMapper.BASE_SQL;
		sql = sql + " where category_id=" + catId;
		Object[] params = new Object[] {};
		PostMapper mapper = new PostMapper();
		List<PostModel> list = this.getJdbcTemplate().query(sql, params, mapper);
		return list;
	}
}
