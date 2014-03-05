<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>wonder4</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${base}/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/navbar-fixed-top.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/style_tag.css" type="text/css" rel="stylesheet" media="all">

<script type="text/javascript" src="${base}/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${base}/js/bootstrap.min.js"></script>


<#--代码高亮--->
<link type="text/css" rel="stylesheet" href="${base}/css/shCoreDefault.css"  />
<link type="text/css" rel="stylesheet" href="${base}/css/shCore.css"  />
<link type="text/css" rel="stylesheet" href="${base}/css/shThemeDefault.css"  />

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



    
<!---------引入导航文件-------->
  <#include "nav.ftl">
    
 
    
    
    
    

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
          

          <div class="more"> <a href="${base}/article/${post.id}" ><button type="button" class="btn btn-success">阅读全文</button></a> </div>
          </div>  
          </#list>
          
        
          <#assign pagernum= obj["initcount"]>
          <p class="pages">Page ${pagernum} of  <#assign pagercount= obj["pagecount"] > ${pagercount}  &nbsp;&nbsp;&nbsp; <a href="${base}/page/1">首页</a> <#if pagernum ==1 > <#assign prenum=pagernum+1></#if>  <a href="${base}/page/<#if pagernum== 1>${prenum-1}<#else>${pagernum-1}</#if>">&lt&lt</a><span>${pagernum}</span>    <#if pagernum ==pagercount> <#assign pagernum=pagernum-1></#if>   <a href="${base}/page/${pagernum+1}">&gt&gt;</a></p>

         
      
      <div class="clr"></div>
    </div>
  </div>

<!---------引入footer文件-------->
  <#include "footer.ftl">
  
  
  
  

</body>
</html>
