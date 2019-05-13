<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>订单中心</title>
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<div>
    <form action="<%=request.getContextPath()%>/user/travel-buy" method="post" id="myForm">
        <input type="hidden" class="form-control" name="travelId" value="${travel.id}">
        <input type="hidden" name="isPlay" id="isPlay" value="1">
        <div class="form-group">
            <label for="exampleInputEmail11">订单编号</label>
            <input type="test" class="form-control" name="orderNumber" id="exampleInputEmail11" value="${time}" aria-describedby="emailHelp" readonly="readonly" >
        </div>
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
            <label for="exampleInputPassword4">目的地</label>
            <input type="text" class="form-control" id="exampleInputPassword4" value="${travel.destination}">
        </div>
        <div class="form-group">
            <label for="date">出发日期</label>
            <input type="date" class="form-control" name="date" id="date">
        </div>
        <div class="form-group">
            <label for="totalChildrenNumber">小孩数目</label>
            <input type="text" name="totalChildrenNumber" id="totalChildrenNumber" class="form-control"value="1">
        </div>
        <div class="form-group">
            <label for="totalAdultNumber">成人数目</label>
            <input type="text" name="totalAdultNumber" id="totalAdultNumber" class="form-control" value="1">
        </div>
        <div class="form-group">
            <label for="price">价格</label>
            <input type="text" class="form-control"id="price">
        </div>

        <script>
            var price = document.getElementById("price");
            price.value = <fmt:formatNumber type="number" value="${travel.price*travel.discount}" maxFractionDigits="0"></fmt:formatNumber>
        </script>

        <div class="form-group">
            <label for="totalPrices">总价</label>
            <input type="text" class="form-control"  name="totalPrices" id="totalPrices" >
        </div>
        <div class="form-group form-check">
        </div>
        <button type="submit" class="btn btn-primary">预定</button>
        <button type="button" id="button" class="button">取消</button>
    </form>
</div>
</body>
</html>
<script>
    var totalChildrenNumber = document.getElementById("totalChildrenNumber");
    var price = document.getElementById("price");
    var totalAdultNumber = document.getElementById("totalAdultNumber");
    var totalPrices = document.getElementById("totalPrices");
    document.getElementById("totalPrices").value=document.getElementById("totalChildrenNumber").value*document.getElementById("price").value+document.getElementById("totalAdultNumber").value*document.getElementById("price").value;
    // document.getElementById("totalPrices").value=document.getElementById("totalChildrenNumber").value*document.getElementById("price").value+document.getElementById("totalAdultNumber").value*document.getElementById("price").value;
    totalAdultNumber.onkeyup =function () {
        document.getElementById("totalPrices").value=document.getElementById("totalChildrenNumber").value*document.getElementById("price").value+document.getElementById("totalAdultNumber").value*document.getElementById("price").value;
    }
    totalChildrenNumber.onkeyup =function () {
        document.getElementById("totalPrices").value=document.getElementById("totalChildrenNumber").value*document.getElementById("price").value+document.getElementById("totalAdultNumber").value*document.getElementById("price").value;
    }
    var button=document.getElementById("button");
    button.onclick = function () {
        var flag = confirm("确定离开,还有订单没支付");
        if (flag==true){
            document.getElementById("isPlay").value=0;
            alert(document.getElementById("isPlay").value);
            document.getElementById("myForm").submit();
        }
    }

    var msg="${msg}";
    if(msg!=""){
        alert(msg)
    }
</script>
