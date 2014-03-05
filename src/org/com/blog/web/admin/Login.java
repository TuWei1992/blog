package org.com.blog.web.admin;



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
 * @author xwz
 */
@IocBean
@InjectName

public class Login extends BlogHandler {
     @Inject
     private PostService postservice;
     @Inject
     private TypeService typeservice;
     @Inject 
     private TagService tagservice;
    
    
  
	
	public void get() {
		if (!checkLoginFromSeesion()) {
			// 未登录: 显示登录页面
			toLogin();
		} else {
			// 已经登录: 转到后台首页
			toIndex();
		}
	}
 @At("admin/index")
 //@Ok("fm:/WEB-INF/templates/html/index.ftl")
 public Map<String, Object> post(@Param("name") String username,@Param("password") String password,HttpServletRequest request,HttpServletResponse response) throws Throwable {
		String name = username.trim().intern();
		String pd = password.trim().intern();
		if (checkLogin(name, pd)) {
	      session = request.getSession(); 
          session.setAttribute("name", name); 
		
		} else {
			
		  response.sendRedirect("fail.jsp");	
		  
		}
		
		int initcount=1;
		Map<String, Object> map=new HashMap<String, Object>();
    	List<Type> type= typeservice.queryType();
    	//List<Post> article=postservice.queryPublishPost();
    	List<Post> article=postservice.searchByPage(Post.class, initcount, 10, "id");
    	List<Tag>  tags=tagservice.queryAll();
    	map.put("type", type);
    	map.put("tag",tags);
    	map.put("article", article);
    	map.put("pagecount", postservice.getPagerCount(Post.class, initcount, 10));
    	map.put("initcount",1 );
    	return map;
		
	}
 @At("admin/pagess")
 @Ok("fm:/WEB-INF/templates/html/index.ftl")
 public Map<String, Object> go_index(){
       int initcount=1;
		Map<String, Object> map=new HashMap<String, Object>();
    	List<Type> type= typeservice.queryType();
    	//List<Post> article=postservice.queryPublishPost();
    	List<Post> article=postservice.searchByPage(Post.class,initcount, 10, "id");
    	List<Tag>  tags=tagservice.queryAll();
    	map.put("type", type);
    	map.put("tag",tags);
    	map.put("article", article);
    	map.put("pagecount", postservice.getPagerCount(Post.class, initcount, 10));
    	map.put("initcount",1 );
    	return map;
		
	}
 @At("admin/pagess/?")
 @Ok("fm:/WEB-INF/templates/html/index.ftl")
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
// @At("admin/user/?")
// @Ok("fm:/WEB-INF/templates/html/index.ftl")
// public Map<String, Object> xia_index(int count){
// 
//		Map<String, Object> map=new HashMap<String, Object>();
//    	List<Type> type= typeservice.queryType();
//    	//List<Post> article=postservice.queryPublishPost();
//    	List<Post> article=postservice.searchByPage(Post.class,count-1, 10, "id");
//    	List<Tag>  tags=tagservice.queryAll();
//    	map.put("type", type);
//    	map.put("tag",tags);
//    	map.put("article", article);
//    	map.put("pagecount", postservice.getPagerCount(Post.class, count-1, 10));
//    	return map;
//		
//	}
//	   


	private void toIndex() {
		
	}

	private void toLogin() {
		
	}
}