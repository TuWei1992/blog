package org.com.blog.web.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.com.blog.model.Post;
import org.com.blog.model.Tag;
import org.com.blog.model.Type;
import org.com.blog.service.PostService;
import org.com.blog.service.TagService;
import org.com.blog.service.TypeService;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.filter.CheckSession;

/**
 * 获取文章
 * 
 * @author zhimeiyue
 */
@IocBean
@InjectName
public class getArticle extends AdminOAuthHandler {
	 @Inject
	    private PostService postservice;
	    @Inject
	    private TagService tagservice;
	    @Inject
	    private TypeService typeservice;
	    /**
	     * 用标签的类型，找相关的文章
	     * 
	     * @author zhimeiyue
	     */
	    @At("admin/getart/?")
		@Ok("fm:/WEB-INF/fm/goarticle.ftl")
		@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
		public List<Post> type_title(String type){
		  List<Post> list=postservice.getPublishBytype(type);
	    	return list;
		}
	    /**
	     * 跳转到首页
	     * 
	     * @author zhimeiyue
	     */
	    @At("admin/article/?")
		@Ok("fm:/WEB-INF/templates/html/blog.ftl")
		@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
		public Post getarticlebyid(int id){
	    	Post list=postservice.getById(id);
	    	return list;
	}
}
