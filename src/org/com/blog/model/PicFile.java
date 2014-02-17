package org.com.blog.model;

import java.io.Serializable;

import org.com.blog.model.Post;
import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.One;
import org.nutz.dao.entity.annotation.Table;
/**
 * 一篇文章上传类
 * @author Administrator
 *
 */
@Table("t_file")
public class PicFile implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6148038523532920409L;
	/**
	 * 图片文件
	 */
	public static final int PICTURE_FILE = 0;
	/**
	 * 下载类型文件
	 */
	public static final int DOWN_FILE = 1;
	/*
	 * 数据库ID
	 */
	@Id
	private int id;
	/*
	 * 类型
	 */
	@Column
	private int type;
	/*
	 * 文件名称
	 */
	@Column
	private String name;
	/*
	 * 文件存放路径
	 */
	@Column
	private String filePath;
//	@One(target=Post.class,field="id")
//	//private OneArticle onearticle;
//	/*
//	 * 文章ID
//	 */
	@Column
	private String articlename;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getOnearticlename() {
		return articlename;
	}
	public void setOnearticlename(String articlename ) {
		this.articlename = articlename;
	}
//	public OneArticle getOnearticle() {
//		return onearticle;
//	}
//	public void setOnearticle(OneArticle onearticle) {
//		this.onearticle = onearticle;
//	}
	

}
