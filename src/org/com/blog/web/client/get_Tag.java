package org.com.blog.web.client;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.com.blog.model.Post;
import org.com.blog.model.Tag;
import org.com.blog.service.PostService;
import org.com.blog.service.TagService;
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
public class get_Tag {
   @Inject
   private TagService tagservice;
   @Inject
   private PostService postservice;
   
   @At("tag")
   @Ok("fm:/WEB-INF/fm/gettags.ftl")

   public Map<String, Object> gettag(){
	   

	    
	   Map<String, Object> map=new HashMap<String, Object>();
	   
	   List<Tag> tag=tagservice.queryAll();  
	   List<Post> tag_article=postservice.queryPublishPost();
	   
	   for(int i=0; i<tag.size(); i++){  
	   String str_tag= tag.get(i).getName();
	   List<Post> map_tag= postservice.getPublishBytag(str_tag);
	   map.put(str_tag,map_tag);
	   }   
	   
	  // map.put("article_name", tag_article);
       map.put("tag",tag);
   	  
       
       return map;
	   
   }
   
}
