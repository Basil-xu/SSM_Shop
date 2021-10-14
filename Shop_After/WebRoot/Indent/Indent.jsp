<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'Indent.jsp' starting page</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	

	</style>
  </head>
  
  <body>
  	<jsp:include page="../Top.jsp"></jsp:include>
  	<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <span href="#">订单列表</span></dl>
      
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
      <input type="text" class="form-control" id="ReceiverName" value="${name }" placeholder="关键词搜索..">
      <span class="input-group-btn">
        <button class="btn btn-default" type="button" onclick="seart($)">搜索</button>
      </span>
    </div>
    
    </li>
  </ul>
</div>


    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-check" style="width: 30px;"><input type="checkbox" id="all" onclick="checkAll()"/></th>
                <th width="100px">订单号</th>
               	<th width="90px">提交日期</th>
                <th width="80px">商品价格</th>
                <th width="80px" >消费金额</th>
                <th width="80px">运输费</th>
                <th width="80px"  >运输方式</th>
                <th width="80px"  >付款方式</th>
                <th width="80px" >收件人</th>
                <th width="80px" >手机号</th>
                <th width="80px" >是/否付款</th>
                <th width="80px" >配送地址</th>
                <th width="80px" >操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="i"> 
              <tr>
                <td><input type="checkbox"  value="${i.orderID}" name="del" /></td>
                <!-- <td><input type="text" class="am-form-field am-radius am-input-sm"/></td> -->
                <td>${i.orderID }</td>
                <td>${i.orderDate }</td>
                <td>${i.goodsFee }</td>
                <td>${i.totalPrice }</td>
                <td>${i.shipFee }</td>
                <td><%-- <input type="text" name = "shipWay" value="${i.shipWay }"/> --%>
                	<select name="shipID" id="select">
                		<option>${i.shipWay }</option>
                		<c:forEach items="${list1 }" var="t">
                			<option value="${t.shipID}">${t.shipWay}</option>
                		</c:forEach>
                	</select>
                </td>
                <td>${i.payType }</td>
                <td><input type="text" name = "receiverName" value="${i.receiverName }" style="border: 0px;"/>
                
                </td>
                <td><input type="text" name = "receiverPhone" value="${i.receiverPhone }" style="width: 120px; border: 0px;" /></td>
                <td class="am-hide-sm-only"><!-- <i class="am-icon-check am-text-warning"></i> -->
                
               	 <c:if test= "${i.isPayment==false}">
                		否
               	 </c:if>
                	<c:if test= "${i.isPayment==true}">
                		是
              	  </c:if>
                </td>
                <td><input type="text" name = "receiverAddress" value="${i.receiverAddress }" style="border: 0px;"/></td>
                <td>
                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round"  type="button" onclick="updat(this,'${i.orderID}')"><span class="am-icon-pencil-square-o"></span></button>
                      <button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-round" onclick="daa('${i.orderID }')"><span class="am-icon-trash-o"></span></button>
                  </td>
              </tr>
              </c:forEach>
         
            </tbody>
          </table>
          
                 <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default" onclick="dels()"><span class="am-icon-trash-o"></span> 批量删除</button>
            </div>
          
         	<ul class="am-pagination am-fr">
                 	<li ><a href="/Shop_After/indent/list?index=1&ReceiverName=${name}" onclick="getup('1')">首页</a></li>
          <c:forEach var="i" begin="1" end="${pagecounts }">
            	<c:if test="${index==i }">
            	 <li class="active"><a href="/Shop_After/indent/list?index=${i}&ReceiverName=${name}" onclick="getup('${i}')">${i }</a></li>
           		</c:if>
           		<c:if test="${index!=i }">
            		 <li><a href="/Shop_After/indent/list?index=${i}&ReceiverName=${name}" onclick="getup('${i}')">${i}</a></li>
         	  	</c:if>
         </c:forEach>
       		 <li><a href="/Shop_After/indent/list?index=${pagecounts}&ReceiverName=${name}" onclick="getup('${pagecounts}')">尾页</a></li>
                
              </ul>
          
          
      
          <hr />
          <p>注：.....</p>
        </form>
 
 
 
 
<!--  <div class="foods">
  <ul>
    版权所有@2015. 
  </ul>
  <dl>
    <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
  </dl>
</div>

		</div>
	</div>
</div> -->
	<jsp:include page="../Bottom.jsp"></jsp:include>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 
  	<jsp:include page="../Bottom.jsp"></jsp:include>
	<script src="/Shop_After/assets/js/amazeui.min.js"></script>
  	<script type="text/javascript">
  		
  	
  	
  	  	/* 查询 */
  	function seart(){
  		var username = $("#ReceiverName").val();
  		
  		$.ajax({
  			url:'/Shop_After/indent/list',
  			type:'get',
  			success:function(data){
  				window.location="/Shop_After/indent/list?index=1&ReceiverName="+username;
  			}
  		});
  	}
  	
  	
  	
  	
  	
  	/* 删除 */
  	 function daa(id) {
  	 	$.ajax({
  	 		url:'/Shop_After/indent/del',
  	 		type:'post',
  	 		data:{OrderID:id},
  	 		success:function(data){
  	 			if(data > 0 ){
  	 				alert("成功删除订单号为"+id+"的订单!");
  	 				window.location="/Shop_After/indent/list?index=1&&ReceiverName=";
  	 			}
  	 		}
  	 		
  	 	});
		
	}
	
	 	function checkAll(){
  		if($("#all").prop("checked")==true){
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
  	debugger;
  		var str="";
  		$("input[name='del']").each(function(i,item){
  			if($(item).prop("checked")==true){
				str+=$(item).val()+",";
			}
  		})
  		alert(str);
  		$.ajax({
				url:'/Shop_After/indent/dels',
				type:'post',
				data:{str:str},
				success:function(data){
					alert("成功删除"+data+"的数据");
					if(data>0){
						window.location="/Shop_After/indent/list?index=1&ReceiverName=";
					}
				}
		})
  	}
  	/* 修改 */
  	function updat(val,id){
	/* 获取当前点击行的值 */
		var index = val.parentNode.parentNode;
		rowNum = index.rowIndex-1;
		// 获取当前行要修改的值		
		var shipID = $("select[name='shipID']:eq('"+rowNum+"')").val();
		var receiverName = $("input[name='receiverName']:eq('"+rowNum+"')").val();
		var receiverPhone = $("input[name='receiverPhone']:eq('"+rowNum+"')").val();
		var receiverAddress = $("input[name='receiverAddress']:eq('"+rowNum+"')").val();
		//输入框不为空时执行ajax
		if(shipID != "" && receiverName!="" && receiverPhone!= "" && receiverAddress!=""){
				$.ajax({
				url:'/Shop_After/indent/up',
				type:'post',
				data:{
					OrderID:id,
					ShipID:shipID,
					ReceiverName:receiverName,
					ReceiverPhone:receiverPhone,
					ReceiverAddress:receiverAddress
					},
					success:function(data){
					if(data > 0){
						alert("修改成功！");
					}
				}
			});
		}else{ // 否则提示
			alert("输入框不能为空!");
		}
		 
	}
  		
  	</script>
  	
  	
  	
  
  </body>
</html>
