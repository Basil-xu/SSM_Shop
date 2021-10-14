<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<head>
	<title>Amaze UI Admin index Examples</title>

	<style type="text/css">
		 .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: fixed; 
            top: 28%; 
            left: 35%; 
            width: 33%; 
            height: 250px; 
            padding: 20px; 
            border: 5px solid silver;
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
            
        } 
        #imageAll{
        	width: 25%;
        	height: 55%;
        	position:  fixed;
        	top: 25%;
        	left: 33%;
        	padding: 0px;
        	background-color: white;
        	padding-left: 20px;
        	padding-top: 10px;
        	padding-bottom: 20px;
        	border: 1px yellow solid;
        }
        .tableimg{
        	width: 30%;
        	height: 100%;
        	border: 1px black solid;
        	
        }
       
        .f3class{
    			display: inline-block;
        }
	</style>
</head>
<body>
<jsp:include page="../Top.jsp"></jsp:include>
<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <sapn>商品列表</sapn>></dl>
      
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
    <div class="input-group">
      <input type="text" id = "name" class="form-control" placeholder="关键词搜索..">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" onclick="seart()">搜索</button>
      </span>
    </div>
    
    </li>
  </ul>
</div>


    <form  class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-check"><input type="checkbox"  id="all" onclick="checkAll()"/></th>
                <th class="table-id">ID</th>
               <th width="163px" class="table-set">商品图片</th>
                <th class="table-set" width="163px">名称</th>
                <th width="163px" class="table-set">品牌</th>
                 <th width="163px" class="table-set">市场价格</th>
                <th width="163px" class="table-set">会员价</th>
                <th width="163px" class="table-set">计数单位</th>
                <th width="163px" class="table-set">是/否热销</th>
                <th width="163px" class="table-set">重量</th>
                <th width="163px" class="table-set">是/否特价</th>
                <th width="163px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="i">
              <tr>
                <td><input type="checkbox" name = "del" value="${i.goodsID }"/></td>
                <td>${i.goodsID}</td>
                <td><img width="50px"  height="50px" src = "/Shop_After/static/img/${i.goodsUrl }" onclick="image(${i.goodsID})"></td>
                <td><input name = "GoodsName" type="text" value = "${i.goodsName }"  style="border: 0px;"/></td>
                <td><input name = "goodsBrand" type="text" value = "${i.goodsBrand }"  style="border: 0px;"/></td>
                <td><input name = "marketPrice" type="text" value = "${i.marketPrice }" style="border: 0px;"/></td>
                <td><input name = "memberPrice" type="text" value = "${i.memberPrice }" style="border: 0px;"/></td>
                <td><input name = "goodsUnit" type="text" value = "${i.goodsUnit }" style="border: 0px;"/></td>
                <td>
					<c:if test="${i.isHot==true }">
					<input name = "isHot" type="text" value = "是" style="border: 0px;"/>
					</c:if>
					<c:if test="${i.isHot==false }">
					<input name = "isHot" type="text" value = "否" style="border: 0px;"/>
					</c:if>
				</td>
                <td><input name ="goodsWeight"  type="text" value = "${i.goodsWeight }" style="border: 0px;"/></td>
                <td >
                	<c:if test="${i.isDiscount==true }">
                	<input name = "isDiscount" type="text" value = "是" style="border: 0px;"/>
                	</c:if>
                	
                	<c:if test="${i.isDiscount==false }">
                	<input name="isDiscount" type="text" value = "否"/>
                	</c:if>
                </td>
                <td>
                      <button type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" onclick="imgAdd(this,'${i.goodsID}')"><span class="am-icon-pencil-square-o"></span></button>
                      <button type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary am-round" onclick="updat(this,'${i.goodsID}')"><span class="am-icon-pencil-square-o"></span></button>
                      <button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" onclick="daa('${i.goodsID }')"><span class="am-icon-trash-o"></span></button>
                </td>
              </tr>
              </c:forEach>
         
            </tbody>
          </table>
          
                 <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default" onclick="add()"><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default" onclick="dels()"><span class="am-icon-trash-o"></span> 批量删除</button>
            </div>
          
         	<ul class="am-pagination am-fr">
					 	<li ><a href="/Shop_After/product/list?index=1&GoodsName=${names}" onclick="getup('1')">首页</a></li>
          <c:forEach var="i" begin="1" end="${pagecounts }">
            	<c:if test="${index==i }">
            	 <li class="active"><a href="/Shop_After/product/list?index=${i}&GoodsName=${names}" onclick="getup('${i}')">${i }</a></li>
           		</c:if>
           		<c:if test="${index!=i }">
            		 <li><a href="/Shop_After/product/list?index=${i}&GoodsName=${names}" onclick="getup('${i}')">${i}</a></li>
         	  	</c:if>
         </c:forEach>
       		 <li><a href="/Shop_After/product/list?index=${pagecounts}&GoodsName=${names}" onclick="getup('${pagecounts}')">尾页</a></li>
                
              </ul>
      
 			<p>注：.....</p>
          <hr />
         
        </form>
        <!-- 查看图片 -->
       <div id = "imageAll"  hidden>
       		<span onclick="hideImageAll()">关闭</span>
			<table id="tableimg"  width="100%" height="100%" >
	      	 <tbody id = "tabletbody">
	      	 	
	      	 </tbody>
			</table>
			</div>
        	
        <jsp:include page="../Bottom.jsp"></jsp:include>
        <!-- 添加商品图片 -->
 		<div id="light" class="white_content" ><p>添加商品图片:</p>
         <a style="position: relative; left: 70%;" onmouseup="hide()">关闭</a>
		<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></a>
        <form action="/Shop_After/product/imgAdd" method="post" class="am-form" enctype="multipart/form-data">
            <input type="text" name = "GoodsID"  style="width: 250px;display: none;">
        
			<div class="am-form-group am-cf" >
			  <div class="zuo"></div>
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
					<button type="button" onclick="hide()">关闭</button>
				</center>
			  </div>
			</div>
			</form>
          </div>
      
		</div> 
		<div id="fade" class="black_overlay"></div>  

 	<jsp:include page="../Bottom.jsp"></jsp:include>
	
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 
<script src="/Shop_After/assets/js/amazeui.min.js"></script>
<!--<![endif]-->







