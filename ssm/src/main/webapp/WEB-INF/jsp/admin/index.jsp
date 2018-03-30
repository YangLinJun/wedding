<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/29 0029
  Time: 下午 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登陆</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css"/>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/iconfont.js"/>
    <script src="${pageContext.request.contextPath}/js/layui.js"/>
</head>
<script>
    layui.use('form',function(){
        var form = layui.form;
        form.on('submit(formDemo)',function(){
            layer.msg(Json.stringify(data.field));
            return false;
        })
    })
</script>
<body>
    <div class="admin-main" >
            <span>Admin</span>
        <div>
        <form class="layui-form" action="/admin/login" method="post">
            <div class="layui-form-item">

                <label  class="layui-form-label"><svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-yonghu"></use>
                </svg></label>
                <div class="layui-input-block">
                    <input type="text" name="username" required  lay-verify="required" placeholder="用户名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-mima"></use>
                    </svg>
                </label>
                <div class="layui-input-block">
                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="formDemo">登陆</button>
                </div>
            </div>
        </form>
        </div>
    </div>
</body>
</html>
