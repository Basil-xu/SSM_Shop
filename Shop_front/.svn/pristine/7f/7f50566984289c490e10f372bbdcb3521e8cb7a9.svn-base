<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="s"%>
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
    <title>支付</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="/Shop_front/css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="/Shop_front/css/common.css" rel="stylesheet"/>
    <link href="/Shop_front/css/cart.css" rel="stylesheet"/>
</head>
<jsp:include page="../Top.jsp"></jsp:include>

    <div class="wrapper">
        <div class="pay-wrap">
            <div class="order-result">
                <div class="section clearfix">
                    <img src="img/ico/order-success.jpg" class="ico" />
                     <div class="titbox">
                   <s:forEach items="${list4 }" var="i">         
                        <div class="tit">订单提交成功，应付金额 ${i.goodsinfosum}元</div>
                        <div class="stit">订单号：21117136289120564    请您在 1 日 内完成支付，否则订单会被自动取消</div>
                   </s:forEach>
                   	</div>
                    
                    <div class="mt20">
                        <div class="meta">
                            <div class="hd">商品</div>
                        <s:forEach items="${list2}" var="i">
                            <div class="bd">${i.goodsName}  ${i.goodsIntroduce}	${i.num}</div>
                       </s:forEach>
                        </div>
                        <div class="meta">
                            <div class="hd">收货地址</div>
                            <div class="bd">安徽 合肥 瑶海区东方商城  (提现 收) 13666666666 <a href="">[修改]</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pay-wrap-tit">
            在线支付
        </div>
        <div class="pay-wrap">
            <div class="pay-way">
                <div class="row">
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img src="/Shop_front/images/pay/zfb.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img src="/Shop_front/images/pay/weixin.jpg" /></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/zgyh.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/jsyh.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/nyyh.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/gsyh.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/jtyh.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/zsyh.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/yzcxyh.jpg" /></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a" /><img class="bd" src="/Shop_front/images/pay/xyyy.jpg" /></label>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-panel">
            <a href="/Shop_front/mainList/list" class="go-next ui-btn-theme">下一步</a>
        </div>
    </div>

    <jsp:include page="../Bottom.jsp"></jsp:include>
</body>
<script src="/Shop_front/js/jquery.js"></script>
<link rel="stylesheet" href="/Shop_front/js/icheck/style.css"/>
<script src="/Shop_front/js/icheck/icheck.min.js"></script>
<script src="/Shop_front/js/global.js"></script>
<script>
    $('.check').iCheck({
            radioClass: 'sty1-radio'
    });
</script>
</html>