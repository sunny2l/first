<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>  
    <meta charset="UTF-8">  
    <title>Login</title>  
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/Login.css"/>  
</head>  
<body>  
    <div id="login">  
        <h1>Login</h1>  
        <form method="post">  
            <input type="text" required="required" placeholder="用户名" name="u"></input>  
            <input type="password" required="required" placeholder="密码" name="p"></input>  
            <button class="but" type="submit">登录</button>  
        </form>  
    </div>  
</body>   
</html>
