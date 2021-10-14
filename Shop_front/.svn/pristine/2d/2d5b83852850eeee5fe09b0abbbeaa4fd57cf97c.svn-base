<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
<title>注册</title>
<link rel="stylesheet" media="screen" href="/Shop_front/css/Enroll/css.css" />
<style type="text/css">
	#forward{
		width: 100px;
    background: #27AE60;
    font-weight: bold;
    color: white;
    border: 0 none;
    border-radius: 1px;
    cursor: pointer;
    padding: 10px 5px;
    margin: 10px 5px;
	}
</style>
</head>
<div style="display:none">
	<a href="http://mathiasbynens.be/demo/jquery-size" target="_blank" data-mce-href="http://mathiasbynens.be/demo/jquery-size"></a>
</div>
<form id="msform" action="/Shop_front/getEnroll" method="post">
	<!-- progressbar -->
	<ul id="progressbar">
		<li class="active">第一步</li>
		<li>第二步</li>
		<li>第三步</li>
	</ul>
	<!-- fieldsets -->
	<fieldset>
		<h2 class="fs-title">Create your account</h2>
		<h3 class="fs-subtitle">This is step 1</h3>
		手机号：<input type="text" id="phone" name="Phonecode" placeholder="请输入手机号" />
		验证：<input type="text" id="verify" name="verify" placeholder="请输入验证码" />
		<div class="btn-group" role="group" aria-label="...">
  			<button id="forward" type="button" onclick="send()" class="btn btn-default">发送验证码</button>
			<input name="authcode" id="authcode" type="text" style="display: none" >
		</div>
		<input id="input1" type="button" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset id="fieldset-vie">
		<h2 class="fs-title">Your basic information</h2>
		<h3 class="fs-subtitle">This is step 2</h3>
			<span id="span-hint" hidden="false" style="display:block;color: red;padding-bottom: 8px;"></span>
		用户名：<input class="input-class-2" id="username" type="text" name="username" placeholder="请输入用户名" />
		密码：<input id="pwd" type="password" placeholder="请输入密码" />
		<div class="alert alert-danger" role="alert"></div>
		确认密码：<input id="password" type="password" name="Password" placeholder="请确定密码" />
		验证邮箱：<input class="input-class-2" id="emails" type="text" name="Emails" placeholder="请输入邮箱" />
		<input type="button" class="previous action-button" value="上一步" />
			<input id="input2" type="button" class="next action-button" value="注册完成" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">congratulations</h2>
		<h3 class="fs-subtitle">registration complete！</h3>
		<h1>注册完成！</h1>
		<input type="submit" style="background: #27AE60;color: white;" value="确认"/>
	</fieldset>
</form>
<script src="/Shop_front/js/Enroll/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="/Shop_front/js/Enroll/jquery.easing.min.js" type="text/javascript"></script>
<script src="/Shop_front/js/Enroll/jQuery.time.js" type="text/javascript"></script>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>

<style>
.copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights" id="links20210126">
	Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
	<a href="http://cooco.net.cn/" title="组卷网">组卷网</a>
</div>
</body>
<script type="text/javascript">
	var phone;
	/* 页面加载禁用按钮 */
	$(function(){
		$("#input1").attr("disabled",false);
		$("#input2").attr("disabled",false);
	});
	
	/* 判断注册成功按钮是否满足条件 */
	$("#fieldset-vie").click(function(){
		var username = $("#username").val();
		var newpwd = $("#pwd").val();
		var password = $("#password").val();
		var emails = $("#emails").val();
		if(username!=""&&newpwd!=""&&password!=""&&emails!=""&&$("#span-hint[hidden='ture']")){
			$("#input2").attr("disabled",false);
		}
	})	
	
	/* 判断用户名是否为空 */
	$("#username").change(function(){
		var username = $("#username").val();
		if($(this).val() == ""){
			$("#span-hint").html("用户名不能为空");
			$("#span-hint").attr("hidden",false);
		}
		$("#span-hint").attr("hidden",true);
	});
	
	/* 验证两次输入密码 */
	$("#password").blur(function(){
	var str = /(?!^(\d+|[a-zA-Z]+|[~!@#$%^&*?]+)$)^[\w~!@#$%\^&*?]/ ;
		var newpwd = $("#pwd").val();
		var affirm_pwd = $("#password").val();
		if(newpwd != affirm_pwd){
			$("#span-hint").html("两次输入密码不符！");
			$("#span-hint").attr("hidden",false);
		}else if(this.value.length<6 || this.value.length>20){
			$("#span-hint").html("长度6~20");
			$("#span-hint").attr("hidden",false);
		}else if(!str.test(this.value)){
			$("#span-hint").html("必须是字母、数字、特殊字符任意2中或者2种以上的组合");
			$("#span-hint").attr("hidden",false);
		}else{
			$("#span-hint").html("");
			$("#span-hint").attr("hidden",true);
		}
	});
	
	/* 必须是字母、数字、特殊字符任意2中或者2种以上的组合*/
	$("#pwd").blur(function(){
		var str = /(?!^(\d+|[a-zA-Z]+|[~!@#$%^&*?]+)$)^[\w~!@#$%\^&*?]/ ;
		if(this.value.length<6 || this.value.length>20){
			$("#span-hint").html("长度6~20");
			$("#span-hint").attr("hidden",false);
		}else if(!str.test(this.value)){
			$("#span-hint").html("必须是字母、数字、特殊字符任意2中或者2种以上的组合");
			$("#span-hint").attr("hidden",false);
		}else{
			$("#span-hint").html("");
			$("#span-hint").attr("hidden",true);
		}
	});
	
	/* 邮箱格式验证 */
	$("#emails").blur(function(){
		var str = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/ ;
		if(!str.test(this.value)){
			$("#span-hint").html("邮箱格式错误");
			$("#span-hint").attr("hidden",false);
		}else{
			$("#span-hint").html("");
			$("#span-hint").attr("hidden",true);
		}
	});
	
	/* 判断验证码是否正确 */
	$("#verify").change(function(){
	//获取用户输入验证码
		var verify = $("#verify").val();
		var authcode = $("#authcode").val();
		$.ajax({
			url:'/Shop_front/Enrollverify',
			type:'post',
			data:{"verify":verify,"authcode":authcode},
			success:function(data){
				if(data==1){
					alert("验证码正确");
					if(phone != ""){
						$("#input1").attr("disabled",false);					
					}
				}else{
					alert("验证码错误");
					$("#input1").attr("disabled",true);
				}
			}
			
		});
	});

	
	/* 发送验证码 */
	function send(){
		phone = $("#phone").val();
		if(phone == ""){
			alert("手机号为空");
		}
		$.ajax({
	     url:'/Shop_front/verifyEnroll',
	     type:'post',
	     data:{"phone":phone},
	     success:function(data){
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
</script>
</html>