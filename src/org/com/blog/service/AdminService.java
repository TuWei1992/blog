package org.com.blog.service;

import org.com.blog.model.Admin;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;


/**
 * 基本数据库操作类
 * @author zhimeiyue
 *
 */

@IocBean(name="adminservice")
@InjectName
public class AdminService implements IAdminService {
 
	@Inject
	private Dao dao;
	
	
	@Override
	public int getId(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getname(String name) {
		// TODO Auto-generated method stub
		Admin admin=dao.fetch(Admin.class,Cnd.where("name","=","loginname"));
		return admin.getname();
	}


	public String getpassword(String password) {
		Admin admin=dao.fetch(Admin.class,Cnd.where("name","=","loginpassword"));
		return admin.getpassword();
	}
	public Admin getAdminbyname(String name) {
		 Admin admin=dao.fetch(Admin.class,Cnd.where("name","=",name));
		return admin;
	}
   public Admin login(String username,String password){
	   
	   Cnd condition = Cnd.where("name", "=", username)
				.and("password", "=", password);
return  dao.fetch(Admin.class, condition);
   }
}
