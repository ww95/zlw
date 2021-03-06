﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                        <c:forEach var="travel" items="${pageInfo.list}" varStatus="index">
                            <tr>
                                <td>${travel.title}</td>
                                <td>${travel.catalog.title}</td>
                                <td>${travel.destination}</td>
                                <td>${travel.price}</td>
                                <td>${travel.discount}</td>
                                <td>
                                    <a href="<%=request.getContextPath()%>/backstage/admin/travel-detail?id=${travel.id}">查看</a>
                                    <a href="<%=request.getContextPath()%>/backstage/admin/to-travel-edit?id=${travel.id}">编辑</a>
                                    <a href="<%=request.getContextPath()%>/backstage/admin/travel-remove?id=${travel.id}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div>
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/travel-list?pageNum=${pageInfo.pageNum -1}">Previous</a></li>
                                <c:forEach begin="1" end="${pageInfo.pages}" varStatus="index" step="1">
                                    <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/travel-list?pageNum=${index.index}">${index.index}</a></li>
                                </c:forEach>
                                <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/backstage/admin/travel-list?pageNum=${pageInfo.pageNum +1}">Next</a></li>
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