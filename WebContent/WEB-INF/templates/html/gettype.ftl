
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Tags</title>
  
    <meta name="author" content="Wendal Chen">
  <link href="${base}/css/style_tag.css" type="text/css" rel="stylesheet" media="all">
    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
<link href="${base}/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">

<link href="${base}/css/style_tag.css" rel="stylesheet" type="text/css" />
<link href="${base}/css/twitter-bootstrap.css" type="text/css" rel="stylesheet" media="all">
 
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
          <li><a href="putarticle">添加文章</a></li>
          
          <li><a href="logoutsession"> 退出登录</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="hbg">&nbsp;</div>

    <div class="container">

      <div class="content">
        
<div class="page-header">
   <h1>Categories </h1>

</div>

<div class="row">
  <div class="span12">
    
<ul class="tag_box inline">
   <#assign tag= obj["article_type"] > 
   <#list tag as post_tag>
  <li>
  <a href="/freestyle_blog/admin/type/#${post_tag.name}">${post_tag.name} <span>${post_tag.count}</span></a>
  </li>
  
   </#list>


</ul>
<br><br>
<br> <#list   obj?keys as mykey> 

 <#if  mykey="article_type">
 <#break> 
 </#if> 
 <h2 id="${mykey}"> ${mykey}  </h2>
   <#assign mapUser=obj[mykey] >
      <#list mapUser as contents>              
        <li><a href="../admin/article/${contents.id}">${contents.title} </a></li>
      </#list> 
</#list>
 

  </div>
</div>

      </div>

        <div class="footer">
    <div class="footer_resize">
      <p class="lf">Â© Copyright <a href="#">MyWebSite</a>. Layout from [Z] <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿">cssMoban.com</a></p>
      <ul class="fmenu">
        <li><a href="/freestyle_blog/admin/page">Home</a></li>
        <li><a href="/freestyle_blog/admin/tags">标签</a></li>
        <li class="active"><a href="/freestyle_blog/admin/type">类型</a></li>
        <li><a href="about.html">About Us</a></li>
        <li><a href="contact.html">Contacts</a></li>
      </ul>
      <div class="clr"></div>
    </div>
    

    </div> <!-- /container -->

    
<script src="http://cdn.bootcss.com/prettify/r298/prettify.min.js"></script>
<script>
  var pres = document.getElementsByTagName("pre");
  for (var i=0; i < pres.length; ++i) {
    pres[i].className = "prettyprint ";
  }
  prettyPrint();
</script>

    
<script type="text/javascript">

  var _gaq = _gaq || [];
  var pluginUrl = '//www.google-analytics.com/plugins/ga/inpage_linkid.js';
  _gaq.push(['_require', 'inpage_linkid', pluginUrl]);
  _gaq.push(['_setAccount', 'UA-22727186-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
	<a href="https://github.com/wendal"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png" alt="Fork me on GitHub"></a>

  </body>
</html>
