<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>
    	商城详情页
    </title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="/Shop_front/css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="/Shop_front/css/common.css" rel="stylesheet"/>
    <link href="/Shop_front/css/goods-detail.css" rel="stylesheet"/>
</head>

	<jsp:include page="../Top.jsp"></jsp:include>

    <div class="wrapper">
        <div class="detail-top clearfix">
            <div class="detail-goods">
                <div class="detail-show">
                    <div class="origin-show">
                        <div class="zoomup"></div>
                        <img class="big-pic" src="uploads/2.jpg" alt="${goodsinfo.goodsName}" />
                    </div>
                    <div class="thumb-show">
                    <c:forEach items="${listimage}" var="i">
                        <span class="item">
                        	<img class="s-pic" src="/Shop_front/article/filess/${i.imageName}" bsrc="/Shop_front/article/filess/${i.imageName}" />
                        </span>
                    </c:forEach>
                    </div>
                    <div class="zoom-show">
                        <img src="" alt="" />
                    </div>
                </div>
                <div class="detail-info">
                    <div class="item-title">${goodsinfo.goodsName}</div>
                    <div class="item-price">
                        <span id="memprice" class="now">￥${goodsinfo.memberPrice}</span>
                       <%--  <span id="markprice" class="dft">￥${goodsinfo.marketPrice}</span> --%>
                    </div>
                    <ul class="item-data clearfix">
                        <li class="col-4">销量<span class="txt-theme ml10">27件</span></li>
                        <li class="col-4">好评率<span class="txt-theme ml10">99%</span></li>
                        <li class="col-4">收藏<span class="txt-theme ml10">228人</span></li>
                    </ul>
                    <div class="sku-info">
                    <c:forEach begin="0" end="0" var="i">
                    	 <c:set var="item" value="${listName[i]}"/>
                    	 <c:if test="${!empty item }">
	                        <div class="prop">
	                            <div class="dt">${item.attributeName}：</div>
	                            <div class="dd">
	                                <ul class="chose-img">
	                                    <!-- <li><a href=""><img src="uploads/6.jpg" alt="" /></a></li> -->
	                                    <c:forEach items="${listValue}" var="l"  end="${item.attrSum-1}">
	                                    <input id="money" type="text" value="${l.money}" hidden="hidden">
	                                    <li>
	                                    	<a id="${l.ID}" onclick="attr1(this)" class="active">${l.attributeValue}<img src="uploads/6.jpg" alt="" /></a>
	                                    </li>
	                                    </c:forEach>
	                                </ul>
	                            </div>
	                        </div>
            			 </c:if>
                    </c:forEach>
                    <c:forEach begin="1" end="1" var="i">
                    	 <c:set var="item" value="${listName[i]}"/>
                    	 <c:if test="${!empty item }">
	                        <div class="prop">
	                            <div class="dt">${item.attributeName}：</div>
	                            <div class="dd">
	                                <ul class="chose-img">
	                                    <!-- <li><a href=""><img src="uploads/6.jpg" alt="" /></a></li> -->
	                                    <c:forEach items="${listValue}" var="l" begin="${num}"  end="${item.attrSum+num-1}">
	                                    <input id="moneys" type="text" value="${l.money}" hidden="hidden">
	                                    <li>
	                                    	<a id="${l.ID}" name="${item.money}" onclick="attr2(this)" class="active">${l.attributeValue}<img src="uploads/6.jpg" alt="" /></a>
	                                    </li>
	                                    </c:forEach>
	                                </ul>
	                            </div>
	                        </div>
            			 </c:if>
                    </c:forEach>
                        <div class="prop">
                            <div class="dt">数量：</div>
                            <div class="dd">
                                <div class="mod-numbox chose-num" data-max="30">
                                    <span>-</span>
                                    <input id="goodsNum" class="count-input" value="1"  type="text" name="num" />
                                    <span class="count-plus">+</span>
                                </div>
                                <span>（限购30件）</span>
                                <!-- <div class="stock">(库存102件)</div> -->
                            </div>
                        </div>
                    </div>
                    <div class="item-action">
                        <a href="/Shop_front/mainpage/Shopcart" class="buy-now">立即购买</a>
                        <input id="cart_button" onclick="addcart()" type="button" value="加入购物车" class="add-cart">
                        <!-- <a href="cart.html" >加入购物车</a> -->
                    </div>
                    <div class="item-extend">
                        <!-- <a href="" class="fav"><i class="iconfont icon-star"></i>收藏</a> -->
                        <a href="" class="fav">已收藏</a>
                        <a href="" class="share"><i class="iconfont icon-fenxiang"></i>分享</a>
                    </div>
                </div>
            </div>
            <!-- <div class="detail-shop">
                <div class="clearfix">
                    <a class="shop-brand" href="">
                        <img src="uploads/1.png" alt="" />
                    </a>
                    <div class="shop-intro">
                        <div class="shop-name">女神屋</div>
                        <a class="shop-follow-btn" href="javascript:;"><i class="iconfont icon-jiaguanzhu"></i>关注</a>
                        <a class="shop-follow-btn active" href="javascript:;"><span class="showtxt"><i class="iconfont icon-check01"></i>已关注</span><span class="hidetxt">取消关注</span></a>
                        <div class="shop-follow-count"><strong>268</strong>粉丝</div>
                    </div>
                </div>
                <div class="shop-assess clearfix">
                    <div class="col col-3">
                        <div class="tit">描&ensp;述</div>
                        <div class="point">
                            <span class="num">4.8</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">质&ensp;量</div>
                        <div class="point up">
                            <span class="num">4.9</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">服&ensp;务</div>
                        <div class="point down">
                            <span class="num">4.7</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">发&ensp;货</div>
                        <div class="point">
                            <span class="num">4.8</span><i class="iconfont">--</i>
                        </div>
                    </div>
                </div>
                <ul class="shop-info">
                    <li>所在地区：广东广州</li>
                    <li>商品数量：518</li>
                    <li>销售数量：60285</li>
                    <li>店铺资质：<img class="ico" src="img/ico/approve.png" alt="" /></li>
                </ul>
                <a class="detail-shop-enter">
                    <i class="iconfont icon-dianpu"></i>进入店铺
                </a>
            </div>
        </div> -->
        <!-- 商品推荐 -->
        <div class="ui-tabs">
            <span class="item active">店长推荐</span>
        </div>
        <!-- <ul class="detail-rec clearfix">
            <li>
                <a href="" class="figure"><img src="uploads/8.jpg" alt="" /></a>
                <div class="name"><a href="">无袖修身镂空蕾丝连衣裙</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="uploads/8.jpg" alt="" /></a>
                <div class="name"><a href="">无袖修身镂空蕾丝连衣裙</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="uploads/8.jpg" alt="" /></a>
                <div class="name"><a href="">无袖修身镂空蕾丝连衣裙</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="uploads/8.jpg" alt="" /></a>
                <div class="name"><a href="">无袖修身镂空蕾丝连衣裙</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="uploads/8.jpg" alt="" /></a>
                <div class="name"><a href="">无袖修身镂空蕾丝连衣裙</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="uploads/8.jpg" alt="" /></a>
                <div class="name"><a href="">无袖修身镂空蕾丝连衣裙</a></div>
                <div class="price">￥119.00</div>
            </li>
        </ul> -->
        <!-- 商品推荐 -->

        <div class="detail-bottom clearfix">
             <div class="detail-main">
                <div class="detail-tabs">
                    <a class="item" href="javascript:;">详情描述</a>
                    <a class="item" href="javascript:;">规格参数</a>
                    <a class="item" href="javascript:;">商品评价</a>
                </div>
                <div class="tab-con">
                    <div class="mod-type-cont">
                        <img src="uploads/10.jpg" alt="" />
                    </div>
                </div>
                <div class="tab-con">
                    <div class="detail-stand">
                        <div class="tit">主体规格参数</div>
                        <div class="attr">
                            <div class="name">品牌</div>
                            <div class="value">Sacon帅康</div>
                        </div>
                        <div class="attr">
                            <div class="name">品牌</div>
                            <div class="value">Sacon帅康</div>
                        </div>
                        <div class="attr">
                            <div class="name">品牌</div>
                            <div class="value">Sacon帅康</div>
                        </div>
                        <div class="attr">
                            <div class="name">品牌</div>
                            <div class="value">Sacon帅康</div>
                        </div>
                        <div class="attr">
                            <div class="name">品牌</div>
                            <div class="value">Sacon帅康</div>
                        </div>
                    </div>
                </div>
                <div class="tab-con">
                    <div class="detail-pj">
                        <div class="detail-pj-nav list clearfix">
                            <div class="col col1">评价心得</div>
                            <div class="col col2">满意度</div>
                            <div class="col col3">商品信息</div>
                            <div class="col col4">评价用户</div>
                        </div>
                        <div class="detail-pj-cont">
                            <div class="reply list clearfix">
                                <div class="col col1">不错，一次完美购物<span class="time">2016-02-23  15:56</span></div>
                                <div class="col col2">[好评]</div>
                                <div class="col col3">尺码:XL<br>颜色分类：灰色</div>
                                <div class="col col4"><img class="hdpic" width="40" height="40" src=""><div>糖果</div></div>
                            </div>
                            <div class="reply list clearfix">
                                <div class="col col1">不错，一次完美购物<span class="time">2016-02-23  15:56</span></div>
                                <div class="col col2">[好评]</div>
                                <div class="col col3">尺码:XL<br>颜色分类：灰色</div>
                                <div class="col col4"><img class="hdpic" width="40" height="40" src=""><div>糖果</div></div>
                            </div>
                        </div>
                        <div class="pages mb30">
                            <a class="prev" href="">上一页</a>
                            <a href="">1</a>
                            <span>2</span>
                            <a href="">3</a>
                            <a href="">4</a>
                            <i>...</i>
                            <a href="">71</a>
                            <a class="next" href="">下一页</a>
                        </div>
                    </div>
                </div>
            </div>
            
   <jsp:include page="../Bottom.jsp"></jsp:include>
