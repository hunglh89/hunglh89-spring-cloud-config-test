package spring.web.app;

import java.util.List;

import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import spring.web.app.entity.PostConversion;

@FeignClient(name="RestfulNewService")
public interface AppProxyPost {
	@GetMapping("/postbycateg.json/categid/{categid}")
	public List<PostConversion> getPostByCategId(@PathVariable("categid") int categid);
	
	@GetMapping("/postbyid.json/id/{id}")
	public PostConversion getPostById(@PathVariable("id") int id);
}
