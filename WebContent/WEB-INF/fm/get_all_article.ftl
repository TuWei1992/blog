<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>I am hello ^_^</title>
</head>
<body>
<a href="putarticle">添加文章</a>
<a href="user">首页</a>
<a href="puttags_page">添加标签</a><br><br><br>

<table width="100%" class="listt">
	<thead>
		<tr>
			<td width="50">ID</td>
			<td>标题</td>
			<td width="150">时间</td>
			<td width="80">状态</td>
			<td width="50"></td>
		</tr>
	</thead>
	<tbody>
	<#list obj as post>  
	<tr>
		<td>${post.id}</td>
		<td>
			<a href="getart/${post.id}">
				${post.title}
			</a>
		</td>
		<td></td>
		<td>${post.status}</td>
		<td>
			<input type="button" class="btn2 shadowhover2" value="修改" onclick="edit(${post.id})">
			<input type="button" class="btn shadowhover" value="删除" onclick="del(${post.id})">
		</td>
	</tr>
	</#list>
	</tbody>
</table>
<br> 
<h2>hello</h2>
</body>
</html>