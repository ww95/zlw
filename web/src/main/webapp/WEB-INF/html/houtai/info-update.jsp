<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"></jsp:include>
<div id="page-inner">
    <form method="post" action="<%=request.getContextPath()%>/backstage/admin/self-info-update">
        <div class="form-group">
            <label for="exampleInputEmail1">用户名</label>
            <input type="text" class="form-control" name="username" id="exampleInputEmail1" value="${admin.username}" aria-describedby="emailHelp" readonly="readonly">
<%--            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword2">昵称</label>
            <input type="text" name="nick_name" class="form-control" id="exampleInputPassword2">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword3">电话</label>
            <input type="text" class="form-control" name="tellphone" id="exampleInputPassword3">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword4">地址</label>
            <input type="text" class="form-control" name="address" id="exampleInputPassword4">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword5">身份证</label>
            <input type="text" class="form-control" id="exampleInputPassword5" name="id_card">
        </div><div class="form-group">
        <label for="exampleInputPassword6">性别</label>
        <input type="radio" name="sex" id="exampleInputPassword6" value="1">男
        <input type="radio" name="sex" id="exampleInputPassword7" value="0">女
    </div>


<%--        <div class="form-group form-check">--%>
<%--&lt;%&ndash;            <input type="checkbox" class="form-check-input" id="exampleCheck1">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <label class="form-check-label" for="exampleCheck1">Check me out</label>&ndash;%&gt;--%>
<%--        </div>--%>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
<script>
    var msg="${msg}";
    if(msg!=""){
        alert(msg)
    }
</script>