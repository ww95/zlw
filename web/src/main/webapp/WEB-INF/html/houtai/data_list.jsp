<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"></jsp:include>
<div id="page-inner">
    <div class="jumbotron">
        <h1 class="display-4">你好, ${account.ninkName}!</h1>
        <p class="lead">数据统计是使用大量数据、统计和定量分析、解释和预测以及基于事实的管理来推动决策过程与实现价值增生。</p>
        <hr class="my-4">
        <p>我们通过数据统计分析出图书销售情况，减少盲目的进货。</p>
    </div>
    <div>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/data-list?pageNum=${pageInfo.pageNum-1}">Previous</a></li>
                <c:forEach begin="1" end="${pageInfo.pages}" step="1" varStatus="index">
                    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/data-list?pageNum=${index.index}">${index.index}</a></li>
                </c:forEach>
                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/data-list?pageNum=${pageInfo.pageNum+1}">Next</a></li>
            </ul>
        </nav>
    </div>
    <div>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">旅游名</th>
                <th scope="col">旅游地</th>
                <th scope="col">销售总价</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="travel">
                <tr>
                    <td>${travel.title}</td>
                    <td>${travel.destination}</td>
                    <c:forEach items="${orderList}" var="order">
                        <c:if test="${order.travelId==travel.id}">
                            <td>${order.sum_totail}</td>
                        </c:if>
                    </c:forEach>
                </tr>
            </c:forEach>
            <tr></tr>
            <tr>
                <th scope="row">总计</th>
                <td></td>
                <td>${sale}</td>
            </tr>
            </tbody>
        </table>
        <div>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/data-list?pageNum=${pageInfo.pageNum -1}">Previous</a></li>
                    <c:forEach begin="1" end="${pageInfo.pages}" varStatus="index" step="1">
                        <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/data-list?pageNum=${index.index}">${index.index}</a></li>
                    </c:forEach>
                    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/data-list?pageNum=${pageInfo.pageNum +1}">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
<script>
    var msg="${msg}";
    if(msg!=""){
        alert(msg)
    }
</script>