<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品详情页</title>
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<div>

<form>
        <div class="form-group">
            <label for="exampleInputPassword1">图片</label>
            <input type="hidden" class="form-control" id="exampleInputPassword1">
            <img style="height: 200px;width: 200px" src="<%=request.getContextPath()%>${travel.imgPath}">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail2">旅游名</label>
            <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" value="${travel.title}">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword3">旅游分类</label>
            <input type="text" class="form-control" id="exampleInputPassword3" value="${travel.catalog.title}">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword4">目的地</label>
            <input type="text" class="form-control" id="exampleInputPassword4" value="${travel.destination}">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword5">价格</label>
            <input type="text" class="form-control" id="exampleInputPassword5" value="${travel.price*travel.discount}">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword6">产品摘要</label>
            <input type="text" class="form-control" id="exampleInputPassword6" value="${travel.content}">
        </div>
        <div class="form-group">
        <label for="exampleInputPassword7">详细信息</label>
        <input type="text" class="form-control" id="exampleInputPassword7" value="${travel.info}">
        </div>
        <div class="form-group form-check">
        </div>
</form>
    <c:if test="${session_user==null}">
        <form action="<%=request.getContextPath()%>/index" method="post">
            <input type="hidden" name="id" class="form-control"  value="${travel.id}">
            <button type="submit" class="btn btn-primary" onclick="return login()">预定</button>
        </form>
        <form action="<%=request.getContextPath()%>/index" method="post">
            <input type="hidden" name="id" class="form-control"  value="${travel.id}">
            <button type="submit" class="btn btn-primary" onclick="return login()">收藏</button>
        </form>
    </c:if>
    <c:if test="${session_user!=null}">
        <form action="<%=request.getContextPath()%>/user/to-travel-buy" method="post">
            <input type="hidden" name="id" class="form-control"  value="${travel.id}">
            <button type="submit" class="btn btn-primary">预定</button>
        </form>
<%--        收藏--%>
        <c:if test="${collections!=null}">
            <form action="<%=request.getContextPath()%>/user/collection_remove" method="post">
                <input type="hidden" name="id" class="form-control"  value="${collections.travelId}">
                <button type="submit" class="btn btn-primary">已收藏</button>
            </form>
        </c:if>
        <c:if test="${collections==null}">
            <form action="<%=request.getContextPath()%>/user/collection-add" method="post">
                <input type="hidden" name="id" class="form-control"  value="${travel.id}">
                <button type="submit" class="btn btn-primary">收藏</button>
            </form>
        </c:if>
    </c:if>
</div>
</body>
</html>
<script>
    function login() {
        alert("请登录后预定");
    }
</script>
