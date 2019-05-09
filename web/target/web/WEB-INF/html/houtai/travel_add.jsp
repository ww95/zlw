<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="top.jsp"></jsp:include>
            <div id="page-inner">
                <form method="post" action="<%=request.getContextPath()%>/backstage/admin/travel-add" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="exampleInputEmail1">图片</label>
                        <input type="file" class="form-control" name="imgPath" id="exampleInputEmail10" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">旅游名称</label>
                        <input type="text" class="form-control" name="title" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">分类编号</label>
<%--                        <input type="text" class="form-control" name="catalogId" id="exampleInputEmail2" aria-describedby="emailHelp">--%>
                        <select id="language" name="catalogId">
                            <c:forEach items="${catalogs}" var="c">
                                <option value="${c.id}">${c.title}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">目的地</label>
                        <input type="text" class="form-control" name="destination" id="exampleInputEmail3" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">价格</label>
                        <input type="text" class="form-control" name="price" id="exampleInputEmail4" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">折扣</label>
                        <input type="text" class="form-control" name="discount" id="exampleInputEmail5" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">成本</label>
                        <input type="text" class="form-control" name="cost" id="exampleInputEmail6" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">摘要</label>
                        <input type="text" class="form-control" name="info" id="exampleInputEmail7" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">详细信息</label>
                        <input type="text" class="form-control" name="content" id="exampleInputEmail8" aria-describedby="emailHelp">
                    </div>
                    <button type="submit" class="btn btn-primary">确认</button>
                </form>
            </div>
<jsp:include page="bottom.jsp"></jsp:include>
<script>
    var msg="${msg}";
    if(msg!=""){
        alert(msg)
    }
</script>