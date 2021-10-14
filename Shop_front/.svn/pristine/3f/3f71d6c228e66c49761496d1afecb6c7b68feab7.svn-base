<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>修改密码-用户中心</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="/Shop_front/images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="/Shop_front/css/style.css" />
<script src="/Shop_front/js/html5.js"></script>
<script src="/Shop_front/js/jquery.js"></script>
<script>
$(document).ready(function(){
  $("nav .indexAsideNav").hide();
  $("nav .category").mouseover(function(){
	  $(".asideNav").slideDown();
	  });
  $("nav .asideNav").mouseleave(function(){
	  $(".asideNav").slideUp();
	  });
});
</script>
</head>
<body>
<jsp:include page="../Top.jsp"></jsp:include>
 <script>
 $(document).ready(function(){
   //测试效果，程序对接如需变动重新编辑
   $(".switchNav li").click(function(){
     $(this).addClass("active").siblings().removeClass("active");
     });
   $("#chanpin").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入产品关键词或货号");
     });
   $("#shangjia").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入商家店铺名");
     });
   $("#zixun").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文章内容");
     });
   $("#wenku").click(function(){
     $(".inputWrap input[type='text']").attr("placeholder","输入关键词查找文库内容");
     });
   });
   
 </script>
 
<section class="wrap user_center_wrap">
 
 <jsp:include page="../Left.jsp"></jsp:include>
 
 <!--右侧：内容区域-->
 <div class="user_rt_cont">
  <div class="top_title">
   <strong>修改密码</strong>
  </div>
  <table class="order_table">
   <tr>
    <td width="80" align="right">原始密码：</td>
    <td><input type="password" class="textbox" value="........."></td>
   </tr>
   <tr>
    <td width="80" align="right">设置新密码：</td>
    <td><input id="newpwd" type="password" class="textbox"/><mark id="new_mark" class="tips_errors" hidden="hidden"></mark></td>
   </tr>
   <form action="/Shop_front/personage/updatepwd" method="post">
	   <input name="MemberID" value="${mem.memberID}" style="display: none">
	   <tr>
	    <td width="80"  align="right">确认新密码：</td>
	    <td><input name="Password" id="affirm_pwd" type="password" class="textbox"/><mark id="affirm_mark" class="tips_errors" hidden="hidden"></mark></td>
	   </tr>
	   <tr>
	    <td width="80" align="right"></td>
	    <td><input id="pwd_btn" type="submit" class=" group_btn" value="修改密码"/></td>
	   </tr>
   </form>
  </table>
 </div>
</section>
<jsp:include page="../Bottom.jsp"></jsp:include>
</body>
<script type="text/javascript">
	/* 验证两次输入密码 */
	$("#affirm_pwd").blur(function(){
		var newpwd = $("#newpwd").val();
		var affirm_pwd = $("#affirm_pwd").val();
		if(newpwd != affirm_pwd){
			$("#affirm_mark").show().html("两次输入密码不符！");
			$("#pwd_btn").attr("disabled",true);
		}else{
			$("#affirm_mark").hide().html("");
			$("#pwd_btn").attr("disabled",false);
		}
	});
	
	/* 验证密码是否原原密码相同，以及长度和格式 */
	$("#newpwd").blur(function(){
		var former = "${mem.password}";
	/* 必须是字母、数字、特殊字符任意2中或者2种以上的组合*/
		var str = /(?!^(\d+|[a-zA-Z]+|[~!@#$%^&*?]+)$)^[\w~!@#$%\^&*?]/ ;
		if(this.value == former){
			$("#new_mark").show().html("与原密码相同");
			$("#pwd_btn").attr("disabled",true);
		}else if(this.value.length<6 || this.value.length>20){
			$("#new_mark").show().html("长度6~20");
			$("#pwd_btn").attr("disabled",true);
		}else if(!str.test(this.value)){
			$("#new_mark").show().html("必须是字母、数字、特殊字符任意2中或者2种以上的组合");
			$("#pwd_btn").attr("disabled",true);
		}else{
			$("#new_mark").hide().html("");
			$("#pwd_btn").attr("disabled",false);
		}
	});
	
</script>
</html>
