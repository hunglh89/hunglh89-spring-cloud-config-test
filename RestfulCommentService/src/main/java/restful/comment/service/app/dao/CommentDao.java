package restful.comment.service.app.dao;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import restful.comment.service.app.model.CommentModel;
import restful.comment.service.app.mapper.CommentMapper;

@Repository
@Transactional
public class CommentDao extends JdbcDaoSupport {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public CommentDao(DataSource dataSource) {
		this.setDataSource(dataSource);
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<CommentModel> getCommentByPostId(int newId) {
		String sql = CommentMapper.BASE_SQL;
		sql = sql + " where new_id=" + newId;
		Object[] params = new Object[] {};
		CommentMapper mapper = new CommentMapper();
		List<CommentModel> list = this.getJdbcTemplate().query(sql, params, mapper);
		return list;
	}

	public void addComment(CommentModel comment) {
		String sql = "INSERT INTO comments (name, email, content, new_id)" + " VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sql, comment.getName(), comment.getEmail(), comment.getContent(), comment.getNew_id());

	}
}
