<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/27 0027
  Time: 下午 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/layui.js"></script>
<script>
    $(function(){
        function change(){
            $("#index_img").css({"background-image":"url('img/index_second.jpg')"});
        }
        function sAf(){
            $("#content").animate({top:'-600px'},"600");
            setTimeout(change,600);
            $("#content").animate({top:'+=100px'},"slow");
        }
        setTimeout(sAf,2000);
    })

    layui.use('carousel',function(){
        var carousel = layui.carousel;
        carousel.render({
            elem : '#test1',
            width : '100%',
            height : '442',
            arrow:'hover'
        })
    })
    layui.use('element',function(){
        var element = layui.element;
        element.on('nav(demo)',function(elem){
            layer.msg(elem.text());
        })
    })
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="index_img" style="background-image: url('img/index.jpg');width: 100%;height: 600px" >
</div>
<div id="content" style="position: relative;background-color: white">
<div class="layui-header header header-index" style="background-color: #24262F">
    <div class="layui-main">
        <a class="logo">
            <img src="img/logo.png" />
        </a>
        <div class="layui-form component">

         </div>
            <ul class="layui-nav" style="text-align: right">
                <li class="layui-nav-item"><a href="/">首页</a></li>
                <li class="layui-nav-item"><a href="/picture">婚礼图片</a></li>
                <li class="layui-nav-item"><a href="/video">婚礼视频</a></li>
                <li class="layui-nav-item"><a href="/demo">成功案例</a></li>
                <li class="layui-nav-item"><a href="/aboutUS">关于我们</a></li>
            </ul>
    </div>

</div>

<div class="layui-carousel " id="test1">
    <div carousel-item="" class="">
        <img src="img/banner/bannerOne.jpg"/>
        <img src="img/banner/bannerTwo.jpg"/>
        <img src="img/banner/bannerThree.jpg"/>
    </div>
</div>

    <div style="font-size:36px;font-family: 'Times New Roman';text-align: center;margin: 45px 0 0 0 ">
            <a href="/photo" >Wedding Photo</a>
        <div id="pictureList">
            <ul >
                <li>
                    <img src="img/pictureList/p2.jpg">
                </li>
                <li>
                    <img src="img/pictureList/p1.jpg">
                </li>
                <li>
                    <img src="img/pictureList/p3.jpg">
                </li>
            </ul>
        </div>
    </div>
</div>

<fieldset class="layui-elem-field">
    <legend>特别鸣谢</legend>
    <div class="layui-field-box">
        <ul>
            <li><a href="http://www.tcstudio.com.cn/">汤池印象</a></li>
            <li><a href="http://www.weddingvogue.cn/">婚礼风尚</a></li>
            <li><a href="http://www.layui.com">Layui</a></li>
        </ul>
    </div>
</fieldset>
</body>
</html>
