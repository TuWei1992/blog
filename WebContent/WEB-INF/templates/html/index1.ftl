<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.FreeWebsiteTemplateZ.com
Released for free under a Creative Commons Attribution 3.0 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${base}/css/style.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->
</head>
<body>
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo"><h1><a href="index.html">free_style <small>I have pledged to do my best</small></a></h1></div>
      <div class="menu_nav">
        <ul>
       <li><a href="/freestyle_blog/admin/user">Home</a></li>
          <li><a href="/freestyle_blog/admin/gettags">标签</a></li>
          <li><a href="/freestyle_blog/admin/puttags_page">添加标签</a></li>
          <li class="active"><a href="/freestyle_blog/admin/gettype">类型</a></li>
          <li><a href="/freestyle_blog/admin/puttype_page"> 添加类型</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="hbg">&nbsp;</div>

  <div class="content">
    <div class="content_resize">   
      <div class="mainbar">
      
       <#assign article= obj["article"] > 
       <#list article as post>
    
        <div class="article">
          <p class="date">2018<span>18/10</span></p>
          <h2><span>${post.title}</span></h2><div class="clr"></div>
          <p>Posted by <a href="#">zhimeiyue</a> &nbsp;|&nbsp; Filed under <a href="#">${post.type}</a>, <a href="#">internet</a></p>
          <img src="${base}/images/img1.jpg" width="605" height="197" alt="image" />
          <p>${post.content}</p>
          <p class="spec"><a href="getbyid/${post.id}" class="rm">Read more &raquo;</a> &nbsp;|&nbsp; <a href="#" class="com">Comments (13) &raquo;</a></p>
        </div>
        <p>--------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
        
        </#list>
        
        
        <p class="pages">Page 1 of 2 &nbsp;&nbsp;&nbsp; <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Categories</h2><div class="clr"></div>
          <ul class="sb_menu">
          
             <#assign type_all= obj["type"] > 
                   <#list type_all as post_type>
		
		          <li><a href="#">${post_type.name}</a></li>		
	
	              </#list>
           
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">tags</h2><div class="clr"></div>
          <ul class="ex_menu">
          
                 <#assign tag_all= obj["tag"] > 
                 <#list tag_all as post_tag>
	
		       <li>${post_tag.name}</li>	
		
	</#list>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>

 
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
</div>
</body>
</html>
