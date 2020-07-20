package restful.comment.service.app.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.List;
import org.springframework.http.MediaType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import restful.comment.service.app.dao.CommentDao;
import restful.comment.service.app.model.CommentModel;

@RestController
public class CommentController {

	@Autowired
	private CommentDao commentDao;

	@RequestMapping(value = { "/commentbypost.json/postid/{postid}" }, //
			method = RequestMethod.GET, //
			produces = { "application/json" })
	@ResponseBody
	public List<CommentModel> getPostByCatId(@PathVariable String postid) {
		List<CommentModel> list = commentDao.getCommentByPostId(Integer.parseInt(postid));
		return list;
	}

	@RequestMapping(value = { "/comment.json" }, //
			method = RequestMethod.POST, //
			produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public Object addComment(@RequestBody CommentModel com) {
		commentDao.addComment(com);
		System.out.println("(Service Side) New Comment of " + com.getName() + ": " + com.getContent());
		return new Object();
	}
	//POSTMAN
	//{"id":"","name":"NGUYEN HOANG HA", "email": "hahh@gmail.com", "content": "TEST", "new_id": "10", "created": ""}
	//http://localhost:8105/comment.json

}
