package org.com.blog.web.admin;

import org.com.blog.model.Post;
import org.com.blog.service.PostService;

/**
 * 文章编辑
 * 
 * @author xwz
 */
public class PostEdit extends AdminOAuthHandler {
      PostService postservice;
	public void post(int id) {
		Post post = preparePost(id);
		post.setTitle("");
		
		post.setContent("");
		post.setTop(1);
		post.setStatus("");
		post.setType("");
		int[] tagIds = {2,3};

		if (id == 0) {
			id = postservice.add(post, tagIds);
		} else {
			//postservice.modify(post, tagIds);
		}

//		renderString(String.valueOf(id));
	}	
	private Post preparePost(int id) {
		Post post = null;
		if (id > 0) {
			post = postservice.getById(id);
		} else {
			post = postservice.getLatestDraft();
			if (post == null)
				post = new Post();
		}
		return post;
	}
}
