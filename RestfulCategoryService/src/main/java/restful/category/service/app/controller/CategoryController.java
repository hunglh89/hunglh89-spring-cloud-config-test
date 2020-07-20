package restful.category.service.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import restful.category.service.app.dao.CategoryDao;
import restful.category.service.app.model.CategoryModel;

@RestController
public class CategoryController {

	@Autowired
	private CategoryDao categDao;
	@RequestMapping(value = { "/", "category.json" }, //
			method = RequestMethod.GET, //
			produces = { "application/json" })
	@ResponseBody
	public List<CategoryModel> getCategsAll() {
		List<CategoryModel> list = categDao.getListCateg();
		return list;
	}



	
}