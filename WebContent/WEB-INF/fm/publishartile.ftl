<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>I am hello ^_^</title>

	

	


</head>
<body>

<a href="user">首页</a><br><br><br>
<a href="gettags">标签</a><br><br><br>
<a href="putarticle">添加文章</a><br><br><br>
<a href="logoutsession">退出登录</a><br><br><br>
<a href="puttags_page">添加标签</a><br><br><br>


<h1>添加文章</h1>

<form  action="postarticle" method="post" enctype="multipart/form-data">
标题: 
<input name="title" type="text" /><br><br>

图片: 
<input name="pic" type="file" /><br><br>
内容: 
<textarea name="content" style="width:800px;height:400px;">KindEditor</textarea>
<br><br>

置顶: 
<input name="top" type="text" /><br><br>
状态: 
<input name="stauts" type="text" /><br><br>
文章类型: 
<input name="type" type="text" /><br><br>
标签: 
<select name="tags">
<#list obj as post>  
<option value="${post.name}">${post.name}</option>
</#list>
</select>
<input type="Submit"  value="提交" /><br><br>
</form>
</body>
</html>