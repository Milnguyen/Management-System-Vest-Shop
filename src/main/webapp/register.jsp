<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/04/2026
  Time: 0:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Register</title>
</head>
<body>

<h2>Create Account</h2>

<form action="register" method="post">
    <table>
        <tr>
            <td>Username:</td>
            <td><input type="text" name="username" required></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="password" required></td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td><input type="password" name="confirm" required></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Register</button>
            </td>
        </tr>
    </table>
</form>

<br>

<a href="login.jsp">Back to Login</a>

</body>
</html>