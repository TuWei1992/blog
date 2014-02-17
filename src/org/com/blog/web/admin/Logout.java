package org.com.blog.web.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.By;
import org.nutz.mvc.annotation.Filters;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.filter.CheckSession;

@IocBean
public class Logout extends BlogHandler {


@At("admin/logoutsession")
@Ok("redirect:/index.jsp")
public void logout(HttpServletRequest request,HttpServletResponse response){

    session = request.getSession(); 
	session.invalidate();
	
}
}