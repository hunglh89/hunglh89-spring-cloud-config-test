package restful.comment.service.app.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import restful.comment.service.app.model.CommentModel;

public class CommentMapper implements RowMapper<CommentModel>{
	
	public static final String BASE_SQL //
	= "Select id, name, email, content, new_id, created From comments ";

	@Override
	public CommentModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		String email = rs.getString("email");
		String content = rs.getString("content");
		String created = rs.getString("created");
		int new_id = rs.getInt("new_id");
		return new CommentModel(id, name, email, content, created, new_id);
	}
}
