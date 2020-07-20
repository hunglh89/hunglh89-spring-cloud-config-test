package restful.comment.service.app.model;

public class CommentModel {
	private int id;
	private String name;
	private String email;
	private String content;
	private String created;
	private int new_id;
	public CommentModel(int id, String name, String email, String content, String created, int new_id) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.content = content;
		this.created = created;
		this.new_id = new_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public int getNew_id() {
		return new_id;
	}
	public void setNew_id(int new_id) {
		this.new_id = new_id;
	}
	
}
