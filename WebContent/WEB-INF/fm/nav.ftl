
       <!--------------------------------------------------------------------------弹出框css-------------------------------------------------------------------------------------> 
     <style type="text/css">
      .form-signin {
   
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
     .input-block-level {
       display: block;
       width: 100%;
       min-height: 30px;
       -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
          box-sizing: border-box;
}

    </style>
    
    
    
    
    
   <!--------------------------------------------------------------------------导航-------------------------------------------------------------------------------------> 
    
     <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">  
         <a class="navbar-brand" href="#">wonder4</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${base}/page">Home</a></li>
            <li><a href="${base}/tag">标签</a></li>
            <li><a href="${base}/type">类型</a></li>
            <li><a href="${base}/images">image</a></li>
            <li><a href="${base}/writer">wonder4在此</a></li>
         <!---- <li class="buttun_nav"><button type="button" class="btn btn-primary">login</button></li>---->
         <li class="buttun_nav"> <button  type="button" id="change_button" class="btn btn-sm btn-success " data-toggle="modal" data-target="#myModal">login</button></li>

          </ul>
         
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
    
    
      <!--------------------------------------------------------------------------登陆弹出框------------------------------------------------------------------------------------->
    <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Please sign in !</h4>
      </div>
      <div class="modal-body">
        <form class="form-signin" id="searchForm"  >
        <input type="text" class="input-block-level" name="name" placeholder="Email address">
        <input type="password" class="input-block-level" name="pass" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit">Sign in</button>
       </form>
      </div>
     
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<script type="text/javascript" src="${base}/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="${base}/js/bootstrap.min.js"></script>
<script type="text/javascript">
$('#myModal').modal(options)



$( "#searchForm" ).submit(function( event ) {
 

  event.preventDefault();

$.ajax({
  type: "GET",
  url: "${base}/admin/index",
  data: { name: "zhimeiyue", password: "369" }
})
  .done(function( msg ) {
    alert( "Data Saved: " + msg );
  });
  
  
   <!-----
  var $form = $( this ),
    name = $form.find( "input[name='nam']" ).val(),
    pass = $form.find( "input[name='pass']" ).val(),
  
 

  var posting = $.post("${base}/admin/index", { nameuser: name ,password: pass } );
 

  posting.done(function( data ) {
    $( "#change_button" ) .toggleClass( "highlight" );
    
    $('#myModal').modal('hide')
  });--->
  
  
});
</script>




    