<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"></jsp:include>
            <div id="page-inner">
                <form method="post" action="<%=request.getContextPath()%>/backstage/admin/catalog-add">
                    <div class="form-group">
                        <label for="exampleInputEmail1">分类编号</label>
                        <input type="text" class="form-control" name="title" id="exampleInputEmail1" aria-describedby="emailHelp">
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