package org.com.blog.web.client;

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
public class GetImage  {
	
	   
	   @At("admin/images")
	   @Ok("fm:/WEB-INF/fm/images.ftl")
	   
	   public void getimage(){
		   

		    
		   
	   }

}
