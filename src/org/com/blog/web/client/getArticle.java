package org.com.blog.web.client;


import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import org.com.blog.model.Post;
import org.com.blog.service.PostService;
import org.com.blog.service.TagService;
import org.com.blog.service.TypeService;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

/**
 * 获取文章
 * 
 * @author wonder4
 */
@IocBean
@InjectName
public class getArticle  {
	 @Inject
	    private PostService postservice;
	    @Inject
	    private TagService tagservice;
	    @Inject
	    private TypeService typeservice;
	    /**
	     * 用标签的类型，找相关的文章
	     * 
	     * @author wonder4
	     */
	    @At("getart/?")
		@Ok("fm:/WEB-INF/fm/goarticle.ftl")
		
		public List<Post> type_title(String type){
		  List<Post> list=postservice.getPublishBytype(type);
	    	return list;
		}
	    /**
	     * 跳转到首页
	     * 
	     * @author wonder4
	     */
	    @At("article/?")
		@Ok("fm:/WEB-INF/fm/blog.ftl")		
		public Post getarticlebyid(int id,
				ServletContext context,HttpServletResponse resp){
 	
	    	Post list=postservice.getById(id);
	    	return list;
	}
	
	
	
	    
	    
}
