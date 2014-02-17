package org.com.blog.web.admin;
import org.com.blog.model.Admin;
import org.com.blog.service.AdminService;
import org.nutz.ioc.annotation.InjectName;
import org.nutz.ioc.loader.annotation.Inject;
import  java.lang.String ;
import javax.servlet.http.HttpSession;
@InjectName
public class BlogHandler {
	
	@Inject
    private AdminService adminservice;
//	public void setAdminservice(AdminService adminservice) {
//         this. adminservice = adminservice;
//   }

	HttpSession session;
	
	//Cookie cookie = new Cookie("name");
	
	protected boolean oauth() {
		return true;
	}

	protected boolean checkLoginFromSeesion() {
		// 客户端存储md5的用户名和密码
		
		return checkLogin(session.getAttribute("name").toString(), session.getAttribute("password").toString());
	}

	protected boolean checkLogin(String md5loginname, String md5password) {

		Admin m = adminservice.login(md5loginname, md5password);
		if (m != null) {
			return true;
		}
		return false;
	}

}
