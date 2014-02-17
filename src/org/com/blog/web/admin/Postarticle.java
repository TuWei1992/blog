package org.com.blog.web.admin;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.com.blog.model.PicFile;
import org.com.blog.model.Post;
import org.com.blog.model.Tag;
import org.com.blog.model.Type;
import org.com.blog.service.PostService;
import org.com.blog.service.TagService;
import org.com.blog.service.TypeService;
import org.com.blog.utils.CheckFileType;
import org.com.blog.utils.FileUtils;
import org.com.blog.utils.picUtils;
import org.nutz.dao.Dao;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.filter.CheckSession;
import org.nutz.mvc.upload.UploadAdaptor;










import freemarker.template.SimpleDate;
/**
 * 增加文章
 * 
 * @author zhimeiyue
 */
@IocBean
@InjectName
public class Postarticle extends AdminOAuthHandler {
    @Inject
    private PostService postservice;
    @Inject
    private TagService tagservice;
    @Inject
    private picUtils picutils;
    @Inject
    private Dao dao;

    @Inject
    private TypeService typeservice;
 
    
    /**
     * 跳转到添加文章的页面
     * 
     * @author zhimeiyue
     * @return 
     */
	@At("admin/putarticle")
	@Ok("fm:/WEB-INF/templates/html/putarticle.ftl")
	@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
	public Map<String, Object> gopostarticle(){
		Map<String, Object> map=new HashMap<String, Object>();
		List<Type> type= typeservice.queryType();
		List<Tag>  tags=tagservice.queryAll();
		map.put("type", type);
    	map.put("tag", tags);
	 return map;
	}
	
	/**
	 * 添加到数据库，并跳转到已发布文章的页面
	 * 
	 * @author zhimeiyue
	 * @throws Throwable 
	 */
	@At("admin/postarticle")
	@Ok("fm:/WEB-INF/templates/html/index.ftl")
	@AdaptBy(type=UploadAdaptor.class,args = { "${app.root}/WEB-INF/tmp" })
	@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
	public 	Map<String, Object> postarticle(@Param("title") String title,@Param("content1") String content,
			@Param("top") int top,@Param("stauts") String status,@Param("type") String type,@Param("tags") String tags,
			@Param("abstracts") String abstracts,
			ServletContext context,HttpServletResponse resp) throws Throwable{
		
		
		
		
//		String prefix = context.getRealPath( "/"); //获取当前服务器的路径     @Param("file") File tempFile,
//	
//        String path = prefix + "article/"; //添加
//        String p = new SimpleDateFormat( "yyyyMMddHHmmss").format( new Date()); 
//        if (CheckFileType. isPic(tempFile.getName())) {
//            // 图片文件存放在 article/ pic 目录下
//          
//            FileUtils.moveFile(tempFile,
//            path + "pic/" + p + tempFile.getName());           
//          }   
//	
//    	//上传图片
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	    Date d =new Date();
	    String time =format.format(d);
		Post post=new Post();
		post.setTitle(title);
		post.setContent(content);
		post.setTop(top);
		post.setStatus( status);
		post.setType(type); 
		post.setTags(tags);
		post.setAbstracts(abstracts);
		post.setAddtime(time);
//		post.seturl( p+tempFile.getName());
		
		
		     
  
     
     	
		
		
		//上传数据库
		postservice.postarticle(post);
		//增加标签数
		tagservice.addCount(tags);
		
		//返回所有文章的标题
		
	      int initcount=1;
			Map<String, Object> map=new HashMap<String, Object>();
	    	List<Type> typee= typeservice.queryType();
	    	//List<Post> article=postservice.queryPublishPost();
	    	List<Post> article=postservice.searchByPage(Post.class,initcount, 10, "id");
	    	List<Tag>  tagss=tagservice.queryAll();
	    
	    	map.put("type", typee);
	    	map.put("tag",tagss);
	    	map.put("article", article);
	    	map.put("pagecount", postservice.getPagerCount(Post.class, initcount, 10));
	    	map.put("initcount",1 );
	    	return map;
		
	}

}
