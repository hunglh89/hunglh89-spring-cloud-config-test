package restful.category.service.app.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import restful.category.service.app.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel> {

	public static final String BASE_SQL //
			= "Select cat.id, cat.name From categories cat ";

	@Override
	public CategoryModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		int id = rs.getInt("id");
		String name = rs.getString("name");
		return new CategoryModel(id, name);
	}
}
