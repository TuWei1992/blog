
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>cssæ¿</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="${base}/css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
<link href="${base}/css/style_tag.css" type="text/css" rel="stylesheet" media="all">
<link type="text/css" rel="stylesheet" href="${base}/css/shCoreDefault.css"  />
<link type="text/css" rel="stylesheet" href="${base}/css/shCore.css"  />
<link type="text/css" rel="stylesheet" href="${base}/css/shThemeDefault.css"  />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

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


  <div class="header">
    <div class="header_resize">
      <div class="logo"><h1><a href="index.html">free style <small>I have pledged to do my best</small></a></h1></div>
      <div class="menu_nav">
        <ul>
         <li><a href="${base}/page">Home</a></li>
          <li><a href="${base}/tags">标签</a></li>
           <li class="active"><a href="${base}/type">类型</a></li>

        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>

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
        
        
        
        
        
        
        
        <!-----
        <div class="article">
          <h2><span>3</span> Responses</h2><div class="clr"></div>
          <div class="comment">
            <a href="#"><img src="${base}/images/userpic.gif" width="40" height="40" alt="user" class="userpic" /></a>
            <p><a href="#">admin</a> Says:<br />April 20th, 2009 at 2:17 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.</p>
          </div>
          <div class="comment">
            <a href="#"><img src="${base}/images/userpic.gif" width="40" height="40" alt="user" class="userpic" /></a>
            <p><a href="#">Owner</a> Says:<br />April 20th, 2009 at 3:21 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</p>
          </div>
          <div class="comment">
            <a href="#"><img src="${base}/images/userpic.gif" width="40" height="40" alt="user" class="userpic" /></a>
            <p><a href="#">admin</a> Says:<br />April 20th, 2009 at 2:17 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.</p>
          </div>
        </div>
        <div class="article">
          <h2><span>在此</span>讨论</h2><div class="clr"></div>
          <form action="#" method="post" id="leavereply">
          <ol><li>
            <label for="name">名字 ：(required)</label>
            <input id="name" name="name" class="text" />
          </li><li>
            <label for="email">Email(required)</label>
            <input id="email" name="email" class="text" />
          </li><li>
            <label for="message">你的回复：</label>
            <textarea id="message" name="message" rows="8" cols="50"></textarea>
          </li><li>
            <input type="image" name="imageField" id="imageField" src="${base}/images/submit.gif" class="send" />
            <div class="clr"></div>
          </li></ol>
          </form>
        </div>
      </div>
       ------->
      
     
      <div class="clr"></div>
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
    
    

  </div>
</div>



</body>
</html>
