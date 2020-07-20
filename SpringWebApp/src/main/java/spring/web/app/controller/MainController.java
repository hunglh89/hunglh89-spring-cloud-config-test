package spring.web.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.web.app.AppProxyCategory;
import spring.web.app.AppProxyComment;
import spring.web.app.AppProxyPost;
import spring.web.app.entity.CategoryConversion;
import spring.web.app.entity.CommentConversion;
import spring.web.app.entity.PostConversion;

@Controller
public class MainController {
	@Autowired
	private AppProxyCategory categServiceProxy;
	
	@Autowired
	private AppProxyPost postServiceProxy;
	
	@Autowired
	private AppProxyComment commentServiceProxy;
	
	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public String index(Model model) {
		List<CategoryConversion> response = this.categServiceProxy.retrieveCategoryList();
		model.addAttribute("listCateg", response);
		return "index";
	}
	
	@RequestMapping(value = { "/category/{categoryid}" }, method = RequestMethod.GET)
	public String category(Model model, @PathVariable int categoryid) {
		List<PostConversion> response1 = this.postServiceProxy.getPostByCategId(categoryid);
		model.addAttribute("listPost", response1);
		List<CategoryConversion> response2 = this.categServiceProxy.retrieveCategoryList();
		model.addAttribute("listCateg", response2);
		return "category";
	}
	
	@RequestMapping(value = { "/article/{articleid}" }, method = RequestMethod.GET)
	public String article(Model model, @PathVariable int articleid) {
		PostConversion response1 = this.postServiceProxy.getPostById(articleid);
		model.addAttribute("PostItem", response1);
		List<CategoryConversion> response2 = this.categServiceProxy.retrieveCategoryList();
		model.addAttribute("listCateg", response2);
		List<CommentConversion> response3 = this.commentServiceProxy.getCommentByPostId(articleid);
		model.addAttribute("listComment", response3);
		return "article";
	}
}
