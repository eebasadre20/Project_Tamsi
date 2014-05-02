<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 5/1/14
  Time: 9:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <style>
        div {
            width: 220px;
            margin: 0 auto;
            padding-bottom: 20px;
        }

    </style>
</head>

<body>
<g:if test="${flash.message}">
   <div>
       ${flash.message}
   </div>
</g:if>
<g:if test="${session.user}">
    <div>
        Welcome! ${session.user} | <g:link controller="User" action="logout">Logout</g:link>
    </div>
</g:if>
<g:else>
 <g:form controller="User" action="login">
    <div>
        <label>Username</label><input type="text" name="username">
        <label>Password</label><input type="password" name="password">
        <label>&nbsp</label><input type="submit" value="login">
    </div>
</g:form>
</g:else>
</body>
</html>