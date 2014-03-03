package org.com.blog;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.com.blog.model.Post;
import org.com.blog.model.Tag;
import org.com.blog.model.Type;
import org.com.blog.service.PostService;
import org.com.blog.service.TagService;
import org.com.blog.service.TypeService;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Encoding;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Views;
import org.nutz.mvc.ioc.provider.ComboIocProvider;
import org.nutz.mvc.view.FreemarkerViewMaker;

@IocBy(args = {	//配置Ioc容器
		"*org.nutz.ioc.loader.json.JsonLoader","ioc/", //扫描ioc文件夹中的js文件,作为JsonLoader的配置文件
		"*org.nutz.ioc.loader.annotation.AnnotationIocLoader","org.com.blog"}, 
		type = ComboIocProvider.class)
@Modules(scanPackage=true)
@Views({FreemarkerViewMaker.class})
@Encoding(input="UTF-8",output="UTF-8")

public class MainModule {
//	  @Inject
//	     private PostService postservice;
//	     @Inject
//	     private TypeService typeservice;
//	     @Inject 
//	     private TagService tagservice;
//	
//	
//	@At
//	@Ok("fm:/WEB-INF/templates/html/index.ftl")
//	public Map<String, Object> getindex(){
//		 int initcount=1;
//			Map<String, Object> map=new HashMap<String, Object>();
//	    	List<Type> type= typeservice.queryType();
//	    	//List<Post> article=postservice.queryPublishPost();
//	    	List<Post> article=postservice.searchByPage(Post.class,initcount, 10, "id");
//	    	List<Tag>  tags=tagservice.queryAll();
//	    	map.put("type", type);
//	    	map.put("tag",tags);
//	    	map.put("article", article);
//	    	map.put("pagecount", postservice.getPagerCount(Post.class, initcount, 10));
//	    	map.put("initcount",1 );
//	    	return map;
//	}
}
