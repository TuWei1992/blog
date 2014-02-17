package org.com.blog.service;

import java.util.List;

import org.com.blog.model.Tag;
import org.nutz.dao.Dao;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(name="tagservice")
@InjectName
public class TagService implements ITagService {

	@Inject
	private Dao dao;
	
	@Override
	public Tag getById(int id) {
		// TODO Auto-generated method stub
		Tag tag = dao.fetch(Tag.class,id);
	
		return tag;
	}

	@Override
	public List<Tag> queryAll() {
		// TODO Auto-generated method stub
		List<Tag> tag = dao.query(Tag.class,null);

		return tag;
	}

	@Override
	public void add(Tag tag) {
		// TODO Auto-generated method stub
		dao.insert(tag);
		
	}

	@Override
	public void modify(Tag tag) {
		// TODO Auto-generated method stub
		dao.update(tag);

	}

	@Override
	public void remove(int id) {
		// TODO Auto-generated method stub
		dao.delete(Tag.class,id);
	}

	@Override
	public void addCount(String name) {
		// TODO Auto-generated method stub
		Tag p = dao.fetch(Tag.class,name);
		int num=p.getPostCount()+1;
		p.setPostCount(num);
		dao.update(p);

	}

	@Override
	public void reduceCount(int id) {
		// TODO Auto-generated method stub
		Tag p = dao.fetch(Tag.class,id);
		p.setPostCount(p.getPostCount()-1);
		dao.update(p);

	}

	@Override
	public void removePostTag(int postid) {
		// TODO Auto-generated method stub
		
	}

}
