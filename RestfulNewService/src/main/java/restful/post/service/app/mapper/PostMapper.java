package restful.post.service.app.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import restful.post.service.app.model.PostModel;

public class PostMapper implements RowMapper<PostModel> {
	public static final String BASE_SQL //
	= "Select id, title, intro, content, image, created_modified, highlights, category_id From news ";

	@Override
	public PostModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String title = rs.getString("title");
		String intro = rs.getString("intro");
		String content = rs.getString("content");
		String image = rs.getString("image");
		String created_modified = rs.getString("created_modified");
		int highlights = rs.getInt("highlights");
		int category_id = rs.getInt("category_id");
		return new PostModel(id, title, intro, content, image, created_modified, highlights, category_id);
	}
}