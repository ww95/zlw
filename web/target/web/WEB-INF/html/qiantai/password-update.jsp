<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"></jsp:include>
<div id="page-inner">
    <form method="post" action="<%=request.getContextPath()%>/user/self-password-update">
        <div class="form-group">
            <label for="exampleInputEmail1">用户名</label>
            <input type="text" class="form-control" name="username" id="exampleInputEmail1" value="${session_user.username}" aria-describedby="emailHelp" readonly="readonly">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword2">密码</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword2">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword3">确认密码</label>
            <input type="password" class="form-control" name="rePassword" id="exampleInputPassword3">
        </div>
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