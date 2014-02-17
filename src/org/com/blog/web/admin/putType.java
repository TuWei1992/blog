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
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.filter.CheckSession;

/**
 * 增加文章类型
 * 
 * @author zhimeiyue
 */
@IocBean
@InjectName
public class putType extends AdminOAuthHandler {
@Inject 
private TypeService typeservice;


/**
 * 跳转到添加类型的页面
 * 
 * @author zhimeiyue
 * @return 
 * @return 
 */
@At("admin/puttype_page")
@Ok("fm:/WEB-INF/fm/puttype.ftl")

@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
public void puttype_page(){
	
}

@At("admin/puttype")
@Ok("fm:/WEB-INF/templates/html/putarticle.ftl")
@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
public void puttype(@Param("name") String name){
	Type type=new Type();
	type.setcount(0);
	type.setname(name);
  typeservice.add(type);

}


}
