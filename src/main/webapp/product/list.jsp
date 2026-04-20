<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/04/2026
  Time: 0:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>

<%
    List<Product> list = (List<Product>) request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Product Management</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h2 class="mb-4"> Product Management</h2>

    <a href="product?action=add" class="btn btn-primary mb-3">+ Add Product</a>

    <table class="table table-bordered table-hover text-center align-middle">

        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Size</th>
            <th>Action</th>
        </tr>
        </thead>

        <tbody>

        <%
            if (list != null && !list.isEmpty()) {
                for (Product p : list) {
        %>
        <tr>
            <td><%= p.getId() %></td>
            <td><%= p.getName() %></td>
            <td>VND<%= p.getPrice() %></td>
            <td><%= p.getQuantity() %></td>
            <td><%= p.getSize() %></td>

            <td>
                <!-- ✏️ EDIT -->
                <form action="product" method="get" style="display:inline;">
                    <input type="hidden" name="action" value="edit">
                    <input type="hidden" name="id" value="<%= p.getId() %>">
                    <button class="btn btn-warning btn-sm">Edit</button>
                </form>

                <!-- 🗑 DELETE -->
                <form action="product?action=delete" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="<%= p.getId() %>">
                    <button class="btn btn-danger btn-sm"
                            onclick="return confirm('Delete this product?')">
                        Delete
                    </button>
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6">No products found</td>
        </tr>
        <%
            }
        %>

        </tbody>
    </table>

</div>

</body>
</html>