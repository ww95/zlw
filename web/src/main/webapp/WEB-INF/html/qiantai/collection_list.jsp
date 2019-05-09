<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"></jsp:include>
            <div id="page-inner">
                <div>
                    <c:if test="${pageInfo.list==null}">
                        <h1>收藏中心为空，请点击返回<a href="<%=request.getContextPath()%>/user/index"></a></h1>
                    </c:if>
                    <c:if test="${pageInfo.list!=null}">
                        <table class="table">

                            <thead>
                            <tr>
                                <th scope="col">名称</th>
                                <th scope="col">分类</th>
                                <th scope="col">目的地</th>
                                <th scope="col">价格</th>
                                <th scope="col">折扣</th>
                                <th scope="col">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${pageInfo.list!=null}">
                                <c:forEach var="travel" items="${pageInfo.list}" varStatus="index">
                                    <tr>
                                        <td>${travel.title}</td>
                                        <td>${travel.catalog.title}</td>
                                        <td>${travel.destination}</td>
                                        <td>${travel.price}</td>
                                        <td>${travel.discount}</td>
                                        <td>
                                            <a href="<%=request.getContextPath()%>/user/collection-detail?id=${travel.id}">查看</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>

                            </tbody>
                        </table>
                    </c:if>
                    <div>
                        <nav aria-label="Page navigation example">
                            <c:if test="${pageInfo.list!=null}">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/collection-list?pageNum=${pageInfo.pageNum -1}">Previous</a></li>
                                    <c:forEach begin="1" end="${pageInfo.pages}" varStatus="index" step="1">
                                        <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/collection-list?pageNum=${index.index}">${index.index}</a></li>
                                    </c:forEach>
                                    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/collection-list?pageNum=${pageInfo.pageNum +1}">Next</a></li>
                                </ul>
                            </c:if>

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