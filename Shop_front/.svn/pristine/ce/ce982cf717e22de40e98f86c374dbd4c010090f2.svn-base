<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@page import=com.shopfront.entity.Member %> --%><%-- 
<%@page import=com.shopfront.dao.personage.appinfo %> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>我的地址-用户中心</title>
<meta name="keywords"  content="DeathGhost" />
<meta name="description" content="DeathGhost" />
<meta name="author" content="DeathGhost,deathghost@deathghost.cn">
<link rel="icon" href="images/icon/favicon.ico" type="/Shop_front/image/x-icon">
<link rel="stylesheet" type="text/css" href="/Shop_front/css/style.css" />
<script src="/Shop_front/js/html5.js"></script>z
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
    
   var memberid = ${memberid}
  
   var i;
   $(function(){
    var obj = $("#s1");
    show(obj,"s1");
   })
   function show(obj,optionv){
   
    var _pid;
    if(optionv == "s1"){
     _pid = 0;
    }else{
     _pid = $(obj).val();
    }
    var s = $(obj).attr("id");
    if(s == "s1"){
     $("#s3").html("");
    }
    $.ajax({
     url:'/Shop_front/personage/json',
     type:'get',
     data:{pid:_pid},
     success:function(data){
      var str="<option>请输入</option>";
      $(data).each(function(i,item){
       str+="<option value='"+item.siteID+"'>"+item.territoryName+"</option>"
      })
      $("#"+optionv).html(str);
      if(s1 != 0&&i==0){
      //绑定s1的值
      $("#s1").val(0);
      i++;
     } 
     //if-else控制方法调用的次数及加载值
     if(i==1){
      //加载s2的值
      show($("#s1"),"s2");
      i++;
     } else if(i==2){
      //绑定s2的值
      $("#s2").val(1);
      //加载s3的值       
      show($("#s2"),"s3");
      i++;
     }else if(i==3){  
      //绑定s3的值   
      $("#s3").val(2);
     }
     }
    })
   };
   
  // 添加以及修改
   function add_but(){
   var TrueName = $("#TrueName").val();//收件人
   var Phonecode = $("#Phonecode").val();// 电话
   var Province = $("#s1").val();// 获取省
   var City = $("#s2").val();// 获取市
   var District = $("#s3").val();// 获取区
   var Address = $("#Address").val();//详细地址
   var id = $("#id").val();// id值,修改需要用到
   var type = $("#typeMoren").val();
   $.ajax({
	     url:'http://localhost:8080/Shop_front/personage/add',
	     type:'get',
	     data:{id:id,trueName:TrueName,phonecode:Phonecode,province:Province,city:City,district:District,address:Address,memberid:memberid,type:type},
	     success:function(data){
	      console.log("返回值:"+data);
	      // 因为是在一个页面里面写的添加和修改所以完成之后刷新一下
	     	window.location = "http://localhost:8080/Shop_front/personage/list2?memberid="+memberid;
	     }
    })
	   
   };
   // 删除
   function del(id){
		console.log(id);
		$.ajax({
	     url:'http://localhost:8080/Shop_front/personage/del',
	     type:'get',
	     data:{id:id},
	     success:function(data){
	      console.log("返回值:"+data);
	      // 局部刷新,删除完成后局部刷新一下,不会访问后台,这是前端是一个刷新方法
	     	$("#taddress").load(location.href + " #taddress");
	     }
   	 })
	}
	// 编辑按钮,点击之后查出来放到框内
	function selID(id){
		$.ajax({
	     url:'http://localhost:8080/Shop_front/personage/selId',
	     type:'get',
	     data:{id:id},
	     success:function(data){
	      console.log(data);
			var str = "";
		   $("#TrueName").val(data[0].trueName);//收件人
		   $("#Phonecode").val(data[0].phonecode);// 电话
		   $("#Address").val(data[0].address);//详细地址
		   $("#id").val(data[0].id);// 获取单个地址的id值
		   $("#typeMoren").val(data[0].type);
		   // 因为是3级分类所以循环3次
		   for(var j=1;j<=3;j++){
			   
			   var chengs;// 城市名
			   if(j==1){
			   // 给他赋省值
			   	chengs = data[0].province;
			   }
			   if(j==2){
			   // 给他赋市值
			   	chengs = data[0].city;
			   }
			   if(j==3){
			   // 给他赋县区值
			   	chengs = data[0].district;
			   }
			   	// 循环3次放到3级分类里面
			   	$(data[j]).each(function(i,item){
			   		if(item.siteID == chengs){
		       			str+="<option value='"+item.siteID+"' selected='selected'>"+item.territoryName+"</option>";
			   		}else{
		       			str+="<option value='"+item.siteID+"'>"+item.territoryName+"</option>";
			   		}
		       })
		       $("#s"+j).html(str);
		       // 循环完成后清空
		       str = "";
		   }
		   
	     }
   	 })
	}
	// 修改默认地址
	function upd(id,memberid){
		$.ajax({
	     url:'http://localhost:8080/Shop_front/personage/updType',
	     type:'get',
	     data:{id:id,type:1,memberid:memberid},
	     success:function(data){
	      console.log("返回值:"+data);
	     }
    	})
	}
 </script>
 
 
