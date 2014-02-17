package org.com.blog.web.admin;

import java.util.List;

import org.com.blog.model.Tag;
import org.com.blog.service.TagService;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.filter.CheckSession;

@IocBean
@InjectName
public class Puttags extends AdminOAuthHandler {
	
	 @Inject
	 private TagService tagservice;
	 
	    /**
	     * 跳刀添加tags的页面去
	     * 
	     * @author zhimeiyue
	     */
		@At("admin/puttags_page")
		@Ok("fm:/WEB-INF/templates/html/puttags.ftl")
		@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
		public void puttags_page(){
				
		}
	 
    /**
     * 添加tags
     * 
     * @author zhimeiyue
     * @return 
     */
	@At("admin/puttags")
	@Ok("fm:/WEB-INF/templates/html/putarticle.ftl")
	@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
	public void puttag(@Param("tags") String tags){
		Tag tag=new Tag();
		tag.setName(tags);
		tag.setPostCount(0);
		tagservice.add(tag);
		//return tagservice.queryAll();
	}
}
