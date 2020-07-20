package spring.web.app;

import java.util.List;

import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import spring.web.app.entity.CommentConversion;
import spring.web.app.entity.PostConversion;

@FeignClient(name="RestfulCommentService")
public interface AppProxyComment {
	@GetMapping("/commentbypost.json/postid/{postid}")
	public List<CommentConversion> getCommentByPostId(@PathVariable("postid") int postid);
	
	@GetMapping("/comment.json")
	public PostConversion addCommment();
}