</body>
<script src="/Shop_After/assets/js/jquery.min.js"></script>
<script src="/Shop_After/assets/js/app.js"></script>
 	<script type="text/javascript">
 	hide();

		
	/* 	$(function () {
			var url = location.search;
			
		})
		
		$(document).ready(function(){
			var urlParam = decodeURI(window.location.href.split("?")[1]);
			if(urlParam=="no"){
				alert("no");
			}else{
				alert("ok");
			}
		} */

 	/* 显示图片 */
 	function image(id){
 		$.ajax({
			url:'/Shop_After/product/listpage',
			type:'get',
			data:{GoodsID:id},
			success:function(data){
				if(data<=0){
					$("#imageAll").hide();
				}else{
					imgall(id);
					
				}
			}
		});
 		
 		
 	
	}
	
	function imgall(id) {
		$("#imageAll").show();
		$.ajax({
			url:'/Shop_After/product/listImgae',
			type:'get',
			data:{GoodsID:id},
			success:function(data){
				var str = "";
				$(data).each(function (i,item){
				/*  <tr class='tableimagetr'><td><img width='50px' height='50px' src ='/Shop_After/static/img/1.png'/></td><td>修改</td></tr> */
					str+="<tr class='tableimagetr'><td><img width='50px' height='50px' src='/Shop_After/static/img/"+item.imageName+"' alt='加载失败' /></td><td>"+
					"<form action='/Shop_After/product/upp'  method='post'  enctype='multipart/form-data'><label for='inputFirstName'></label>"+
			 		"<input name = 'ImageID' value='"+item.imageID+"' hidden/>"+
			 		"<input type='file' class = '"+item.imageID+"' name='f3' id='"+item.imageID+"' class='"+item.imageID+"'><button type='submit' onclick='updateg(this,"+item.imageID+")'>修改</button>"+
			 		"<input type='button' onclick='delImg(\""+item.imageName+"\","+item.imageID+")' value='删除' style='margin-left: 10px;'/></td></tr></form>";
				});/* /Shop_After/static/img/"+item.imageName */
				$("#tabletbody").html(str);
			}
		});
	}
	/* 修改img表 */	
	/* function updateg(file,imageIDs) {
	debugger;
		var form = document.getElementsByClassName(imageIDs);
		var formData = new FormData();
		FormData.add(form); */
	 /* var formData = new FormData();
       formData.append('img',document.getElementById(imageIDs)); */
   /*   var formdata = new FormData();
formdata.append('file',$('#id-name')[0]); */
       
    //实例化一个表单对象，用于保存数据
  /*    var formData = new FormData();
    var imgid = $("#"+imageIDs).files[0];
     var fileObj =imgid.files[0]; 
    formData.append("img",fileObj); //添加图片信息的参数
    formData.append("ImageID",imageIDs);  */
