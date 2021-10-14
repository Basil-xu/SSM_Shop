<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'statement.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- <script type="text/javascript" src="/Shop_After/assets/jss/highcharts.js"></script> -->
	<!-- <script type="text/javascript" src="/Shop_After/assets/jss/highcharts.js"></script> -->
	<script src="https://cdn.highcharts.com.cn/highcharts/highcharts.js"></script>
	
	         <script src="https://cdn.highcharts.com.cn/highcharts/modules/exporting.js"></script>
	         <script src="https://cdn.highcharts.com.cn/highcharts/modules/sunburst.js"></script>
	<!--导出需要引用的文件-->
	<script type="text/javascript" src="/Shop_After/assets/jss/Exporting.js"></script>
  <style type="text/css">
  	#s1{
  		width: 150px;
  	}
  </style>
  
  </head>
  <body>
  <jsp:include page="../Top.jsp"></jsp:include>
  		<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <span href="#">报表</span></dl>
      
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
      <%-- <input type="text" class="form-control" id="ReceiverName" value="${name }" placeholder="关键词搜索.."> --%>
      <span class="input-group-btn">
      <!--   <button class="btn btn-default" type="button" onclick="seart($)">搜索</button> -->
      </span>
    </div>
    </li>
  </ul>
</div>
 <form class="am-form am-g">
 	<select id = "s1" onchange="Pageload()">
 		<option></option>
 	</select>
 	<div id="container" style="min-width:400px;height:400px;"></div>
 	<input type="button" id="excelRead" value="导出">
 </form>
   <jsp:include page="../Bottom.jsp"></jsp:include>
  </body>
  
  <script type="text/javascript">
		type();
		Pageload();
		var i = 1;
//查询类别
	function type(){
		debugger;
			$.ajax({
  			url:'/Shop_After/statement/Typelists',
  			type:'post',
  			data:{commodityId:0},
  			success:function(data){
  			var obj = eval('(data)');
  				var str = "<option value = '0'>--全部--</option>";
  				$(obj).each(function(i,item){
  					str+="<option class='opt' value='"+item.classID+"'>"+item.commodityName+"</option>";
  				});
  				$("#s1").html(str);
  			}
  		});
  		
	}
		

		
/* 饼图 */
  	function Pageload(){
  		var str = [];
  		var num = [];
  		var type2 = 0 ;
  		var classID = $("#s1").val();
  		var value = "0";
  		if(classID!=""){
  			value = classID;
  		}
  		$.ajax({
  			url:'/Shop_After/statement/GetStatement',
  			type:'get',
  			data:{classID:value},
  			success:function(data){
  				$(data).each(function(i,item){
  					str.push([item.name,item.num]);
  					num.push(item.num);
  				});//循环data
  				/* console.log(str); */
  				//饼图
  				  var chart = Highcharts.chart('container', {
				    chart: {
				        spacing : [40, 0 , 40, 0]
				    },
				    title: {
				        floating:true,
				        text: '商品种类购买比例'
				    },
				    tooltip: {
				        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
				    },
				    plotOptions: {
				        pie: {
				            allowPointSelect: true,
				            cursor: 'pointer',
				            dataLabels: {
				                enabled: true,
				                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
				                style: {
				                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
				                }
				            },
				            point: {
				                events: {
				              
				                    mouseOver: function(e) {  // 鼠标滑过时动态更新标题
				                        // 标题更新函数，API 地址：https://api.hcharts.cn/highcharts#Chart.setTitle
				                        chart.setTitle({
				                            text: '销售'+ '\t'+ e.target.y + ' 件'
				                        });
				                    }
				                    , 
				                     click: function(e) { // 同样的可以在点击事件里处理
				                         chart.setTitle({
				                             text: e.point.name+ '\t'+ e.point.y + ' %'
				                         });
				                        $.ajax({
				                        	
				                        });
				                     }
				                }
				            },
				        }
				    },
				    series: [{
				        type: 'pie',
				        innerSize: '80%',
				        name: '市场份额',
				        data: str
				         
				    }]
				}, function(c) { // 图表初始化完毕后的会掉函数
				    // 环形图圆心
				    var centerY = c.series[0].center[1],
				        titleHeight = parseInt(c.title.styles.fontSize);
				    // 动态设置标题位置
				    c.setTitle({
				        y:centerY + titleHeight/2
				    });
				}); //结束饼图
  			}//回调函数
  		});//ajax
  	
  	}
        		
  
  			
 


$("#excelRead").click(function(){
 	 //声明list  
		/* var _list = [];
		_list[0] = "类型";
		_list[1] = "销量"; */
 	 	$.ajax({
  			url:'/Shop_After/statement/readEx',
  			type:'get',
  			dataType: "json",
  			data:{},
			contentType:"application/json",
  			success:function(data){
  				alert(data);
  			}
 	 })
 	});
  
  
  </script>
</html>
