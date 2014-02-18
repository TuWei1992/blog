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
      

<form id="blog-form"  action="/freestyle_blog/admin/update/${obj.id}" method="post" enctype="multipart/form-data" >
<input type='hidden' name='user_code' value='g8wrcxGGV9idd5w9JgM9wKbELpYQ3kuyFcLKLVsM'/>
<input type='hidden' id='hdn_blog_id' name='draft' value='0'/>
<div class="write-blog">
	<div class="section">
		<strong><i style="background:#428BD1;"></i>博客标题</strong>
		<div class="blog-title">
			<input type="text" class="b-input c-input f-input" size="80" maxLength="50" name="title" value="${obj.title}" placeholder="博客标题"/>
		 
			<input type="hidden" name="catalog" id="blog-catalog" value="228099"/>
		</div>
	</div>
	
	
	<div class="section">
		<strong><i style="background:#40aa53;"></i>博客摘要</strong>
         <textarea class="m-input d-input" name="abstracts" id="abstracts" >${obj.abstracts} </textarea>
	</div>
	
	
	
		<#----
		<div class="section">
		<strong><i style="background:#40aa53;"></i>上传图片</strong><br><br>
		

			
				<input name="file" type="file"></input>
			
			
		
	
		</div>--->
		
		
			
	
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
				 <#--  	   <#assign type_all= obj["type"] > 
                        <#list type_all as post_type> 
                      <option value="${ post_type.name}" ref="blog-classification">${ post_type.name}</option>
                      </#list>
                   
                       --->
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
			 <#-- 
            <p>
    		    <label class="setting-title">文章类型？</label>
    			<a class="check-ico checked multi-check" onclick="" ref="blog-type" ref-value="1" title="原创的博客">原创</a>
    			<a class="check-ico multi-check" onclick="" ref="blog-type" ref-value="4" title="转帖的博客">转帖</a>
				<input type="hidden" name="type" id="blog-type" value="1"/>
				<span id="origin-span" style="visibility:hidden;color:#777;font-size:12px;">
    				原文链接&nbsp;
    				<input type="text" class="c-input b-input o-input" name="origin_url" size="55" placeholder="输入转帖的原文链接"/>
				</span>
    		</p>
    		<p>
    		    <label class="setting-title">是否对所有人可见？</label>
    			<a  class="check-ico checked single-check"  onclick="" ref="blog-privacy"  default-value="0" check-value="0" uncheck-value="1" check-html="可见" uncheck-html="私密" >可见</a>
				<input type="hidden" name="privacy" id="blog-privacy" value="0"  />
    		</p>
    		 <p>
    		    <label class="setting-title">是否允许评论？</label>
    			<a class="check-ico checked single-check" onclick="" ref="blog-deny-comment" default-value="0" check-value="0" uncheck-value="1" check-html="允许" uncheck-html="禁止">允许评论</a>
				<input type="hidden" name="deny_comment" id="blog-deny-comment" value="0" />
    		</p>
    		 <p>
    		    <label class="setting-title">是否自动生成目录？</label>
    			<a class="check-ico checked single-check"  onclick="" ref="blog-auto-content" default-value="1" check-value="1" uncheck-value="0" check-html="生成目录" uncheck-html="不生成目录">生成目录</a>
				<input type="hidden" name="auto_content" id="blog-auto-content" value="1" />
    		</p>
    		 <p>
    		    <label class="setting-title">是否在博客列表置顶？</label>
    			<a  class="check-ico single-check" onclick="" ref="blog-as-top" default-value="1" check-value="1" uncheck-value="0" check-html="有目录" uncheck-html="无目录">置顶</a>
				<input type="hidden" name="as_top" id="blog-as-top" value="0"/>
    		</p>
    		
    		
    		-->
    		
    		
			<div class="clear"></div>
		</div>
	</div>
	
	
	<div class="section">
        <button type="Submit" class="s-button" id="save-bt">提&nbsp;&nbsp;&nbsp;&nbsp;交</button><button type="button" class="s-button" id="stash-bt">保存草稿</button><span class="err-msg" id="err-msg"></span>
	</div>
	
	
	
	
