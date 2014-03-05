package org.com.blog.web.client;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.com.blog.model.Post;
import org.com.blog.model.Tag;
import org.com.blog.model.Type;
import org.com.blog.service.AdminService;
import org.com.blog.service.PostService;
import org.com.blog.service.TagService;
import org.com.blog.service.TypeService;
import org.nutz.http.Cookie;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.filter.CheckSession;

/**
 * 登录
 * 
 * @author wonder4
 */
@IocBean
@InjectName

public class getIndex  {
     @Inject
     private PostService postservice;
     @Inject
     private TypeService typeservice;
     @Inject 
     private TagService tagservice;
    
    
     
 @At("page")
 @Ok("fm:/WEB-INF/fm/index.ftl")
 public Map<String, Object> go_index(){
       int initcount=1;
		Map<String, Object> map=new HashMap<String, Object>();
    	List<Type> type= typeservice.queryType();
    	List<Post> article=postservice.searchByPage(Post.class,initcount, 10, "id");
    	List<Tag>  tags=tagservice.queryAll();
    	map.put("type", type);
    	map.put("tag",tags);
    	map.put("article", article);
    	map.put("pagecount", postservice.getPagerCount(Post.class, initcount, 10));
    	map.put("initcount",1 );
    	return map;	
	}
 @At("/page/?")
 @Ok("fm:/WEB-INF/fm/index.ftl")
 public Map<String, Object> shang_index(int count){
       //总页数,超越页数处理
	    int allcount=postservice.getPagerCount(Post.class, count, 10);
	    if(count<1){
	    	count=1;
	    }
	    if(allcount<count){
	    	count=allcount;
	    }
		Map<String, Object> map=new HashMap<String, Object>();
    	List<Type> type= typeservice.queryType();
    	//List<Post> article=postservice.queryPublishPost();
    	List<Post> article=postservice.searchByPage(Post.class,count, 10, "id");
    	List<Tag>  tags=tagservice.queryAll();
    	map.put("type", type);
    	map.put("tag",tags);
    	map.put("article", article);
    	map.put("pagecount", allcount);
    	
    	map.put("initcount",count);
    	return map;
		
	}
   


	
}