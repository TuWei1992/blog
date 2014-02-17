<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.FreeWebsiteTemplateZ.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${base}/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/style_tag.css" type="text/css" rel="stylesheet" media="all">
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->


<#--代码高亮--->
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
</head>
<body>


   <div class="header">
    <div class="header_resize">
      <div class="logo"><h1><a href="index.html">free style <small>I have pledged to do my best</small></a></h1></div>
      <div class="menu_nav">
        <ul>
        <li><a href="/freestyle_blog/admin/page">Home</a></li>
          <li><a href="/freestyle_blog/admin/tags">标签</a></li>
           <li class="active"><a href="/freestyle_blog/admin/type">类型</a></li>
          <li><a href="/freestyle_blog/admin/putarticle">添加文章</a></li>
         
          <li><a href="logoutsession"> 退出登录</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="hbg">&nbsp;</div>

  <div class="container">

      <div class="content">

      
          <#assign article= obj["article"] > 
          <#list article as post>
          <div class="article">
          <p class="date">2018<span>18/10</span></p>
          <h2 class="h"><span>${post.title}</span></h2><div class="clr"></div>
          Filed under <a href="#">${post.type}</a>, <a href="#">${post.tags}</a></p>
          <#--
          <#if post.content?length lt 1000> 
          <p>${post.content}</p>
          <#else>
          <p>${post.content[0..500]}</p>.........</p>
          </#if>
          -->
          <p>${post.abstracts}</p>                   
          <div class="more"><a href="article/${post.id}" class="rm">阅读全文</a> </div>
          </div>  
          </#list>
          
        
          <#assign pagernum= obj["initcount"]>
          <p class="pages">Page ${pagernum} of  <#assign pagercount= obj["pagecount"] > ${pagercount}  &nbsp;&nbsp;&nbsp; <a href="/freestyle_blog/admin/page/1">首页</a> <#if pagernum ==1 > <#assign prenum=pagernum+1></#if>  <a href="/freestyle_blog/admin/page/<#if pagernum== 1>${prenum-1}<#else>${pagernum-1}</#if>">&lt&lt</a><span>${pagernum}</span>    <#if pagernum ==pagercount> <#assign pagernum=pagernum-1></#if>   <a href="/freestyle_blog/admin/page/${pagernum+1}">&gt&gt;</a></p>

           
      
      <div class="clr"></div>
    </div>
  </div>

 <#---footer----->
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">© Copyright <a href="#">MyWebSite</a>. Layout from [Z] <a href="http://www.cssmoban.com/" title="网页模板">cssMoban.com</a></p>
      <ul class="fmenu">
        <li class="active"><a href="index.html">Home</a></li>
        <li><a href="support.html">Support</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="about.html">About Us</a></li>
        <li><a href="contact.html">Contacts</a></li>
      </ul>
      <div class="clr"></div>
    </div>
  </div>
  
  
  
  

</body>
</html>
