package org.com.blog.web.admin;

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
public class getType extends AdminOAuthHandler {
	 @Inject
	    private PostService postservice;
	    @Inject
	    private TypeService typeservice;
	    /**
	     * 获取文章类型
	     * 
	     * @author zhimeiyue
	     * @return 
	     */
	        @At("admin/typess")
	 		@Ok("fm:/WEB-INF/templates/html/gettype.ftl")
	 		@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
	 		public Map<String, Object> gettype(String type){
	        	Map<String, Object> map=new HashMap<String, Object>();
	     	   
	     	   List<Type> article_type=typeservice.queryAll(); 
	     	
	     	   
	     	   for(int i=0; i<article_type.size(); i++){  
	     	   String str_tag= article_type.get(i).getname();
	     	   List<Post> map_tag= postservice.getPublishBytype(str_tag);
	     	   map.put(str_tag,map_tag);
	     	   }   
	     	   
	     	  // map.put("article_name", tag_article);
	            map.put("article_type",article_type);
	            return map;
	 		}

}
