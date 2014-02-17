package org.com.blog.web.admin;


/**
 * 需要验证的handler
 * 
 * @author xwz
 */
public class AdminOAuthHandler extends BlogHandler {
	@Override
	protected boolean oauth() {
		return checkLoginFromSeesion();
	}
}