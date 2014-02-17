<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>I am hello ^_^</title>
</head>
<body>
<a href="putarticle">添加文章</a><br><br><br>
<a href="logoutsession">退出登录</a><br><br><br>
<a href="gettags">标签</a><br><br><br>
<a href="user">首页</a><br><br><br>
<a href="puttags_page">添加标签</a><br><br><br>
<a href="gettype">类型</a><br><br><br>
<a href="puttype_page">添加类型</a><br><br><br>
<a href="puttype_page">添加类型</a><br><br><br>
         
     <#assign type_all= obj["type"] > 
     <#list type_all as post_type>
		<td>${post_type.id}</td><br><br><br>
		<td>${post_type.name}</td><br><br><br>		
		<td>${post_type.count}</td><br><br><br>
	</#list>
         </td><br><br><br>	
         </td><br><br><br>	
         </td><br><br><br>	
         
         <#assign tag_all= obj["tag"] > 
     <#list tag_all as post_tag>
		<td>${post_tag.id}</td><br><br><br>
		<td>${post_tag.name}</td><br><br><br>		
		<td>${post_tag.postCount}</td><br><br><br>
	</#list>
         </td><br><br><br>	
         </td><br><br><br>	
         </td><br><br><br>	
         
         
         
            
    <#assign article= obj["article"] > 
    <#list article as post>

	   <td>${post.id}</td><br><br><br>
	   <td><a href="getbyid/${post.id}">${post.title}</a></td><br><br><br>
	   <td>${post.addtime}</td><br><br><br>		
	   <td>${post.status}</td><br><br><br>
	   <td>${post.top}</td><br><br><br>
	   <td>${post.type}</td><br><br><br>
	   <td>${post.tags}</td><br><br><br>
	   <td>${post.content}</td><br><br><br>
	   </td><br><br><br>
	   </td><br><br><br>
	</#list>
	
		
	
	



<h2>heo</h2>
</body>
</html>