</div>
</form>
<script type="text/javascript">
    $(document).ready(function(){
    	$(".blog-title .catalog li").click(function(event){
    		var thiz = $(this);
    		var parent = thiz.parent("ul");
    		var catalog = thiz.attr("catalog");
			var cata_div = thiz.closest(".catalog");
    		var isEx = cata_div.attr("expands")
    		var height = "22px";
    		if(isEx && isEx == "false"){
    			height = "auto"
    			cata_div.attr("expands","true");
    			cata_div.css({
            			"overflow": "visible"
        		});
    		}else{
        		cata_div.attr("expands","false")
    			cata_div.css({
            			"overflow": "hidden"
        		});
    		}
    		cata_div.css({
    			"height":height
    		});
    		event.stopPropagation();
    		$("#blog-catalog").val(catalog);
    		parent.prepend(thiz);
			event.stopPropagation();
    	});
    	$(document).click(function(event){
    		var cata = $(".blog-title .catalog");
    		cata.css({
    			"height":"22px",
				"overflow": "hidden"
    		});
    		cata.attr("expands","false")
    	});
    	$(".multi-check").click(function(){
    		var thiz = $(this);
    		var ref = thiz.attr("ref");
    		var value = thiz.attr("ref-value");
    		if(ref=="blog-type"){
    			var originSpan = $("#origin-span");
    			if(value == 4 ){
    				originSpan.css({
    					"visibility":"visible"
    				});
    				originSpan.find("input[type=text]").focus();
    			}else{
    				originSpan.css({
    					"visibility":"hidden"
    				});
    			}
    		}
    		$("#"+ref).val(value);
    		thiz.addClass("checked");
    		thiz.siblings(".check-ico").removeClass("checked");
    	});
    	$(".single-check").click(function(){
    		var thiz = $(this);
    		var ref = thiz.attr("ref");
    		var value = thiz.attr("default-value");
    		if(thiz.hasClass("checked")){
    			value = thiz.attr("uncheck-value");
    			thiz.removeClass("checked")
    		}else{
    			value = thiz.attr("check-value");
        		thiz.addClass("checked");
    		}
    		$("#"+ref).val(value);
    	});
    });
	
	Date.prototype.format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份 
            "d+": this.getDate(), //日 
            "h+": this.getHours(), //小时 
            "m+": this.getMinutes(), //分 
            "s+": this.getSeconds(), //秒 
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
            "S": this.getMilliseconds() //毫秒 
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    }

	var Blog = {
		warn : true,
		hasSave : false,
		sysn : function(){},
		title : $('input[type=text][name=title]'),
		content : $('textarea[name=content]'),
		savebt:{
			set:function(){
				$("#save-bt").html("正在发表");
			},
			reset:function(){
				$("#save-bt").html("提&nbsp;&nbsp;&nbsp;&nbsp;交");
			}
		},
		stashbt:{
			set:function(){
				$("#stash-bt").html("保存草稿中");
			},
			reset:function(){
				$("#stash-bt").html("保存草稿");
			}
		},
		switch_editor : function(type){
			Blog.sysn();
			var title = Blog.title.val();
        	if(title.length > 0) {
        		if(!confirm("切换编辑器将会丢失未保存的内容，确定离开吗？"))
        			return;
        	}
        	jQuery.post('/freestyle_blog/admin/update/${obj.id}, function(){
        		Blog.warn = false;
        		location.reload();
        	});
		},
		stash:function(){
			var tip = $("#err-msg");
			tip.html("");
			Blog.sysn();
			Blog.stashbt.set();
			jQuery("#blog-form").ajaxSubmit({
        		dataType:'json',
        		type:'POST',
        		url:'',
        		success:function(json){
        			if(json.msg) {
            			 tip.html(json.msg);
                         Blog.warn = true;
                    }
            		else if(json.draft){
						$('#hdn_blog_id').val(json.draft);
    					tip.html("草稿保存成功："+new Date().format("hh:mm:ss"));
            			Blog.warn = false;
            		}
				  Blog.stashbt.reset();
        		}
        	});
		},
		save:function(){
			if(Blog.hasSave)
				return;
			Blog.hasSave = true;	
			var tip = $("#err-msg");
			tip.html("");
			Blog.sysn();
			Blog.savebt.set();
			jQuery("#blog-form").ajaxSubmit({
    			dataType:'json',
    			type:'POST',
    			url:"/freestyle_blog/admin/update/${obj.id}",
    			success:function(json){
					
    				if(json.msg) {
                		tip.html(json.msg);
                        Blog.warn = false;
            			Blog.hasSave = false;
                    }
            		else if(json.id){
						Blog.hasSave = true;
						Blog.warn = false;
        				location.href = "http://my.oschina.net/freestyleblog/blog"+"/"+json.id;
            		}
    				Blog.savebt.reset();
    			}
			});
			
		},
		leave:function(){
			if(!Blog.warn)
			     return;
        	var title = $('input[type=text][name=title]').val();
        	if(title.length==0){
        		
        		var body = $('textarea[name=content]').val();
        		if(body.length == 0)
        			return;
        	}
        	return "确认放弃此文章";
		}
	};
	window.onbeforeunload = Blog.leave;
	$("#save-bt").click(function(){
	
	/* 验证博客分类是否选定 */
	
    	var msg = document.getElementById("err-msg");
        var selectbox = document.getElementById("blogcatalogselect");
		
        if (selectbox.value == 0) {
            msg.innerHTML = "<font color = 'red'>未选择系统博客分类</>";
            return false;
        } 
		
		Blog.save();
	});
	$("#stash-bt").click(function(){
		Blog.stash();
	});
	$(".editor-item").click(function(){
		var thiz = $(this);
		var id = thiz.attr("ref-value");
		Blog.switch_editor(id);
	});
