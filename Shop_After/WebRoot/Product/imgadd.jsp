<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'ProductAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
  <!DOCTYPE html>
<head>
	<title>Amaze UI Admin index Examples</title>

</head>
<body>
<jsp:include page="../Top.jsp"></jsp:include>
<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">添加产品图片</a></dl>
      
      <dl>
  <!--       <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 添加产品</button> -->
      </dl>
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    <li>
      <div class="am-btn-group am-btn-group-xs">
      
      </div>
    </li>
    <li>
      <div class="am-btn-group am-btn-group-xs">
  
      </div>
    </li>
  
      <div class="am-btn-group am-btn-group-xs">
    
      </div>
    </li>
    <li>
    <div class="col-lg-6">
   
    <div class="col-lg-6">
    	<!--  -->
   <div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      

      
      
    </div>
	
    <div class="fbneirong">
      <form action="/Shop_After/product/imgAdd" method="post" class="am-form" enctype="multipart/form-data">
        <div class="am-form-group am-cf">
          <div class="zuo">图片名称：</div>
          <div class="you">
            <input type="text" name = "ImageName" placeholder="请输入商品名称" style="width: 250px;display: inline-block;margin-right: 20px"  >
       		
          </div>
        </div>
        
			<div class="am-form-group am-cf" >
			  <div class="zuo">产品图片副本：</div>
			  <div class="you" style="height: 45px;">
			  <label for="inputFirstName"></label>
				<input type="file" name="f2" id="doc-ipt-file-1" multiple="multiple">
				<p class="am-form-help">选择上传商品图片副本...</p>
			  </div>
			</div>
			<div class="am-form-group am-cf" >
			  <div class="zuo"></div>
			  <div class="you" style="height: 45px;">
				<center>
					<button type="submit" style="margin-right: 100xpx;">提交</button>
					<button type="reset" > 重置</button>
				</center>
			  </div>
			</div>
			</form>
    </div>
	
 <div class="foods">
  <ul>
    版权所有@2015. 
  </ul>
  <dl>
    <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
  </dl>
</div>




</div>

    
      
          <hr />
          <p>注：.....</p>
        </form>
 
 

	<jsp:include page="../Bottom.jsp"></jsp:include>
<!-- 	<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
	<script src="/test_4_db/assets/js/polyfill/rem.min.js"></script>
	<script src="/test_4_db/assets/js/polyfill/respond.min.js"></script>
	<script src="/test_4_db/assets/js/amazeui.legacy.js"></script>
 -->
  </body>
  	<script src="/Shop_After/assets/js/jquery.min.js"></script>
	<script src="/Shop_After/assets/js/app.js"></script>
 	<script type="text/javascript">
	
	type();
	function type(){
	debugger;
		$.ajax({
  			url:'/Shop_After/product/Typelists',
  			type:'post',
  			data:{commodityId:0},
  			success:function(data){
  			var obj = eval('(data)');
  				var str = "<option value = ''>--请选择--</option>";
  				$(obj).each(function(i,item){
  					str+="<option class='opt' value='"+item.classID+"'>"+item.commodityName+"</option>";
  				});
  				$("#s1").append(str);
  				type2();
  			}
  		});
	}
	
	function type2(){
	
		$.ajax({
  			url:'/Shop_After/product/Typelists',
  			type:'post',
  			data:{commodityId:$("#s1").val()},
  			success:function(data){
  			var obj = eval('(data)');
  				var str = "<option value = '' selected>--请选择--</option>";
  				$(obj).each(function(i,item){
  					str+="<option class='opt' value='"+item.classID+"'>"+item.commodityName+"</option>";
  				});
  				$("#s2").html(str);
  			}
  		});
	}
	
	
	</script> 
</html>
