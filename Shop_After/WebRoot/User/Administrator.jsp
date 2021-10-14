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
            top: 12%; 
            left: 35%; 
            width: 25%; 
            height: 40%; 
            padding: 20px; 
            border: 5px solid silver;
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
            
        } 
	</style>
  </head>
  
  <body>
   	<jsp:include page="../Top.jsp"></jsp:include>
   		<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <span href="#">商品列表</span></dl>
      
      <dl>

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
    	    <div class="input-group">
      		<input type="text" id="username" class="form-control" placeholder="关键词搜索..">
     		 <span class="input-group-btn">
      	  <button class="btn btn-default" type="button" onclick="seart()">搜索</button>
      </span>
    </div>
    </li>
    
  </ul>
</div>


    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
            <thead>
              <tr class="am-success">
                <th class="table-check"><input id="all" type="checkbox" onclick="checkAll()" /></th>
                <th class="table-id">ID</th>
                <th class="table-title">用户名</th>
                <th class="table-type">密码</th>
                <th class="table-author am-hide-sm-only">操作</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="i">
              <tr id="${i.adminid }">
                <td><input type="checkbox" value="${i.adminid}" name="del" /></td>
                <!-- <td><input type="text" class="am-form-field am-radius am-input-sm"/></td> -->
               <!--  -->
                <td>${i.adminid }</td>
                <td><input type="text" value="${i.username }" name="username" style="border: 0px"/></td>
                <td><input type="text" value="${i.password }" name="password" style="border: 0px"/></td>
                <td>
                      <button class="am-btn am-btn-default am-btn-xs am-text-secondary am-round"  type="button" onclick="updat(this,'${i.adminid}')"><span class="am-icon-pencil-square-o"></span></button>
                      <button class="am-btn am-btn-default am-btn-xs am-text-danger am-round" type="button" onclick="daa('${i.adminid}')"><span class="am-icon-trash-o"></span></button>
                </td>	
              </tr>
              </c:forEach>
           
            </tbody>
          </table>
          
             <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default" onmousedown = "show()"><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default" onclick="dels()"><span class="am-icon-trash-o"></span> 批量删除</button>
            </div>
          
        </form>
          
          
          
          
          <ul class="am-pagination am-fr">
          
           	<li ><a href="/Shop_After/user/list?index=1&username=${username}" onclick="getup('1')">首页</a></li>
          <c:forEach var="i" begin="1" end="${pagecounts }">
            	<c:if test="${index==i }">
            	 <li class="active"><a href="/Shop_After/admin/list?index=${i}&username=${username}" onclick="getup('${i}')">${i }</a></li>
           		</c:if>
           		<c:if test="${index!=i }">
            		 <li><a href="/Shop_After/admin/list?index=${i}&username=${username}" onclick="getup('${i}')">${i}</a></li>
         	  	</c:if>
         </c:forEach>
       		 <li><a href="/Shop_After/admin/list?index=${pagecounts}&username=${username}" onclick="getup('${pagecounts}')">尾页</a></li>
                
              </ul>
      		
       			
          <hr />
          <p>注：.....</p>
                 
        <div id="light" class="white_content" ><p>添加用户:</p>
         <a style="position: relative; left: 70%;" onmouseup="hide()">关闭</a>
		<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></a>
                 <form>
        				用户名：<input type="text" name="username1"  style="width: 200px; height:30px; display: inline-block;" /><br/><br/>
        				密码 &nbsp;&nbsp; :&nbsp;&nbsp;<input type="text"  name = "Password1" style="width: 200px;height: 30px;display: inline;" maxlength="6" =/><br/><br/>
       					<center><input type="button" value="确定新增" onclick="sadd()" style="margin-right: 40px;"/><input  type="reset" value="重置"/></center>	 
       				</form>	
      
		</div> 
		<div id="fade" class="black_overlay"></div> 
        
          
          
              	<%-- <div id="light" class="white_content" style=" position:fixed;top:150px;left:230px; width: 86%; height:45%;  padding-left:30px; margin:0px auto;background-color: white; " hidden >
                  <!--   <form action="user/add"  method="post" id="froms" > -->
                  <span>添加用户:</span><br/>
        				用户名：<input type="text" name="username1"  style="width: 200px; height:30px; display: inline-block;" />
        				密码:<input type="text"  name = "Password1" style="width: 200px;height: 30px;display: inline;" maxlength="6" =/><br/><br/>
       					<center><input type="button" value="确定新增" onclick="sadd()"/></center>	 
       			</div> --%>
      
          
   	<jsp:include page="../Bottom.jsp"></jsp:include>
   
   
  </body>
  <script type="text/javascript">
  	
  	function show(){
  		
  		$("#light").slideDown(1000);
  	}
  	function hide(){
  		$("#light").slideUp(500);
  	}
  	
  	/* 查询 */
  	function seart(){
  		var username = $("#username").val();
  		
  		$.ajax({
  			url:'/Shop_After/admin/list',
  			type:'get',
  			success:function(data){
  				window.location="/Shop_After/admin/list?index=1&username="+username;
  			}
  		});
  	}
  	
  	/* 删除 */
  	 function daa(id) {
  	 debugger;
  	 	$.ajax({
  	 		url:'/Shop_After/admin/del',
  	 		type:'post',
  	 		data:{adminid:id},
  	 		success:function(data){
  	 		if(data > 0){
  	 			alert("成功删除ID为"+id+"的管理员账户");
  	 		}else{
  	 			alert("删除ID为"+id+"的管理员账户失败!");
  	 		}
  	 			window.location="/Shop_After/admin/list?index=1&username=";
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
				url:'/Shop_After/admin/dels',
				type:'post',
				data:{str:str},
				success:function(data){
				alert("成功删除"+data+"条管理员账号");
					if(data>0){
						window.location="/Shop_After/admin/list?index=1&username=";
					}
				}
		})
  	}
  	
  	
  	
  	
  	/* 添加 */
  	function sadd(){
  	  	debugger;
  		var username = $("input[name='username1']:eq(0)").val();
		var password = $("input[name='Password1']:eq(0)").val();
  		$.ajax({
			url:'/Shop_After/admin/add',
			type:'post',
			data:{
				username:username,
				password:password},
			success:function(data){
				if(data>0){
					alert("添加成功！");
					window.location="/Shop_After/admin/list?index=1&username=";
				}
			}
			
		});
  	}
  	
  		
	/* 	$.ajax({
			url:'/Shop_After/admin/add',
			type:'post',
			data:{
				username:username,
				password:password},
			success:function(data){
				if(data>0){
					alert("添加成功！");
					window.location="/Shop_After/admin/list?index=1&username=";
				}
			}
			
		}); */
  
  
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
  
  
  	
  /* 修改 */
  		function updat(val,id){
	/* 获取当前点击行的值 */

		var index = val.parentNode.parentNode;
		rowNum = index.rowIndex-1;
		alert(rowNum);
		
		var username = $("input[name='username']:eq('"+rowNum+"')").val();
		var password = $("input[name='password']:eq('"+rowNum+"')").val();
		
		$.ajax({
			url:'/Shop_After/admin/up',
			type:'post',
			data:{adminid:id,
				username:username,
				password:password},
				success:function(data){
				if(data > 0){
					alert("修改成功!");
				}
			}
		
		});
		 
	}
  
  </script>
</html>
