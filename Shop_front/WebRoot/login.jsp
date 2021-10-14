<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>Amaze UI Examples</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="stylesheet" href="/Shop_front/css/login/amazeui.min.css">
  <link rel="stylesheet" href="/Shop_front/css/login/app.css">
<script type="text/javascript" src="js/jquery.js"></script></head>
<body>
<div class="am-g myapp-login">
	<div class="myapp-login-bg">
		  <div data-am-widget="tabs">
	      <ul class="am-tabs-nav am-cf">
	          <li class="am-active"><a href="[data-tab-panel-0]">用户登录</a></li>
	          <li><a href="/Shop_After/login.jsp">管理员登入</a></li>
	         
	      </ul>
	      <div class="am-tabs-bd">
	          <div class="am-tab-panel am-active">
				<form action="/Shop_front/getlogin" method="get" class="am-form">
					<fieldset>
						<div class="am-form-group">
						<label for="doc-vld-name">手机号</label>
						<input name="Phonecode" type="text" id="doc-vld-name" minlength="11" placeholder="请输入手机号" class="phones" required/>
						</div>
						<div class="am-form-group">
						<label for="doc-vld-name" style="display: table;">验证</label>
						<input name="authcodes" type="text" id="doc-vld-name" minlength="6" placeholder="请输入验证码" class="am-form-field" style="width: 80%;display: initial;" required/>
						<input name="authcode" id="authcode" type="text" style="display: none" >
						<button id="forward" class="myapp-login-button am-btn am-btn-secondary" style="width: 10%;" type="button" onclick="send()">发送验证码</button>
						</div>
						<div class="am-form-group">
						<label for="doc-vld-name">密码</label>
						<input name="Password" type="password" id="doc-vld-name" minlength="6" placeholder="请输入密码" class="am-form-field" required/>
						</div>
						<!-- <div class="am-form-group myapp-login-treaty"><label class="am-form-label"></label><label class="am-checkbox-inline"> <input type="checkbox" value="橘子" name="docVlCb" minchecked="2" maxchecked="4" required="">已同意使用条约 </label></div> -->
						<button class="myapp-login-button am-btn am-btn-secondary" style="width: 49%;" type="submit">登录</button>
						<button id="register" class="myapp-login-button am-btn am-btn-secondary" style="width: 49%;" type="button">注册</button>
					</fieldset>
					<legend>忘记密码?</legend>
				</form>
	          </div>
	          
	        
	      </div>
	  </div>
	</div>
</div>
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="/Shop_front/js/login/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="/Shop_front/js/login/amazeui.min.js"></script>
<script src="/Shop_front/js/login/app.js"></script>
</body>
<script type="text/javascript">
	/* 发送短信验证码 */
	function send(){
		var phone = $(".phones").val();
		$.ajax({
	     url:'/Shop_front/verify',
	     type:'post',
	     data:{"phone":phone},
	     success:function(data){
	     debugger
		     	if(data!=null){
		     		var auth = data;
		     		$("#authcode").val(auth);
		     		var time = 60;
		     		if(time==60){//如果不加入该判断，则会出现在倒计时期间不断的点击发生不断的加快（其实就是你点了多少次就重复多少次该函数）的问题，用setTimeout（）方法不加此判断也是一样的
	    		   		var time1=setInterval(function(){
		        		   if(time==0){
		            		   $("#forward").html("重新发送");
		            		   $("#forward").removeAttr("disabled");
		            		   time=60;
		            		   clearInterval(time1);
		            	   }else{
		            		   $("#forward").attr("disabled","true");
		            		   $("#forward").html("重新发送("+time+")");
		            		   time--;
		            	   }
	        		   }, 1000);
	    	  	}
	     	}
	     }
    })
	}

	$("#register").click(function(){
		window.location="/Shop_front/Enroll.jsp";
	})
</script>
</html>