</body>
<script src="/Shop_front/js/jquery.js"></script>
<link rel="stylesheet" href="/Shop_front/js/slick/slick.css"/>
<script src="/Shop_front/js/slick/slick.min.js"></script>
<script src="/Shop_front/js/global.js"></script>

<script type="text/javascript">
	var attrone;
	var attrtwo;
	var goodsID = "${goodsinfo.goodsID}";
	function attr1(obj){
		attrone = $(obj).text();
		if($("#money").val()!=0.0){
			var attrid =$(obj).attr("id");
			$.ajax({
			url:'/Shop_front/mainpage/priceShow',
			type:'get',
			data:{ID:attrid,GoodsID:goodsID},
			success:function(data){
				$("#memprice").html("￥"+data);
			}
		}) 
		}
	}
	function attr2(obj){
		attrtwo = $(obj).text();
		if($("#moneys").val()!=0.0){
			var attrid =$(obj).attr("id");
			$.ajax({
			url:'/Shop_front/mainpage/priceShow',
			type:'get',
			data:{ID:attrid,GoodsID:goodsID},
			success:function(data){
				$("#memprice").html("￥"+data);
			}
		}) 
		}
	}
	function addcart(){
		var price = "${goodsinfo.memberPrice}";
		var num = $("#goodsNum").val();
		var sum = price * num;
		var memID = getUrlParam("MemberID");
		alert(memID);
		var name = "${goodsinfo.goodsName}";
		if(attrone != null && attrtwo != null){
			$.ajax({
			url:'/Shop_front/mainpage/addtrolley',
			type:'get',
			data:{Num:num,GoodsinfoPrice:price,MemberID:memID,Goodsinfosum:sum,
				GoodsinfoID:goodsID,GoodsinfoName:name,
				GoodsinfoAttrName:attrone,GoodsinfoAttrValue:attrtwo
			},
			success:function(data){
				var i = data;
				if(i==1){
					alert("已加入购物车");
				}else{
					alert("添加失败,请重新选择属性");
				}
			}
		})
		}
	}
	
	
	
	/* 获取标题值 */
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

