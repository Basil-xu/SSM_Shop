<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

   <div class="body-pos">
            <ul>
                <a href="" title="hahah">
                   <li class="body-pos-img01"></li>
                </a>
                <a href="/Shop_front/personage/listuser?id=${memberID==null?1:memberID}" title="hahah">
                   <li class="body-pos-img02"></li>
                </a>
                <a href="" title="hahah">
                   <li class="body-pos-img03"></li>
                </a>
                <a href="/Shop_front/mainList/cart" title="hahah">
                   <li class="body-pos-img04"></li>
                </a>
            </ul>
        </div>
        <div class="my-card">
            <img src="images/my.png">
        </div>


     </div>

     <div class="footer">
        <div class="footer-top container">
            <ul>
                <li><a href="">预约维修服务</a></li>
                <li><a href="">7天无理由退货</a></li>
                <li><a href="">15天免费换货</a></li>
                <li><a href="">满150元包邮</a></li>
                <li><a href="">520余家售后网点</a></li>
            </ul>
        </div>
        <div class="footer-bd container">
            <dl>
                <dt>帮助中心</dt>
                <dd><a href="">账户管理</a></dd>
                <dd><a href="">购物指南</a></dd>
                <dd><a href="">订单操作</a></dd>
            </dl>
                        <dl>
                <dt>服务支持</dt>
                <dd><a href="">账户管理</a></dd>
                <dd><a href="">购物指南</a></dd>
                <dd><a href="">订单操作</a></dd>
            </dl>
                        <dl>
                <dt>线下门店</dt>
                <dd><a href="">账户管理</a></dd>
                <dd><a href="">购物指南</a></dd>
                <dd><a href="">订单操作</a></dd>
            </dl>
                        <dl>
                <dt>关于小米</dt>
                <dd><a href="">账户管理</a></dd>
                <dd><a href="">购物指南</a></dd>
                <dd><a href="">订单操作</a></dd>
            </dl>
                        <dl>
                <dt>关注我们</dt>
                <dd><a href="">账户管理</a></dd>
                <dd><a href="">购物指南</a></dd>
                <dd><a href="">订单操作</a></dd>
            </dl>
            <div class="footer-r">
                <p>400-100-5678</p>
                <p>周一至周日 8:00-18:00
                   <br />（仅收市话费）</p>
                <a href="https://weibo.com/u/2925421341/home" target="target" title="将跳转至张海靖微博">联系客服</a>
                
            </div>
        </div>
        <div class="footer-main">
            申明：本网页仅供学习参考    <span>@XXX XXX XXX</span>
        </div>
       

     </div>

<style>
.copyrights{text-indent:-9999px;height:0;line-height:0;font-size:0;overflow:hidden;}
</style>
<div class="copyrights" id="links20210126">
	Collect from <a href="http://www.cssmoban.com/"  title="网站模板">模板之家</a>
	<a href="https://www.chazidian.com/"  title="查字典">查字典</a>
</div>