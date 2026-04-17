<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/04/2026
  Time: 0:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>

<html>
<head>
    <title>Product List</title>
</head>
<body>

<h2>Vest Products</h2>

<a href="../index.jsp">Back Home</a>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
    </tr>

    <%
        List<Product> list = (List<Product>) request.getAttribute("list");
        if (list != null && !list.isEmpty()) {
            for (Product p : list) {
    %>
    <tr>
        <td><%= p.getId() %></td>
        <td><%= p.getName() %></td>
        <td><%= p.getPrice() %></td>
        <td><%= p.getQuantity() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="4">No products found</td>
    </tr>
    <%
        }
    %>

</table>

</body>
</html>