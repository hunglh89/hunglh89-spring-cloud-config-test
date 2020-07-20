package spring.web.app;

import java.util.List;

import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import spring.web.app.entity.CategoryConversion;

@FeignClient(name="RestfulCategoryService")
//@RibbonClient(name="forex-service")
public interface AppProxyCategory {
	@GetMapping("/category.json")
	public List<CategoryConversion> retrieveCategoryList();
}