</script>
<link href="${base}/css/wmd.css" rel="stylesheet" type="text/css"/>
<script src="/js/wmd.js?v=1.0" type="text/javascript"/></script>

<script type="text/javascript">

$(document).ready(function(){
	$('#wmd-input').before('<div id="wmd-button-bar" class="wmd-button-bar"></div>');
    $('#wmd-input').after('<div id="wmd-preview" class="BlogContent wmd-preview" style="display:none;"></div>');
    var converter = Markdown.getSanitizingConverter();
    var wmd = new Markdown.Editor(converter,null,{output:'Markdown',title:'Markdown快速入门',handler:showHelp});
    wmd.hooks.set('insertImageDialog', doInsertImage);
    wmd.run();
    $('#wmd-help-button').before('<li class="wmd-button" title="预览" style="right: 100px;" id="preview-tab-button"><span class="wmd-blog-prev">预览切换</span></li>');
	$('#wmd-button-bar').css({
		"border-top":"1px solid #CCC"
	});
    $('#edit-tab-button,#preview-tab-button').click(function(){
		var thiz  = $(this);
    	thiz.toggleClass('selected');
    	$('#wmd-input').toggle();
    	$('#wmd-preview').toggle();
		var chd = thiz.children("span");
		var html = chd.text();
		if(html == "预览切换"){
			chd.text("编辑切换")
		}else{
			chd.text("预览切换")
		}
    });
	$(document).on("keydown",function(event){
    		if((event.metaKey || event.ctrlKey) && event.keyCode==83){
        		event.preventDefault();
        		event.returnvalue = false;
    			Blog.stash();
    			return false;
    		}
	});
});

</script>

<script>
var interval_save_instance;
var interval_save = function(){
	Blog.sysn();
	var text = Blog.content.val();
	if(text && text.length >0 )
		Blog.stash();
	
	clearTimeout(interval_save_instance);
    interval_save_instance = window.setTimeout(interval_save,5000);
}
interval_save_instance = window.setTimeout(interval_save,5000);
</script></div>

<script type='text/javascript'>
<!--
$(document).ready(function() {
    $('.AutoCommitJSONForm').ajaxForm({
    	dataType:'json',
    	success: function(json) {
    		$('#error_msg').hide();
    		if(json.error != 0)
    			$('#error_msg').html("<span class='error_msg'>"+json.msg+"</span>");
    		else
    			$('#error_msg').html("<span class='ok_msg'>"+json.msg+"</span>");
    		$('#error_msg').show();
    	}
    });	
	$('#AdminTitle').html("<a href=''>发表博文</a>");
});
//-->
</script>





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