<script>

    /*商品数量操作*/
    function goodsCount(o){
            if(!(o instanceof Object)) var o={};
            var inputCell = o.inputCell || ".count-input",
                minusCell = o.minusCell || ".count-minus",
                plusCell = o.plusCell || ".count-plus",
                disClass = o.disClass || "disabled";
            return this.each(function(){
                var $wrap = $(this),
                    $input = $(inputCell,$wrap),
                    $minus = $(minusCell,$wrap),
                    $plus = $(plusCell,$wrap),
                    maxnum=parseInt($wrap.attr('data-max')) || false,
                    minnum=$wrap.attr('data-min') || 1,
                    initnum=$input.val() || minnum;
                /*初始*/
                $input.val(initnum);
                checkIlegal();
                function checkIlegal(){
                    var value =parseInt($input.val());

                    //
                     if (maxnum&&value>maxnum) {
                        $input.val(maxnum);
                    }
                    else if (value<minnum) {
                        $input.val(minnum);
                    }
                    if(value<=minnum){
                        $minus.addClass(disClass);
                    }else{
                        $minus.removeClass(disClass);
                    }
                    if (value>=maxnum) {
                        $plus.addClass(disClass);
                    }else {
                        $plus.removeClass(disClass);
                    }

                }
                function checknull() {
                    var value =$input.val();
                    if(value === "" || value === "0"){
                        $input.val(minnum);
                    }
                }
                $input.keyup(function(evt){
                    var value = $(this).val();
                    var newvalue = value.replace(/[^\d]/g,"");
                    $(this).val(newvalue);
                    checknull();
                });
                $input.blur(function(){
                    checknull();
                    checkIlegal();
                })

                $minus.click(function(){
                    minus();
                     checkIlegal();
                });

                $plus.click(function(){
                    add();
                    checkIlegal();
                });

                function add () {
                    var value = $input.val();
                    var plus = parseInt(value)+1;
                    $input.val(plus);
                }
                function minus () {
                    var value = parseInt($input.val());
                    var minus = value-1;
                    $input.val(minus);
                }
            });
        }
        $.fn.goodsCount = goodsCount;
