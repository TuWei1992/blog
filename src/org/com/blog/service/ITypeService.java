package org.com.blog.service;

import java.util.List;

import org.com.blog.model.Tag;
import org.com.blog.model.Type;

public interface ITypeService {
	/** 根据ID获取标签 */
	public Type getById(int id);

	/** 所有标签 */
	public List<Type> queryAll();

	/** 添加标签 */
	public int add(Type type);

	/** 修改标签 */
	public void modify(Type type);

	/** 删除标签 */
	public void remove(int id);

	/** 文章数量-1 */
	public void addCount(String name);

	/** 文章数量-1 */
	public void reduceCount(int id);

	/** 移除文章的标签 */
	public void removePostTag(int postid);
}
