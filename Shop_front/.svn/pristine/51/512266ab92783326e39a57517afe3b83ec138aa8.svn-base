<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	 <meta charset="utf-8">
	<title></title>
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="/Shop_front/css/MainList/style.css">
<script type="text/javascript" src="/Shop_front/js/jquery.js"></script>
</head>
<body>
	<!-- 结构 -->
	<!-- 页面头部分 -->
	<header>
		<nav>
		   <div class="navbar">
		      <ul>
		      	 <li><a href="/Shop_front/mainList/list?id=${memberID==null?1:memberID}">小麦商城</a></li><span class="seb">|</span>
		      	 <li><a href="">MIUI</a></li><span class="seb">|</span>
		      	 <li><a href="">LOT</a></li><span class="seb">|</span>
		      	 <li><a href="">云服务</a></li><span class="seb">|</span>
		      	 <li><a href="">金融</a></li><span class="seb">|</span>
		      	 <li><a href="">有品 </a></li><span class="seb">|</span>
		      	 <li><a href="">小爱开放平台</a></li><span class="seb">|</span>
		      	 <li><a href="">政企服务</a></li><span class="seb">|</span>
		      	 <li><a href="">下载app</a></li><span class="seb">|</span>
		      	 <li><a href="">Select Region</a></li><span class="seb">|</span>
		      </ul>
		   </div>
		   <div class="navbar02">
		   	   <ul>
		   	   	 <li><a class="name" href="/Shop_front/login.jsp">登录</a></li><span class="seb02">|</span>
		   	   	 <li><a class="RegisterOrQuit" href="/Shop_front/Enroll.jsp">注册</a></li><span class="seb02">|</span>
		   	   	 <li><a href="">消息通知</a></li>	
		   	   </ul>
		   	   <a href="/Shop_front/mainList/cart?id=${memberID==null?1:mem.memberID}" class="gouwc">
		   	   	 <img src="/Shop_front/images/h4.png">购物车
		   	   	 <span>(0)</span>
               </a>
		   </div>
<script type="text/javascript">
window.onload = function(){
	var username='${username}';
	if(username!=null){
		$(".name").html("欢迎"+username);
		$(".name").attr("href","/Shop_front/personage/listuser?id=${memberID==null?1:memberID}");
		$(".RegisterOrQuit").html("退出");
		$(".RegisterOrQuit").attr("href","/Shop_front/login.jsp");
	}
}
</script>
		</nav>
	</header>
    <div class="site-header">
    	<div class="site-pic">
    		<div class="sit01" >
    			<!-- <img src="images/a3.png"> -->
    		</div>
    		<div class="site-img" >
    			<img src="http://i1.mifile.cn/a4/cms_15410669089659_TZmzr.gif">	
    		</div>
    		<div class="navbarer">
    			<ul>
    		       <li><a href="">小米手机</a></li>
    		       <li><a href="">红米    </a></li>
    		       <li><a href="">电视    </a></li>
    		       <li><a href="">笔记本  </a></li>
    		       <li><a href="">空调    </a></li>
    		       <li><a href="">新品    </a></li>
    		       <li><a href="">路由器  </a></li>
    		       <li><a href="">智能硬件</a></li>
    		       <li><a href="">服务    </a></li>
    		       <li><a href="">社区    </a></li>
    	        </ul>
    		</div>
    		<!-- 搜索框部分 -->
    		<div class="search">
    			<form action="">
    				<input type="text"  value="${s}" id="s" name="goodsName" placeholder="请输入关键字" >

    			    <input type="button" value="搜索	" name="" onclick="sel()" style="width: 50px;height: 48px;">
    			    
    			</form>
    			
    		</div>
	    </div>
    </div>
    <script>
		function sel(){
			var s=document.getElementById("s").value;
			window.location="/Shop_front/mainpage/search?GoodsName="+s;
		}
	</script>