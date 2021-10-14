<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'User.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
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
               position: absolute;
			    top: 15%;
			    left: 19%;
			    width: 62%;
			    height: 49%;
			    padding: 20px;
			    border: 5px solid silver;
			    background-color: white;
			    z-index: 1002;
			    overflow: auto;
            
        } 
	</style>
	
  </head>
  
  <body id="#body">
   	<jsp:include page="../Top.jsp"></jsp:include>
   		<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <span href="#">会员用户</span>></dl>
      
      <dl>
  <!--       <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 添加产品</button> -->
      </dl>
      
      
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    <li>
      <div class="am-btn-group am-btn-group-xs">
       <!--  <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
          <option value="b">产品分类</option>
          <option value="o">下架</option>
        </select> -->
      </div>
    </li>
    <li>
      <div class="am-btn-group am-btn-group-xs">
     <!--  <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
        <option value="b">产品分类</option>
        <option value="o">下架</option>
      </select> -->
      </div>
    </li>
   <!--  <li style="margin-right: 0;">
    	<span class="tubiao am-icon-calendar"></span>
      <input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
    </li>
       <li style="margin-left: -4px;">
    	<span class="tubiao am-icon-calendar"></span>
      <input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
    </li>
    
        <li style="margin-left: -10px;"> -->
      <div class="am-btn-group am-btn-group-xs">
      <!-- <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
        <option value="b">产品分类</option>
        <option value="o">下架</option>
      </select> -->
      </div>
    </li>
    <li><input type="text" id="TrueName" value="${username }" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" /></li>
    <li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;" onclick="seart()">搜索</button></li>
	
  </ul>
</div>


