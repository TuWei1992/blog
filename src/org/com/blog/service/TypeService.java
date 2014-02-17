package org.com.blog.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.com.blog.model.Post;
import org.com.blog.model.Tag;
import org.com.blog.model.Type;
import org.nutz.dao.Dao;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;


@IocBean(name="typeservice")
@InjectName
public class TypeService implements ITypeService {

	@Inject
	private Dao dao;
	
	@Override
	public Type getById(int id) {
		// TODO Auto-generated method stub
		return dao.fetch(Type.class,id);
	}

	@Override
	public List<Type> queryAll() {
		// TODO Auto-generated method stub
		return  dao.query(Type.class,null);
	}

	@Override
	public int add(Type type) {
		// TODO Auto-generated method stub
		dao.insert(type);
		return 0;
	}

	@Override
	public void modify(Type type) {
		// TODO Auto-generated method stub
		dao.update(type);
	}

	@Override
	public void remove(int id) {
		// TODO Auto-generated method stub
		dao.delete(Type.class,id);
	}

	@Override
	public void addCount(String name) {
		// TODO Auto-generated method stub
		Type p = dao.fetch(Type.class,name);
		int num=p.getcount()+1;
		p.setcount(num);
		dao.update(p);

	}

	@Override
	public void reduceCount(int id) {
		// TODO Auto-generated method stub
		Type p = dao.fetch(Type.class,id);
		p.setcount(p.getcount()-1);
		dao.update(p);

	}

	@Override
	public void removePostTag(int postid) {
		// TODO Auto-generated method stub

	}
	
	public List<Type> queryType() {
		  List<Type> type_all = dao.query(Type.class,null);

		  return type_all;
	}

}
