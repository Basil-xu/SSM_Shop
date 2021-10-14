<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--左侧导航-->
  <aside class="user_aside_nav">
  <dl>
   <dt>个人中心</dt>
   <dd><a href="/Shop_front/personage/list?id=${mem.memberID==null?1:mem.memberID}">个人信息</a></dd>
   <dd><a href="/Shop_front/personage/list2?memberid=${mem.memberID==null?1:mem.memberID}">我的地址库</a></dd>
   <dd><a href="/Shop_front/personage/listPassword?id=${mem.memberID==null?1:mem.memberID}">修改密码</a></dd>
   <dd><a href="/Shop_front/personage/indentList?MemberID=${mem.memberID==null?1:mem.memberID}&index=1">订单列表</a></dd>
  </dl>
  
 </aside>