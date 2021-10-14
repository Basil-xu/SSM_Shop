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
    <title>购物车</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="/Shop_front/css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="/Shop_front/css/common.css" rel="stylesheet"/>
    <link href="/Shop_front/css/cart.css" rel="stylesheet"/>
</head>
<body class="graybg-theme">
   <jsp:include page="../Top.jsp"></jsp:include>
        <div class="bd-t"></div>
        <div class="wrapper">
            <div class="ui-page-notice cartempty">
                <div class="section">
                    <i class="ico iconfont icon-cartempty"></i>
                    <div class="cont">
                        <div class="tit">购物车空空的哦~，去看看心仪的商品吧~</div>
                        <div>
                            <a href="/Shop_front/Mainpage/MainList.jsp" class="ui-btn-theme">去逛逛</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <jsp:include page="../Bottom.jsp"></jsp:include>
</body>
<script src="/Shop_front/js/jquery.js"></script>
</html>

</html>
