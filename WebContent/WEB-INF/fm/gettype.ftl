
<!DOCTYPE html>
<html lang="en">
  <head>
 <meta charset="utf-8">
   <title>wonder4</title> 
 <meta name="author" content="wonder4">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Le styles -->
<link href="${base}/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/navbar-fixed-top.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/style_tag.css" rel="stylesheet" type="text/css" />
  <script src="${base}/js/jquery-1.8.0.min.js"></script>
  </head>

  <body>

<!---------引入导航文件-------->
  <#include "nav.ftl">

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
  <a href="${base}/type/#${post_tag.name}">${post_tag.name} <span>${post_tag.count}</span></a>
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
        <li><a href="${base}/article/${contents.id}">${contents.title} </a></li>
      </#list> 
</#list>
 

  </div>
</div>

</div>



  <!---------引入footer文件-------->
  <#include "footer.ftl">

    


	

  </body>
</html>
