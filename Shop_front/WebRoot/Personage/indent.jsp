<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>用户中心</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="/Shop_front/images/icon/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="/Shop_front/css/style.css" />
<script src="/Shop_front/js/html5.js"></script>
<script src="/Shop_front/js/jquery.js"></script>
<style type="text/css">
	.limit_but{
		border: 1px solid black;
    	border-radius: 4px;
	    height: 30px;
	}
	.limit_but_seed{
		border: 1px solid black;
    	border-radius: 4px;
	    height: 30px;
	    width: 3%;
	}
</style>
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
   <strong>我的订单</strong>
  </div>
  <!--条件检索-->
  <div style="margin:8px 0;">
   <select name="selects" class="select">
    <option id="0" value=0>订单状态</option>
    <option id="1" value=1>待付款</option>
    <option id="2" value=2>待收货</option>
    <option id="3" value=3>待确认</option>
    <option id="4" value=4>待评价</option>
    <option id="5" value=5>完成订单</option>
    <!-- <option>待评价</option> -->
    <!-- <option>退货</option> -->
   </select>
   <input type="text" id="number" value="${mem.orderID}" class="textbox textbox_225" placeholder="输入订单编号"/>
   <input type="button" id="placeh_but" value="查询" class="group_btn"/>
  </div>
  <ul class="order_li">
   <s:forEach items="${list}" var="i">
   		<li>
    <table class="order_table">
     <caption>
      <strong>订单编号：${i.orderID}</strong>
      <a href="order_detail.html">订单详情</a>
     </caption>
     <tr>
      <td class="center">
      	<a href="product.html">
      		<img src="upload/goods009.jpg" style="width:50px;height:50px;"/>
      	</a>
      </td>
      <td><a href="product.html">${i.goodsName}</a></td>
      <td class="center"><span class="rmb_icon">${i.goodsFee}</span></td>
      <td class="center"><b>${i.num}</b></td>
      <td class="center"><strong class="rmb_icon">${i.totalPrice}</strong></td>
      <s:if test="${i.isPayment==false}">
      	<td class="center">
      		<input type="button" value="待付款" class="a_btn" style="width: 45%">
      	</td>
      </s:if>
      <s:if test="${i.isPayment==true}">
		  <s:if test="${i.isPigeonhole==false}">
		   	<td class="center">
		   		<input type="button" value="待收货" class="a_btn" style="width: 45%">
		   	</td>
		  </s:if>
      </s:if>
      <s:if test="${i.isPigeonhole==true}">
		  	<s:if test="${i.isconfirm==false}">
			   	<td class="center">
			   		<input type="button" id="${i.orderID}" onclick="onconfirm('${i.orderID}')" value="确认订单" class="a_btn" style="width: 56%">
			   	</td>
		  	</s:if>
	  </s:if>
	  <s:if test="${i.isconfirm==true}">
		<s:if test="${i.evaluation==false}">
			<td class="center">
		  		<input type="button" value="待评价" class="a_btn" style="width: 45%">
			</td>
		 </s:if>
		 <s:if test="${i.evaluation==true}">
			<td class="center">
				<span>交易成功</span>
			</td>
		</s:if>
	 </s:if>
     </tr>
    </table>
   </li>
   </s:forEach>
  </ul>
   <!--分页-->
   <div class="paging" style="text-align:right">
    <input type="button" id="first" class="limit_but" value="第一页">
   <s:forEach begin="1" end="${size}" var="i">
    	<input type="button" onclick="limitseed(${i})" class="limit_but_seed" value="${i}">
    </s:forEach>
    <input type="button" id="finally" class="limit_but" value="最后一页">
   </div>
 </div>
</section>
<jsp:include page="../Bottom.jsp"></jsp:include>
</body>
<script type="text/javascript">
$(function(){
	$("#${mem.numsel}").attr("selected", true);
});
	var index = getUrlParam("index");
	var name = "${mem.memberID}";
		
	function onconfirm(orderID){
	debugger;
	alert(orderID)
		$.ajax({
			url:'/Shop_front/personage/statusupdate',
			type:'get',
			data:{Isconfirm:true,OrderID:orderID},
			success:function(data){
				if(data==1){
					$("#"+orderID).val("待评价");
					$("#"+orderID).css({width:"45%"});
				}
			}
		})
	}
		
	$("#first").click(function(){
		var index = 1;
		window.location="/Shop_front/personage/indentList?MemberID="+name+"&index="+index;
	});
	
	$("#finally").click(function(){
		var index = "${size}";
		window.location="/Shop_front/personage/indentList?MemberID="+name+"&index="+index;
	});
	
	function limitseed(index){
		window.location="/Shop_front/personage/indentList?MemberID="+name+"&index="+index;
	}
	
	$("select[name='selects']").change(function(){
	var numsel = $("select[name='selects']").val();
		window.location="/Shop_front/personage/indentList?MemberID="+name+"&numsel="+numsel;
	})
	
	$("#placeh_but").click(function(){
		var number = $("#number").val();
		window.location="/Shop_front/personage/indentList?MemberID="+name+"&OrderID="+number;
	});
	
	function getUrlParam(name){  
        //构造一个含有目标参数的正则表达式对象  
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");  
        //匹配目标参数  
        var r = window.location.search.substr(1).match(reg);  
        //返回参数值  
        if (r!=null) return unescape(r[2]);  
        return null;  
        }
</script>
</html>
