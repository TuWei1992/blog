package org.com.blog.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.com.blog.model.Admin;
import org.com.blog.model.PicFile;
import org.com.blog.model.Post;
import org.nutz.dao.Cnd;
import org.nutz.dao.Dao;
import org.nutz.dao.pager.Pager;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.filter.CheckSession;


@IocBean(name="postservice")
@InjectName
@Filters(@By(type=CheckSession.class, args={"name", "/index.jsp"}))
public class PostService implements IPostService {
  
	@Inject
	private Dao dao;
	
	@Override
	public Post getById(int id) {
		// TODO Auto-generated method stub
		return dao.fetch(Post.class,id);
	}
	@Override
	public List<Post> getPublishBytype(String type){
		// TODO Auto-generated method stub
		return dao.query(Post.class, Cnd.where("type","=",type));
	    
	}
	@Override
	public List<Post> getPublishBytag(String tag){
		// TODO Auto-generated method stub
		return dao.query(Post.class, Cnd.where("tags","=",tag));
	    
	}


	@Override
	public Post getByUrl(String url) {
		//Admin user=dao.fetch(Admin.class,Cnd.where("name","=",nam).and("password","=",passwd));
		return null;
	}

	@Override
	public Post getLatestDraft() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int add(Post post, int[] tagIds) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify( int id,String title,String content,
			 int top, String status, String type,String tags,
			String abstracts) {
		Post post = dao.fetch(Post.class,id);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	    Date d =new Date();
	    String time =format.format(d);
		post.setId(id);
		post.setTitle(title);
		post.setContent(content);
		post.setTop(top);
		post.setStatus( status);
		post.setType(type); 
		post.setTags(tags);
		post.setAbstracts(abstracts);
		post.setAddtime(time);
		dao.update(post);
		return 0;
	}

	@Override
	public int remove(int id) {
		dao.delete(Post.class,id);
		return 0;
	}

	@Override
	public List<Post> queryPublishRelativePost(Post post, int count) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<Post> queryPublishPost() {
		  List<Post> post_all = dao.query(Post.class,null);

		  return post_all;
	}
	
	public void postarticle(Post post){
		    
		 dao.insert(post);
		
		
	}
	public List<Post> gettitle(){
		
		return  dao.query(Post.class,null);
		
	}
	public int getCount(){
		
		
		return dao.count(Post.class);
	}
	
	
	
	public int getPagerCount(Class<Post> c,int currentPage,int pageSize){
		Pager pager = dao.createPager(currentPage, pageSize);
		int count=dao.count(Post.class);
		pager.setRecordCount((int) Math.ceil((count+1)/pageSize));
		return pager.getRecordCount();
		}
	
	
	public List<Post> searchByPage(Class<Post> c,int currentPage,int pageSize,String orderby){
		Pager pager = dao.createPager(currentPage, pageSize);
		
		return dao.query(c, Cnd.orderBy().desc(orderby), pager);
	}
	
	
	public PicFile getPic(String name){
		
		PicFile file=dao.fetch(PicFile.class,Cnd.where("articlename","=",name));
		
		return file;
	}

}
