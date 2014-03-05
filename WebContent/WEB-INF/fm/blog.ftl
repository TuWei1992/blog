
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>wonder4</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${base}/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/navbar-fixed-top.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/style_tag.css" type="text/css" rel="stylesheet" media="all">



<link type="text/css" rel="stylesheet" href="${base}/css/shCoreDefault.css"  />
<link type="text/css" rel="stylesheet" href="${base}/css/shCore.css"  />
<link type="text/css" rel="stylesheet" href="${base}/css/shThemeDefault.css"  />
<script type="text/javascript" src="${base}/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${base}/js/shCore.js"></script>
<script type="text/javascript" src="${base}/js/shBrushJScript.js"></script>
<script type="text/javascript" src="${base}/js/brush.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	SyntaxHighlighter.all();
});
</script>






<!-- CuFon ends -->
</head>
<body>


<!---------引入导航文件-------->
  <#include "nav.ftl">

  <div class="hbg">&nbsp;</div>

  <div class="container">

      <div class="content">
      

         <div class="article">
            <h2> <span>${obj.title}</h2>
            <p><span>&nbsp;&bull;&nbsp;</span> 文章类型: <a href="#">${obj.type}</a>&nbsp;&bull;&nbsp标签: <a href="#">${obj.tags}</a> <span>&nbsp;&bull;&nbsp;时间:</span> ${obj.addtime} &nbsp;&bull;&nbsp;(<a href="/freestyle_blog/admin/change/${obj.id}">修改</a>&nbsp;&bull;&nbsp;<a href="/freestyle_blog/admin/delete/${obj.id}">删除</a>)</p>
            <p>${obj.content} </p>
            <p></p>
             
            <div class="clr"></div>
              
        </div>
        
           
      <div class="clr"></div>
    </div>
  </div>
  
 


  
  
  
<!---------引入footer文件-------->
  <#include "footer.ftl">



</body>
</html>
