package org.com.blog.service;

import java.util.List;

import org.com.blog.model.Tag;

public interface ITagService {

	
	/** 根据ID获取标签 */
	public Tag getById(int id);

	/** 所有标签 */
	public List<Tag> queryAll();

	/** 添加标签 */
	public void add(Tag tag);

	/** 修改标签 */
	public void modify(Tag tag);

	/** 删除标签 */
	public void remove(int id);

	/** 文章数量-1 */
	public void addCount(String name);

	/** 文章数量-1 */
	public void reduceCount(int id);

	/** 移除文章的标签 */
	public void removePostTag(int postid);
}
