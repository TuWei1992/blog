package org.com.blog.web.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.com.blog.model.Post;
import org.com.blog.model.Tag;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.filter.CheckSession;

@IocBean
@InjectName
public class GetImage extends AdminOAuthHandler {
	
	   
	   @At("admin/images")
	   @Ok("fm:/WEB-INF/templates/html/images.ftl")
	   @Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
	   public void getimage(){
		   

		    
		   
	   }

}
