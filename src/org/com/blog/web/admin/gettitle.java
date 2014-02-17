package org.com.blog.web.admin;

import java.util.List;

import org.com.blog.model.Post;
import org.com.blog.service.PostService;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.filter.CheckSession;


@IocBean
@InjectName
@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
public class gettitle extends AdminOAuthHandler {
	 @Inject
	 private PostService postservice;
	 
	 @At("gopostarticle")
	 @Ok("fm:/WEB-INF/fm/postlist.ftl")
	 public List<Post> title(){
		 
		return postservice.gettitle();
		 
	 }
}