<section class="wrap user_center_wrap">
 <!--左侧导航-->
 <aside class="user_aside_nav">
  <dl>
   <dt>个人中心</dt>
   <dd><a href="/Shop_front/personage/list?id=${memberid}">个人信息</a></dd>
   <dd><a href="/Shop_front/personage/indentList?MemberID=${memberid}&index=1">我的地址库</a></dd>
   <dd><a href="/Shop_front/personage/listPassword?id=${memberid}">修改密码</a></dd>
   <dd><a href="/Shop_front/personage/indentList?MemberID=${memberid}">订单列表</a></dd>
  </dl>
  
 </aside>
 <!--右侧：内容区域-->
 <!-- 地址的id值，为隐藏，如果不点击修改则为0  -->
 <input id="id" type="hidden" value="0"/>
 <div class="user_rt_cont">
  <div class="top_title">
   <strong>我的地址列表</strong>
  </div>
  <form action="#" method="post" id="formid">

  <table class="order_table" id="tab">
  <input id="typeMoren" type="hidden" value="3"/>
   <tr>
    <td width="100" align="right">收件人：</td>
    <td><input name="TrueName" id="TrueName" type="text" placeholder="输入收件人姓名" class="textbox"/></td>
   </tr>
   <tr>
    <td width="100" align="right">联系电话：</td>
    <td><input name="Phonecode" id="Phonecode" type="text" placeholder="收件人手机号码" class="textbox"/></td>
   </tr>
   <tr>
    <td width="100" align="right">收件地址：</td>
    <td>
     <select name="Province" id="s1" onchange="show(this,'s2')" class="select">
      <option></option>
     </select>
     <select name="City" id="s2" onchange="show(this,'s3')" class="select">
      <option></option>
     </select>
     <select name="District" id="s3" class="select">
      <option></option>
     </select>
    </td>
   </tr>
   <tr>
    <td width="100" align="right">详细地址：</td>
    <td><input name="Address" id="Address" type="text" placeholder="街道门牌号" class="textbox textbox_295"/></td>
   </tr>   <tr>
    <td width="100" align="right"></td>
    <td><input type="button" value="更新保存" class="group_btn" onclick="add_but()"/></td>
   <!--  <td><button type="submit" class="templatemo-blue-button" onclick="add_but()">修改</button></td> -->
        
   </tr>
    </table>                   
   </form>
   
   
  <table class="order_table address_tbl" id="taddress">
   <tr>
    <th width="140">收件人</th>
    <th width="140">联系电话</th>
    <th>收件地址</th>
    <th width="240">操作</th>
   </tr>
   
   <c:forEach items="${Receiving}" var="i">
   <tr>
    <td>${i.trueName}</td>
    <td>${i.phonecode }</td>
    <td>
     <address>
       ${i.str }
     </address>
    </td>
    <td>
    	<c:if test="${i.type==1 }">
     <label><input type="radio" name="moren" checked="true"/>设为默认地址</label>
     	</c:if>
     	
     	
     	<c:if test="${i.type==0 }">
     <label><input type="radio" name="moren" onclick="upd('${i.id}','${i.memberid}')"/>设为默认地址</label>
     	</c:if>
     <input  type="button" value="编辑" class="btn" onclick="selID(${i.id})"/>
     <input type="button" value="删除" class="btn" onclick="del(${i.id})"/>
    </td>
   </tr>
   </c:forEach>
   
  </table>
 </div>
</section>
	<jsp:include page="../Bottom.jsp"></jsp:include>

</body>
</html>

