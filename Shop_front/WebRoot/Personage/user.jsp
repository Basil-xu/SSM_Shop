<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>商城详情页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="icon" href="images/icon/favicon.ico" type="/Shop_front/image/x-icon">
	<link rel="stylesheet" type="text/css" href="/Shop_front/css/style.css" />
	<script src="/Shop_front/js/html5.js"></script>
	<script src="/Shop_front/js/jquery.js"></script>
    <link href="/Shop_front/css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="/Shop_front/css/common.css" rel="stylesheet"/>
    <link href="/Shop_front/css/uc.css" rel="stylesheet"/>
</head>
<body>

<jsp:include page="../Top.jsp"></jsp:include>
<jsp:include page="../Left.jsp"></jsp:include>

            <div class="uc-content">
                <div class="uc-panel account-panel">
                    <div class="user-info">
                        <img id="head_portrait" class="headpic" src="../statics/uploadfiles/${mem.userLocPath}" alt="头像" />
                        <div class="info">
                            <div><span class="name">${mem.username}</span>
                            <span class="wel">${time}</span></div>
                            <a href="" class="label">普通会员</a>
                            <a href="/Shop_front/personage/list?id=${mem.memberID}" class="edit">修改个人信息></a>
                        </div>
                    </div>
                    <div class="quick-menu">
                        <div class="item">
                            <a href=""><img class="ico" src="/Shop_front/images/ico/uc-aq.png"/>账户安全：较高</a>
                        </div>
                        <div class="item">
                            <a href=""><img class="ico" src="/Shop_front/images/ico/uc-phone.png"/>绑定手机：${phone}</a>
                        </div>
                        <div class="item">
                            <a href=""><img class="ico" src="/Shop_front/images/ico/uc-dizhi.png"/>我的收货地址</a>
                        </div>
                        <div class="item">
                            <a href=""><img class="ico" src="/Shop_front/images/ico/uc-qianbao.png"/>我的钱包</a>
                        </div>
                    </div>
                </div>

                <div class="uc-panel home-order">
                    <div class="col">
                        <img src="/Shop_front/images/ico/uc-order1.png" class="ico" />
                        <div class="bd">
                            <div class="tit">待支付的订单：<span class="num">${mem.obligation}</span></div>
                            <a class="more" href="">查看待支付订单></a>
                        </div>
                    </div>
                    <div class="col">
                        <img src="/Shop_front/images/ico/uc-order2.png"  class="ico" />
                        <div class="bd">
                            <div class="tit">待发货的订单：<span class="num">${mem.pending}</span></div>
                            <a class="more" href="">查看待支付订单></a>
                        </div>
                    </div>
                    <div class="col">
                        <img src="/Shop_front/images/ico/uc-order3.png" class="ico" />
                        <div class="bd">
                            <div class="tit">待收货的订单：<span class="num">${mem.toReceive}</span></div>
                            <a class="more" href="">查看待支付订单></a>
                        </div>
                    </div>
                    <div class="col">
                        <img src="/Shop_front/images/ico/uc-order4.png" class="ico" />
                        <div class="bd">
                            <div class="tit">待评价的订单：<span class="num">1</span></div>
                            <a class="more" href="">查看待支付订单></a>
                        </div>
                    </div>
                </div>

                

   <jsp:include page="../Bottom.jsp"></jsp:include>
</body>
<script src="/Shop_front/js/jquery.js"></script>
<link rel="stylesheet" href="/Shop_front/js/icheck/style.css"/>
<script src="/Shop_front/js/icheck/icheck.min.js"></script>
<script src="/Shop_front/js/laydate/laydate.js"></script>
<script src="/Shop_front/js/global.js"></script>
<script type="text/javascript">
/* $("#head_portrait").mouseover(function(e){
debugger;
            var landscape="<div id='landscape'><img src='"+this.src+"' alt='头像' width='400px' height='300px'/></div>";
            $("#head_portrait").append(landscape);
        }).mouseout(function(){
                $("#landscape").remove();
            }) */

	var x = 10;
	var y = 20;
	$("#head_portrait").mouseover(function (e) {
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