package spring.web.app.entity;

public class PostConversion {
	private int id;
	private String title;
	private String intro;
	private String content;
	private String image;
	private String modified;
	private int highlights;
	private int category_id;
	
	public PostConversion(int id, String title, String intro, String content, String image, String modified, int highlights, int category_id) {
		this.id = id;
		this.title = title;
		this.intro = intro;
		this.content = content;
		this.image = image;
		this.modified = modified;
		this.highlights = highlights;
		this.category_id = category_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getModified() {
		return modified;
	}
	public void setModified(String modified) {
		this.modified = modified;
	}
	public int getHighlights() {
		return highlights;
	}
	public void setHighlights(int highlights) {
		this.highlights = highlights;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
}