<form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped" id="table_td" >
            <thead>
              <tr class="am-success">
                <th class="table-check"><input id="all" type="checkbox" onclick="checkAll()"/></th>
                <th class="table-id">ID</th>
                <th class="table-title">用户名</th>
                <th class="table-title">会员名称</th>
                <th class="table-title">密码</th>
                <th class="table-type">会员性别</th>
                <th class="table-author am-hide-sm-only">电话号码</th>
                <th class="table-author am-hide-sm-only">省</th>
                <th class="table-author am-hide-sm-only">市</th>
                <th class="table-author am-hide-sm-only">区</th>
                <th class="table-date am-hide-sm-only">邮箱 Email</th>
                <th width="163px" class="table-set">操作</th>
              </tr>
            </thead>
            <tbody id="tr">
          <!--  <form action="/Shop_After/user/up" method="get"> -->
            <c:forEach items="${list}" var="i"  >
            
            	<tr id="${i.memberID}"  >
                <td><input type="checkbox"  value="${i.memberID}" name="del"/></td>
                <td><input type="hidden" name="MemberID" value="${i.memberID}"/>${i.memberID }</td>
                
                <td><input type="text" name = "username" value="${i.username }" style="width: 96px;border: 0px;"/></td>
                <td><input type="text" name = "TrueName" value="${i.trueName}" style="width: 96px;border: 0px;"/></td>
                <td><input type="text" name = "Password" value="${i.password}" style="width: 96px;border: 0px;"/></td>
                <td><input type="text" name = "Sex" value="${i.sex}" style="width: 96px;border: 0px;"/></td>
                <td><input type="text" name = "Phonecode" value="${i.phonecode}" style="width: 75%;border: 0px;"/></td>
                <td <%-- onchange = "showtr('${i.memberID}',this)"  class="td1" name="provinceName" --%>><%-- ${i.provinceName } --%>
                	<select  id = "ss1${i.memberID}" class="ss1" name="Province" onchange="ts('s1',${i.memberID})" >
                		<option>${i.provinceName }</option>
                	</select>
                
                </td>
                <td <%-- onchange = "showtr('${i.memberID}',this)"  class="td1" name="cityName" --%>><%-- ${i.cityName } --%>
                	<select id="ss2${i.memberID}" class="ss2" name="City" onchange="ts('s2',${i.memberID})" >
                		<option >${i.cityName }</option>
                	</select>
                 </td>
                <td <%-- onchange = "showtr('${i.memberID}',this)"   class="td1" name="districtName" --%>><%-- ${i.districtName } --%>
                		<select id="ss3${i.memberID}" class="ss3" name="District">
                		<option>${i.districtName}</option>
                	</select>
                </td>
                <td><input type="text" name = "emails" class=".em" value="${i.emails}" style="width: 96px;border: 0px;"/></td>
                <td>
                
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round"  type="button"  onclick="update(this,'${i.memberID}')"><span class="am-icon-pencil-square-o" ></span></button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger am-round" type="button"  onclick="daa('${i.memberID}')"><span class="am-icon-trash-o" ></span></button>
                  </td>
              </tr>
            </c:forEach>
			<!-- </form> -->
 			<!-- <div id="add" style=" position:fixed;top:150px;left:230px; width: 50%; height:45%;  padding-left:30px; background-color: white; " hidden > -->
                  <%-- <span>添加用户:</span><span onmouseup="hide()"><a>关闭</a></span>
        				用户名：<input type="text" name="username1"  style="width: 200px; height:30px; display: inline-block;" />
        				名称:<input type="text"  name = "TrueName1" style="width: 200px;height: 30px;display: inline-block;" maxlength="8" />
        				密码:<input type="text"  name = "Password1" style="width: 200px;height: 30px;display: inline;" maxlength="6" =/><br/><br/>
        				性别：男: <input type="radio"  name = "Sex1"  value="男" width="50px" />
        					女：<input type="radio" name = "Sex1" value="女" width="50px" />
        					保密：<input type="radio" name = "Sex1" value="保密" width="50px" />
        				电话号：<input type="text"  name="Phonecode1" width="50px" style="width:200px; height:30px; display: inline;" maxlength="11" /><br/><br/>
        				所在地区：
        				<select  name="Province1" style="width: 100px; height:40px; display: inline-block;" id="s1" onchange="ch('s1')"  >
        					<option>请选择</option>
        				</select>省
        				<select  name="City1" style="width: 100px; height:40px; display: inline-block;" id="s2"  onchange="ch('s2')"  >
        					<option>请选择</option>
        				</select>市
        				<select  name="District1" style="width: 100px; height:40px; display: inline-block;" id="s3"  onchange="ch('s3')"  >
        					<option>请选择</option>
        				</select>区<br/><br/>
        				邮箱：<input type="text" name = "Emails1"  style="width: 200px; height:30px; display: inline-block;"  /><br/><br/>
        				
        				<center><input type="button" value="确定新增" onclick="sadd()"/> --%>
        				<!-- <input type="button" value="关闭" onclick="close()"/> --></center>
        			<!-- </form>  -->
       				<!--  </div> -->
            
          </table>
	
          
                   
          
                 <div class="am-btn-group am-btn-group-xs">
        
             <!--  <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"> 新增</button> -->
             <button type="button" class="am-btn am-btn-default" onmousedown="show()"><span class="am-icon-plus"></span> 新增</button>
               <button type="button" class="am-btn am-btn-default" onclick="dels()"><span class="am-icon-trash-o"></span> 批量删除</button>
            </div>
	</form>
          
          <ul class="am-pagination am-fr">
                	<li ><a href="/Shop_After/user/list?index=1&TrueName=${name}" onclick="getup('1')">首页</a></li>
          <c:forEach var="i" begin="1" end="${pagecounts }">
            	<c:if test="${index==i }">
            	 <li class="active"><a href="/Shop_After/user/list?index=${i}&TrueName=${name}" onclick="getup('${i}')">${i }</a></li>
           		</c:if>
           		<c:if test="${index!=i }">
            		 <li><a href="/Shop_After/user/list?index=${i}&TrueName=${name}" onclick="getup('${i}')">${i}</a></li>
         	  	</c:if>
         </c:forEach>
       		 <li><a href="/Shop_After/user/list?index=${pagecounts}&TrueName=${name}" onclick="getup('${pagecounts}')">尾页</a></li>
                
              </ul>
      		
          <hr />
          <p>注：.....</p>
		<div id="light" class="white_content" ><p>添加用户:</p>
         <a style="position: relative; left: 90%;" onmouseup="hide()">关闭</a>
		<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></a>
                 <form>
        				<span>添加用户:</span>
        				用户名：<input type="text" name="username1"  style="width: 200px; height:30px; display: inline-block;" />
        				名称:<input type="text"  name = "TrueName1" style="width: 200px;height: 30px;display: inline-block;" maxlength="8" />
        				密码:<input type="text"  name = "Password1" style="width: 200px;height: 30px;display: inline;" maxlength="6" =/><br/><br/>
        				性别：男: <input type="radio"  name = "Sex1"  value="男" width="50px" />
        					女：<input type="radio" name = "Sex1" value="女" width="50px" />
        					保密：<input type="radio" name = "Sex1" value="保密" width="50px" />
        				电话号：<input type="text"  name="Phonecode1" width="50px" style="width:200px; height:30px; display: inline;" maxlength="11" /><br/><br/>
        				所在地区：
        				<select  name="Province1" style="width: 100px; height:40px; display: inline-block;" id="s1" onchange="ch('s1')"  >
        					<option>请选择</option>
        				</select>省
        				<select  name="City1" style="width: 100px; height:40px; display: inline-block;" id="s2"  onchange="ch('s2')"  >
        					<option>请选择</option>
        				</select>市
        				<select  name="District1" style="width: 100px; height:40px; display: inline-block;" id="s3"  onchange="ch('s3')"  >
        					<option>请选择</option>
        				</select>区<br/><br/>
        				邮箱：<input type="text" name = "Emails1"  style="width: 200px; height:30px; display: inline-block;"  /><br/><br/>
        				
        				<center><input type="button" value="确定新增" onclick="sadd()"/>
        				<input  type="reset" value="重置"/></center>
       				</form>	
      
		</div> 
		<div id="fade" class="black_overlay"></div> 
       
       				
       				 
   	<jsp:include page="../Bottom.jsp"></jsp:include>
  </body>
  
  <script type="text/javascript" >
  		st();
  		
	function hide(){
  		$("#light").slideUp(500);
  	}
	
	
	  function daa(id) {
  	 	$.ajax({
  	 		url:'/Shop_After/admin/del',
  	 		type:'post',
  	 		data:{adminid:id},
  	 		success:function(data){
  	 			if(data > 0 ){
  	 				alert("删除成功！");
  	 				window.location="/Shop_After/user/list?index=1&TrueName=";	
  	 			}
  	 		}
  	 		
  	 	});
		
	}
	
  	
  	function sadd(){
  		var username = $("input[name='username1']:eq(0)").val();
		var TrueName = $("input[name='TrueName1']:eq(0)").val();
		var password = $("input[name='Password1']:eq(0)").val();
		var sex = $("input[name='Sex1']:eq(0)").val();
		var phonecode = $("input[name='Phonecode1']:eq(0)").val();
		var Province = $("select[name='Province1']:eq(0)").val();
		var City = $("select[name='City1']:eq(0)").val();
		var District = $("select[name='District1']:eq(0)").val();
		var emails = $("input[name='Emails1']:eq(0)").val();
		$.ajax({
			url:'/Shop_After/user/add',
			type:'post',
			data:{
				username:username,
				TrueName:TrueName,
				password:password,
				sex:sex,
				phonecode:phonecode,
				Province:Province,
				City:City,
				District:District,
				emails:emails},
			success:function(data){
				if(data > 0){
					alert("成功添加用户名为"+username+"的用户信息");
				} 	
				window.location="/Shop_After/user/list?index=1&TrueName=";
			}
			
		});
			$("#add").hide();
			$(".button").show();
  	}
  
  	var strs;
  	/* 三季联动绑值 */
  	function st(){
  		$.ajax({
  			url:'/Shop_After/user/json',
  			type:'get',
  			data:{territory:0},
  			success:function(data){
  				var str = "<option >--请选择--</option>";
  				$(data).each(function(i,item){
  					str+="<option value='"+item.siteID+"'>"+item.territoryName+"</option>";
  				});
  				$("#s1").html(str);
  				$(".ss1").append(str);
  			}
  		});

  	}
  
	/* 三级查询 一 */
  	function ch(s){
  		if(s=="s1"){
  		$("#s3").html("<option >--请选择--</option>");
	  		$.ajax({
	  			url:'/Shop_After/user/json',
	  			type:'get',
	  			data:{territory:$("#s1").val()},
	  			success:function(data){
	  				var str = "<option >--请选择--</option>";
	  				$(data).each(function(i,item){
	  					str+="<option value='"+item.siteID+"'>"+item.territoryName+"</option>";
	  				});
	  				$("#s2").html(str);
	  				
	  			}
  			});
  		}else if(s=="s2"){
  			$.ajax({
	  			url:'/Shop_After/user/json',
	  			type:'get',
	  			data:{territory:$("#s2").val()},
	  			success:function(data){
	  				var str = "<option >--请选择--</option>";
	  				$(data).each(function(i,item){
	  					str+="<option value='"+item.siteID+"'>"+item.territoryName+"</option>";
	  				});
	  				$("#s3").html(str);
	  			}
  			});
  		}
  	}
  	
  	/* 查询 */
  	function seart(){
  		var TrueName = $("#TrueName").val();
		window.location="/Shop_After/user/list?index=1&TrueName="+TrueName; 		
  	}
  	
  	  /* 删除 */
  	function daa(id) {
  		$.ajax({
  			url:'/Shop_After/user/del',
  			type:'post',
  			data:{MemberID:id},
  			success:function(data){
  					if(data > 0){
  					alert("删除id为"+id+"的用户");
  						window.location="/Shop_After/user/list";
  					}
  			}
  		});
	}
  	
  	/* 批量删除 */
  	function dels(){
  		var str="";
  		$("input[name='del']").each(function(i,item){
  			if($(item).prop("checked")==true){
				str+=$(item).val()+",";
			}
  		})
  		$.ajax({
				url:'/Shop_After/user/dels',
				type:'get',
				data:{d:str},
				success:function(data){
				alert("成功删除"+data+"的数据");
					if(data>0){
						window.location="/Shop_After/user/list?index=1&TrueName=";
					}
				}
		})
  	}
  	/* 全选 */
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
  	/* 添加  */
  	function show(){
  		$("#light").slideDown(1000);
  		/* $(".button").hide(); */
  		/* $("#b").hide(); */
  	}
  	
	/* 三级联动 二  */  	
   function ts(s,num){
		   if(s=="s1"){
	  		$.ajax({
	  			url:'/Shop_After/user/json',
	  			type:'get',
	  			data:{territory:$("#ss1"+num).val()},
	  			success:function(data){
	  				var str = "<option >--请选择--</option>";
	  				$(data).each(function(i,item){
	  					str+="<option value='"+item.siteID+"'>"+item.territoryName+"</option>";
	  				});
	  				$("#ss2"+num).html("");
	  				
	  				$("#ss2"+num).append(str);
	  				$("#ss3"+num).html("");
				 	
	  			}
  			});
		    $("#ss3"+num).html("");
  		}else if(s=="s2"){
  			$.ajax({
	  			url:'/Shop_After/user/json',
	  			type:'get',
	  			data:{territory:$("#ss2"+num).val()},
	  			success:function(data){
	  				var str = "<option >--请选择--</option>";
	  				$(data).each(function(i,item){
	  					str+="<option value='"+item.siteID+"'>"+item.territoryName+"</option>";
	  				});
	  				$("#ss3"+num).append(str);
	  			}
  			});
  		}
	
   }
   
   
   
		
	/* 修改 */		
	function update(val,id){
	
	/* 获取当前点击行的值 */
		var index = val.parentNode.parentNode;
		rowNum = index.rowIndex-1;
				
		var MemberID = id;
		var username = $("input[name='username']:eq('"+rowNum+"')").val();
		var TrueName = $("input[name='TrueName']:eq('"+rowNum+"')").val();
		var password = $("input[name='Password']:eq('"+rowNum+"')").val();
		var sex = $("input[name='Sex']:eq('"+rowNum+"')").val();
		var phonecode = $("input[name='Phonecode']:eq('"+rowNum+"')").val();
		var Province = $("select[name='Province']:eq('"+rowNum+"')").val();
		var City = $("select[name='City']:eq('"+rowNum+"')").val();
		var District = $("select[name='District']:eq('"+rowNum+"')").val();
		var emails = $("input[name='emails']:eq('"+rowNum+"')").val();
		if(Province > 0 && City > 0 && District > 0){
		debugger;
			$.ajax({
			url:'/Shop_After/user/up',
			type:'post',
			data:{MemberID:MemberID,
				username:username,
				TrueName:TrueName,
				password:password,
				sex:sex,
				phonecode:phonecode,
				Province:Province,
				City:City,
				District:District,
				emails:emails},
			success:function(data){
			if(data > 0){
				alert("修改成功！");
			}
			}
		
			});
				
		}else{
			$.ajax({
				url:'/Shop_After/user/up',
				type:'post',
				data:{MemberID:MemberID,
					username:username,
					TrueName:TrueName,
					password:password,
					sex:sex,
					phonecode:phonecode,
					emails:emails},
				success:function(data){
					if(data > 0){
						alert("修改成功！");
					}
				}
			
			});
		}
		 
	}
		
			
	/* function getUrlParam(name){  
	        //构造一个含有目标参数的正则表达式对象  
	        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");  
	        //匹配目标参数  
	        var r = window.location.search.substr(1).match(reg);  
	        //返回参数值  
	        if (r!=null) return unescape(r[2]);  
	        return null;  
        }
		 */
		
		
		
	
	/* 获取到了当前行数 */ 
	/* function updateSupervise(val){
		var index = val.parentNode.parentNode;
		rowNum = index.rowIndex;
	} */

  </script>
</html>
