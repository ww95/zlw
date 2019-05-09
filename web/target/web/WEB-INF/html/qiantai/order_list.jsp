<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"></jsp:include>
            <div id="page-inner">
                <div>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">订单号</th>
                            <th scope="col">旅游地</th>
                            <th scope="col">成人数</th>
                            <th scope="col">小孩数</th>
                            <th scope="col">总价格</th>
                            <th scope="col">是否支付</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="order" items="${pageInfo.list}" varStatus="index">
                            <tr>
                                <td>${order.orderNumber}</td>
                                <td>${order.travel.title}</td>
                                <td>${order.totalAdultNumber}</td>
                                <td>${order.totalChildrenNumber}</td>
                                <td>${order.totalPrices}</td>
                                <c:if test="${order.isPlay==0}">
                                    <td>支付失败，请重新<a href="<%=request.getContextPath()%>/user/play-order?id=${order.id}">支付</a></td>
                                </c:if>
                                <c:if test="${order.isPlay==1}">
                                    <td>支付成功</td>
                                </c:if>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div>
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/order-list?pageNum=${pageInfo.pageNum -1}">Previous</a></li>
                                <c:forEach begin="1" end="${pageInfo.pages}" varStatus="index" step="1">
                                    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/order-list?pageNum=${index.index}">${index.index}</a></li>
                                </c:forEach>
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/order-list?pageNum=${pageInfo.pageNum +1}">Next</a></li>
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