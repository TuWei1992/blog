<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>I am hello ^_^</title>
</head>
<body>
<a href="/freestyle_blog/admin/putarticle">添加文章</a><br><br><br>
<a href="/freestyle_blog/admin/logoutsession">退出登录</a><br><br><br>
<a href="/freestyle_blog/admin/gettags">标签</a><br><br><br>
<a href="/freestyle_blog/admin/user">首页</a><br><br><br>
<a href="/freestyle_blog/admin/puttags_page">添加标签</a><br><br><br>


<br> 
<h2>hello</h2><br><br>


<table width="100%" class="listt">
	<thead>
		<tr>
			<td width="50">ID</td>
			<td>标题</td>	
			<td>status</td>
			<td>top</td>
			<td>类型</td>
			<td>标签</td>
			<td>内容</td>
		</tr>
	</thead>
	<tbody>
	
	<tr>
		<td>${obj.id}</td>
		<td>${obj.title}</td>		
		<td>${obj.status}</td>
		<td>${obj.top}</td>
		<td>${obj.type}</td>
		<td>${obj.tags}</td>
		<td>${obj.content}</td>
		
	</tr>

	</tbody>
</table>
</body>
</html>