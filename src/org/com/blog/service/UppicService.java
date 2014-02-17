package org.com.blog.service;

import org.com.blog.model.PicFile;
import org.nutz.dao.Dao;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;

@IocBean(name="uppicservice")
@InjectName
public class UppicService implements IUppicService {

	
	@Inject
	private Dao dao;
	
	@Override
	public void uppic(PicFile picinfo) {
		dao.insert(picinfo);

	}

}
