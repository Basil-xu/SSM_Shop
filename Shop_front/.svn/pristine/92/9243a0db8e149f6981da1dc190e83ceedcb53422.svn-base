<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>个人资料-用户中心</title>
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
   <strong>个人资料基础信息</strong>
  </div>
  <table class="order_table">
  <form action="/Shop_front/personage/upd" method="post" enctype="multipart/form-data">
  <input type="text" name="MemberID" value="${mem.memberID}" style="display: none">
   <tr>
    <td width="80" align="right">个人头像：</td>
    <td>
      <label   style="width:8%" class="uploadImg">
       <input id="image_top"  name="ff" type="file" style="display:none;"/>
       <img id="image_img" src="/Shop_front/statics/uploadfiles/${mem.userLocPath}" style="width :100%">
       <text style="display: block;font-size: 12px;text-align: center;color: #139667;">
       	上传图片
       	<text/>
      </label>
      <mark id="tips_hidden" class="tips_errors" hidden="hidden"></mark>
    </td>
   </tr>
   <tr>
    <td width="80"  align="right">昵称：</td>
    <td><input type="text" id="usname" name="username" class="textbox" value="${mem.username}"/></td>
   </tr>
   <tr>
    <td width="80" align="right">姓名：</td>
    <td><input type="text" name="TrueName" class="textbox" value="${mem.trueName}"/></td>
   </tr>
   <tr>
   	<td width="80" align="right">性别：</td>
   	<td>
   		<input  ${mem.sex=='男'?"checked":"checked" }  name="Sex" class="textbox" type="radio" >男
   		<input ${mem.sex=='女'?"checked":"checked" }  value="女" name="Sex" class="textbox" type="radio" >女
   		<input  ${mem.sex=='保密'?"checked":"checked" }  name="Sex" class="textbox" type="radio" >保密
   	</td>
   </tr>
   <tr>
    <td width="80" align="right">手机号码：</td>
    <td><input type="text" name="Phonecode" class="textbox" value="${mem.phonecode}" readonly/></td>
   </tr>
   <tr>
    <td width="80" align="right">电子邮箱：</td>
    <td><input id="email" type="text" name="Emails" class="textbox textbox_225" value="${mem.emails}"/></td>
   </tr>
   <tr>
    <td width="80" align="right"></td>
    <td>
    <input id="btn" type="submit" class=" group_btn" value="更新保存"/>
    </td>
   </tr>
    </form>

  </table>
 </div>
</section>
<jsp:include page="../Bottom.jsp"></jsp:include>
</body>
<script type="text/javascript">
/* 上传图片预览效果 */
$("#image_top").change(function(){
 $("#image_img").attr("src",URL.createObjectURL($(this)[0].files[0]));
});

$("#usname").blur(function(){
	var name = $("#usname").val();
	var username = "${mem.username}";
	$.ajax({
		url:'/Shop_front/personage/repetitionName',
		type:'post',
		data:{name:name},
		success:function(data){
			var num = data;
			if(num==1 ){
				if(name==username){
					$("#tips_hidden").hide().html("");
					$("#btn").attr('disabled',false);
				}else{
					$("#tips_hidden").show().html("用户名重复");
					$("#btn").attr('disabled',true);
				}
			}else{
				$("#tips_hidden").hide().html("");
				$("#btn").attr('disabled',false);
			}
		}
	});
});
	
	/* 邮箱格式验证 */
	$("#email").blur(function(){
		var str = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/ ;
		if(!str.test(this.value)){
			$("#tips_hidden").show().html("邮箱格式错误");
			$("#btn").attr("disabled",true);
		}else{
			$("#tips_hidden").hide().html("");
			$("#btn").attr("disabled",false);
		}
	});

	var x = 10;
	var y = 20;
	$("#image_img").mouseover(function (e) {
		var tooTip = "<div id='tooTip'><img id='cssid' src='" + this.src + "'></img><div>";
	    	$("body").append(tooTip);
	    	$("#cssid").css({width:"126px"});
	   		$("#tooTip").css({ position: "absolute",
	         	'top': (e.pageY + y) + "px", "left": (e.pageX + x) + "px"
	    }).show("fast");
	    }).mouseout(function () {
	         $("#tooTip").remove();
	     }).mousemove(function (e) {
	         $("#tooTip").css({ position: "absolute",'top': (e.pageY + y) + "px", "left": (e.pageX + x) + "px"})
	});
</script>
</html>
