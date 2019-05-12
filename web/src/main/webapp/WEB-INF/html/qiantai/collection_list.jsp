<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"></jsp:include>
            <div id="page-inner">
               <div>
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
                       <c:forEach items="${pageInfo.list}" var="collection">
                           <tr>
                               <td>${collection.travel.title}</td>
                               <td>${collection.travel.catalog.title}</td>
                               <td>${collection.travel.destination}</td>
                               <td>${collection.travel.price}</td>
                               <td>${collection.travel.discount}</td>
                               <td>
                                   <a href="<%=request.getContextPath()%>/user/travel-buy?id=${collection.travel.id}">预订</a>
                                   <a href="<%=request.getContextPath()%>/user/collection-detail?id=${collection.travel.id}">查看</a>
                                   <a href="<%=request.getContextPath()%>/user/collection_remove?id=${collection.travel.id}&number=1">删除</a>
                               </td>
                           </tr>
                       </c:forEach>
                       </tbody>
                   </table>
               </div>
                <div>
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/collection-list?pageNum=${pageInfo.pageNum -1}">Previous</a></li>
                            <c:forEach begin="1" end="${pageInfo.pages}" varStatus="index" step="1">
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/collection-list?pageNum=${index.index}">${index.index}</a></li>
                            </c:forEach>
                            <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/user/collection-list?pageNum=${pageInfo.pageNum +1}">Next</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
<jsp:include page="bottom.jsp"></jsp:include>
<script>
    var msg="${msg}";
    if(msg!=""){
        alert(msg)
    }
</script>