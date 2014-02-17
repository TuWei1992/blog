<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>I am hello ^_^</title>
<link href="${base}/css/style_tag.css" type="text/css" rel="stylesheet" media="all">
</head>
<body>
<a href="putarticle">添加文章</a><br><br><br>
<a href="logoutsession">退出登录</a><br><br><br>
<a href="user">首页</a><br><br><br>
<a href="puttags_page">添加标签</a><br><br><br>
<h2>文章类型</h2>

<table width="100%" class="listt">
	<thead>
		<tr>
			<td width="50">ID</td>
			<td>标题</td>
			<td>文章数</td>
		</tr>
	</thead>
	<tbody>
	<#list obj as post>  
	<tr>
		<td>${post.id}</td>
		<td>
			<a href="getart/${post.name}.nut">
				${post.name}
			</a>
		</td>
		<td>${post.count}</td>
		
	</tr>
	</#list>
	</tbody>
</table>
<br> 
<h2>hello</h2>
</body>
</html>