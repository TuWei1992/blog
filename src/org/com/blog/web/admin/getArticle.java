package org.com.blog.web.admin;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

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
import org.nutz.mvc.annotation.Param;
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
		public Post getarticlebyid(int id,
				ServletContext context,HttpServletResponse resp){
 	
	    	Post list=postservice.getById(id);
	    	return list;
	}
	    /**
	     * 修改文章页面
	     * 
	     * @author zhimeiyue
	     */
	    @At("admin/change/?")
		@Ok("fm:/WEB-INF/templates/html/changepage.ftl")
		@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
		public Post changebyid(int id){
	    
	    	Post list=postservice.getById(id);
	    	return list;
	}
	    /**
	     * 修改文章完后，跳至已改的文章页面
	     * 
	     * @author zhimeiyue
	     */
	    @At("admin/update")
		@Ok("fm:/WEB-INF/templates/html/blog.ftl")
		@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
		public Post updatebyid(@Param("id") int ids,@Param("title") String title,@Param("content1") String content,
				@Param("top") int top,@Param("stauts") String status,@Param("type") String type,@Param("tags") String tags,
				@Param("abstracts")String abstracts ,ServletContext context,HttpServletResponse resp) throws Throwable{
	        postservice.modify(ids, title, content, top, status, type, tags, abstracts);
	    	Post list=postservice.getById(ids);
	    	return list;
	}
	    
	      /**
	     * 删除文章
	     * 
	     * @author zhimeiyue
	     */
	    @At("admin/delete/?")
		@Ok("fm:/WEB-INF/templates/html/index.ftl")
		@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
		public Map<String, Object> deletebyid(int id){
	    	postservice.remove(id);
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
	    
	    
}
