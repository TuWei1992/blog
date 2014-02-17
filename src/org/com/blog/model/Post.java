package org.com.blog.model;



import java.util.Date;


import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Name;
import org.nutz.dao.entity.annotation.Table;



/**
 * 文章
 * 
 * @author zhimeiyue
 */
@Table("blog")
public class Post implements java.io.Serializable {
	private static final long serialVersionUID = -7679909637903047354L;
	@Id
	private int id;
	
	@Name
	private String title = "";
	private String content = "";
	private String addtime;
	private int top;
	private String status = "";
	private String type = "";
	private String tags = "";
	private String abstracts = "";
	private String url = "";
	
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getTop() {
		return top;
	}

	public void setTop(int top) {
		this.top = top;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAbstracts() {
		return abstracts;
	}

	public void setAbstracts(String abstracts) {
		this.abstracts = abstracts;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	public String geturl() {
		return url;
	}

	public void seturl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "Post [id=" + id +  ", title=" + title
				+ ", content=" + content + ", top=" + top + ", status="
				+ status + ", type=" + type +", tags=" + tags + "]";
	}
}

