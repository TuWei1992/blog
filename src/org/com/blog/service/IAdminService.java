package org.com.blog.service;

import org.nutz.ioc.loader.annotation.IocBean;

@IocBean
public interface IAdminService {
	/** 根据ID获取 */
	public int getId(int id);
	
	/** 根据name获取 */
	public String getname(String name);
	
	/** 根据password获取 */
	public String getpassword(String password);

}