/* 		$.ajax({
			url:'/Shop_After/product/upp',
			type:'post',
			data:formData,
			processData : false,
			contentType : false,
			async:false,
			cache: false,  
			success:function(returndata){
				if(data>0){
					alert("修改");
				}else{
					alert("失败!");
				}
			}
		}); */
/* 	} */
	
	
	/* 图片删除 */
	function delImg(imageName,id){
	debugger;
			var file = "/static/img/"+imageName;
		$.ajax({
  			url:'/Shop_After/product/delimg',
  			type:'post',
  			data:{id:id,file:file},
  			success:function (data){
				if(data >0){
					alert("删除ID为"+id+"的商品图片！");
					window.location ="/Shop_After/product/list?index=1&GoodsName=";
				}else{
					alert("删除失败！");
				}
  			}
  		});
	}
	
	function hideImageAll() {
		$("#imageAll").slideUp();
	}
	
	
 	function hide(){
 		$("#light").slideUp();
 	};
 	
 	function imgAdd(value,GoodsId){
 		$("#light").slideDown();
 		$("input[name='GoodsID']:eq(0)").val(GoodsId);
 		
 	}
 	
	/* 查询 */
	function seart(){
  		var name = $("#name").val();
		window.location ="/Shop_After/product/list?index=1&GoodsName="+name;
  	}
  	
  	/* 删除 */
  	function daa(id){
  		alert(id);
  		$.ajax({
  			url:'/Shop_After/product/del',
  			type:'post',
  			data:{id:id},
  			success:function (data){
				if(data >0){
					alert("删除ID为"+id+"的商品信息！");
					window.location ="/Shop_After/product/list?index=1&GoodsName=";
				}else{
					alert("删除失败！");
				}
  			}
  		});
  	}
  	
  	/* 全选 */
	function checkAll(){
		if($("#all").prop("checked") == true){
			$("input[name='del']").each(function(i,item){
				$(item).prop("checked",true);
			})
		}else{
			$("input[name='del']").each(function(i,item){
				$(item).prop("checked",false);
			})
		}
	}
		  	
  	
  	/* 批量删除 */
  	function dels(){
  		var str ="";
  		$("input[name='del']").each(function(i,item){
  			if($(item).prop("checked")==true){
  				str+=$(item).val()+",";
  			}
  		})

		$.ajax({
			url:'/Shop_After/product/delAll',
			type:'post',
			data:{str:str},
			success:function(data){
				if(data > 0){
				alert("成功删除ID为"+str+"的信息");
					window.location ="/Shop_After/product/list?index=1&GoodsName=";
				}else{
					alert("删除失败!");
				}
			}
		});
  	}
  	
  	/* 新增 */
  	function add(){
  		window.location ="/Shop_After/Product/ProductAdd.jsp";
  	}
  	/* 修改 */
  	function updat(val,id){
	/* 获取当前点击行的值 */
	debugger;
		var index = val.parentNode.parentNode;
		rowNum = index.rowIndex-1;
	
		var GoodsName = $("input[name='GoodsName']:eq('"+rowNum+"')").val();
		var goodsBrand = $("input[name='goodsBrand']:eq('"+rowNum+"')").val();
		var marketPrice = $("input[name='marketPrice']:eq('"+rowNum+"')").val();
		var memberPrice = $("input[name='memberPrice']:eq('"+rowNum+"')").val();
		var goodsUnit = $("input[name='goodsUnit']:eq('"+rowNum+"')").val();
		var isHot = $("input[name='isHot']:eq('"+rowNum+"')").val();
		if("是"== isHot){
			isHot = 1;
		}else{
			isHot = 0;
		}
		var goodsWeight = $("input[name='goodsWeight']:eq('"+rowNum+"')").val();
		var isDiscount = $("input[name='isDiscount']:eq('"+rowNum+"')").val();
		if("是"==isDiscount){
			isDiscount = 1;
		}else{
			isDiscount = 0;
		}
		
		$.ajax({
			url:'/Shop_After/product/update',
			type:'post',
			data:{
				GoodsID:id,
				GoodsName:GoodsName,
				goodsBrand:goodsBrand,
				marketPrice:marketPrice,
				memberPrice:memberPrice,
				goodsUnit:goodsUnit,
				isHots:isHot,
				goodsWeight:goodsWeight,
				isDiscounts:isDiscount
			},
			success:function (data){
				if(data>0){
					alert("修改成功！");
				}else{
					alert("修改失败！");
				}
			}
			
		});
		 
	}
  	 	
	</script> 
</html>