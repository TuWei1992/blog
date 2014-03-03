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
<link href="${base}/css/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${base}/css/default/default.css" type="text/css" />





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



<style>
			form {
				margin: 0;
			}
			textarea {
				display: block;
			}
</style>


<script type="text/javascript" src="${base}/js/jquery.fancybox-1.3.4.pack.js"></script>
<script type="text/javascript" src="${base}/js/jquery.poshytip.min.js"></script>

		<script charset="utf-8" src="${base}/kindeditor/kindeditor.js"></script>
		<script charset="utf-8" src="${base}/kindeditor/lang/zh_CN.js"></script>
		
	
	

<script>
					var editor;
			var edi;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content1"]', {
				resizeType : 1,
				width  : '940px',
				 height : '600px',
			    cssPath :[ '${base}/kindeditor/plugins/code/prettify.css'],
				themeType : 'default',
				uploadJson : '../kindeditor/jsp/upload_json.jsp',
				fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
					allowPreviewEmoticons : true,
					allowImageUpload : true,
				items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image','code', 'link']
		
				});
	         		
				edi= K.create('textarea[name="abstracts"]', {
				resizeType : 1,
				 width  : '940px',
                 height : '400px',
			    cssPath :[ '${base}/kindeditor/plugins/code/prettify.css'],
				themeType : 'default',
				uploadJson : '../kindeditor/jsp/upload_json.jsp',
				fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
					allowPreviewEmoticons : true,
					allowImageUpload : true,
				
					
					items : [
						'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
						'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
						'insertunorderedlist', '|', 'emoticons', 'image','code', 'link']
				
				});
			prettyPrint(); 
SyntaxHighlighter.all();
        });
	
		</script>
		
		
	
	     
	     
	       
		
		
		
		
		
		
		

</head>
<body>


<#----头部------------------------------------->
  <div class="header">
    <div class="header_resize">
       <div class="logo"><h1><a href="index.html">free style <small>I have pledged to do my best</small></a></h1></div>
      <div class="menu_nav">
        <ul>
        <li><a href="/freestyle_blog/admin/page">Home</a></li>
          <li><a href="/freestyle_blog/admin/tags">标签</a></li>
           <li class="active"><a href="/freestyle_blog/admin/type">类型</a></li>
          <li><a href="/freestyle_blog/admin/putarticle">添加文章</a></li>    
         
          <li><a href="/freestyle_blog/admin/logoutsession"> 退出登录</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>

  <div class="hbg">&nbsp;</div>
  
  
  
  
  

 <div class="container">

    <div class="content"> 
   

   


      
      
      <h1>添加文章</h1>
      

<form id="blog-form"  action="/freestyle_blog/admin/update" method="post" enctype="multipart/form-data" >
<input type='hidden' name="id"  value=${obj.id}'/>
<input type='hidden' id='hdn_blog_id' name='draft' value='0'/>
<div class="write-blog">
	<div class="section">
		<strong><i style="background:#428BD1;"></i>博客标题</strong>
		<div class="blog-title">
			<input type="text" class="b-input c-input f-input" size="80" maxLength="50" name="title" value='${obj.title}' placeholder="博客标题"/>
		 
			<input type="hidden" name="catalog" id="blog-catalog"/>
		</div>
	</div>
	
	
	<div class="section">
		<strong><i style="background:#40aa53;"></i>博客摘要</strong>
         <textarea class="m-input d-input" name="abstracts" id="abstracts" >${obj.abstracts} </textarea>
	</div>
	

			
	
     	   <div class="section">
		      <div class="sel-editor">
               <strong><i style="background:#40aa53;"></i>博客正文</strong>
		     </div>
		     <textarea class="m-input d-input" name="content1" id="content_1"   >${obj.content} </textarea>
		     <input type="hidden" name="content_type" id="content_type" value="1"/>
	      </div>
	

	
	<div class="section">
		<strong><i style="background:#40aa53;"></i>关键字</strong>
        <input type="text" class="b-input c-input f-input" name="key" placeholder="为你的博客设置关键字，用逗号隔开，最多5个哦"  size="80"　/>
	</div>
	
	
	
	
		<div class="section">
		<strong><i style="background:#40aa53;"></i>设置</strong>
		<div style="margin-top:8px;">
			<p>
				<label class="setting-title">系统博客分类？</label>
				<select class='select_box' name="type" id="blogcatalogselect" style="width:118px;" >
			
                       <option value="${ obj.type}" ref="blog-classification">${ obj.type}</option>
                </select>
    		</p>
    		
    		
    		<br>
    		
    
    		
    		
    	<p>
				<label class="setting-title">系统博客标签？</label>
				<select class='select_box' name="tags" id="blogcatalogselect" style="width:118px;" >
					 <#--     <#assign tag_all= obj["tag"] > 
                        <#list tag_all as post_tag> 
                      <option value="${post_tag.name}" ref="blog-classification">${ post_tag.name}</option>
                      </#list>
                    --->
                      <option value="${ obj.tags}" ref="blog-classification">${obj.tags}</option>
                </select>
    		</p>
    		
    		
    		
    		<br>
    		<p>
				<label class="setting-title">是否发布？</label>
				<select class='select_box' name="stauts" id="blogcatalogselect" style="width:118px;" >
						  
                      <option value="已发布" ref="blog-classification">已发布</option>
                       <option value="不发布" ref="blog-classification">没发布</option>
                 
                   
                      
                </select>
    		</p>
    		
    			<br>
    		<p>
				<label class="setting-title">是否置顶？</label>
				<select class='select_box' name="top" id="blogcatalogselect" style="width:118px;" >
				 
                      <option value="0" ref="blog-classification">置顶</option>
                       <option value="1" ref="blog-classification">不置顶</option>
              
                   
                      
                </select>
    		</p>
			
    		
			<div class="clear"></div>
		</div>
	</div>
	
	
	<div class="section">
        <button type="Submit" class="s-button" id="save-bt">提&nbsp;&nbsp;&nbsp;&nbsp;交</button><button type="button" class="s-button" id="stash-bt">保存草稿</button><span class="err-msg" id="err-msg"></span>
	</div>
	
	
	
	
</div>
</form>

<link href="${base}/css/wmd.css" rel="stylesheet" type="text/css"/>
<script src="/js/wmd.js?v=1.0" type="text/javascript"/></script>


    </div>
  </div>



 
  <div class="footer">
    <div class="footer_resize">
      
      <ul class="fmenu">
   
      </ul>
     
    </div>
  </div>
</div>














</body>
</html>
