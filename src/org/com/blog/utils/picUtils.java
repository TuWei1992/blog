package org.com.blog.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import org.com.blog.model.PicFile;
import org.com.blog.model.Post;
import org.com.blog.service.PostService;
import org.nutz.dao.Dao;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.Param;


@IocBean(name="picutils")
@InjectName
public class picUtils {
@Inject
private Dao dao;
@Inject
private PostService postservice;
PicFile picfile=new PicFile();
public void up_pic(@Param("file") File tempFile,
            HttpServletResponse resp, ServletContext context)
                    throws IOException 
{
		
		 String prefix = context.getRealPath( "/"); //获取当前服务器的路径
         String path = prefix + "article/"; //添加
         String p = new SimpleDateFormat( "yyyyMMddHHmmss").format( new Date()); 
         if (CheckFileType. isPic(tempFile.getName())) {
             // 图片文件存放在 article/ pic 目录下
           
             FileUtils.moveFile(tempFile,
             path + "pic/" + p + tempFile.getName());
             
                    
         }      
        
        picfile.setFilePath( path +"pic/" + p + tempFile.getName()); 
        picfile.setName(tempFile.getName());
      	picfile.setType(0);
      	int count=postservice.getCount()+1;
      //	picfile.setOnearticleid(count);    	
      	dao.insert(picfile);
      		
	}
}