</script>

<script >
    $(function () {

        +function () {
            var index=0,
            bsrc='',
            timer=null,
            box=$('.detail-show'),
            origin=$('.origin-show'),
            bigimg=box.find('.big-pic'),
            tumb=box.find('.thumb-show'),
            tumbItem=tumb.find('.item'),
            zoomup=box.find('.zoomup'),
            zoomshow=box.find('.zoom-show');

            /*图片切换*/
            tumbItem.on('mouseenter',function () {
                index=$(this).index();
                clearTimeout(timer);
                timer=setTimeout(function (){
                    update(index);
                }, 300)

            });

            function update (index) {
                bsrc=tumbItem.eq(index).find('.s-pic').attr('bsrc');
                bigimg.attr('src', bsrc);
                tumbItem.find('.s-pic').removeClass('active').end().eq(index).find('.s-pic').addClass('active');
            }

            update(index);

            if ($('.detail-show .thumb-show .item').length>5) {
                $('.detail-show .thumb-show').slick({
                    slidesToShow: 5,
                    infinite:false
                });
            }

            /*放大镜*/
            origin.on('mouseover mouseout',function (e) {
                if (e.type=="mouseover") {
                    var oX=$(this).offset().left,
                    oY=$(this).offset().top,
                    zX=e.pageX,
                    zY=e.pageY,
                    pW=$(this).outerWidth(),
                    pH=$(this).outerHeight(),
                    zW=zoomup.outerWidth(),
                    zH=zoomup.outerHeight(),
                    scale=pW/zW,
                    zsW=zoomshow.width()*scale,//放大后的宽度
                    factor=zsW/pW

                    zoomshow.find('img').attr('src',bigimg.attr('src')).width(zsW);

                    $(document).on('mousemove.zoom',function (e) {
                        zX=e.pageX-oX- zW/2;
                        zY=e.pageY-oY- zH/2;
                        move();
                    });

                    function move () {
                        zX=zX<=0?0:zX;
                        zX=zX>=pW-zW?pW-zW:zX;
                        zY=zY<=0?0:zY;
                        zY=zY>=pH-zH?pH-zH:zY;
                        zoomup.show().css({top:zY,left:zX});
                        zoomshow.show().find('img').css({top:-zY*factor,left:-zX*factor});
                    }
                }
                else {
                    $(document).off('mousemove.zoom');
                     zoomup.hide()
                     zoomshow.hide();
                }
            });
        }();

        $('.mod-numbox').goodsCount(); //数量加减

        $('.detail-main').zTab({
            tabnav:'.detail-tabs',
            trigger:'click'
        });
    });
</script>
</html>