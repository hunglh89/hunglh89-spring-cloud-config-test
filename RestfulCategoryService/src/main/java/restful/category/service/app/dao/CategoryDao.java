package restful.category.service.app.dao;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import restful.category.service.app.mapper.CategoryMapper;
import restful.category.service.app.model.CategoryModel;

@Repository
@Transactional
public class CategoryDao extends JdbcDaoSupport {
	
	@Autowired
    public CategoryDao(DataSource dataSource) {
        this.setDataSource(dataSource);
    }

	public List<CategoryModel> getListCateg() {
		// Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
		String sql = CategoryMapper.BASE_SQL;

		Object[] params = new Object[] {};
		CategoryMapper mapper = new CategoryMapper();
		List<CategoryModel> list = this.getJdbcTemplate().query(sql, params, mapper);

		return list;
	}
}
