package restful.post.service.app.controller;

import org.springframework.web.bind.annotation.RestController;

import restful.post.service.app.dao.PostDao;
import restful.post.service.app.model.PostModel;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PostController {
	
	@Autowired
	private PostDao postDao;
	
	@RequestMapping(value = { "/", "post.json" }, //
			method = RequestMethod.GET, //
			produces = { "application/json" })
	@ResponseBody
	public List<PostModel> getPostAll() {
		List<PostModel> list = postDao.getListNew();
		return list;
	}
	
	@RequestMapping(value = { "/postbyid.json/id/{id}" }, //
			method = RequestMethod.GET, //
			produces = { "application/json" })
	@ResponseBody
	public PostModel getPostById(@PathVariable String id) {
		PostModel post = postDao.getPostById(Integer.parseInt(id));
		return post;
	}

	@RequestMapping(value = { "/postbycateg.json/categid/{categid}" }, //
			method = RequestMethod.GET, //
			produces = { "application/json" })
	@ResponseBody
	public List<PostModel> getPostByCatId(@PathVariable String categid) {
		List<PostModel> list = postDao.getPostByCategId(Integer.parseInt(categid));
		return list;
	}

}
