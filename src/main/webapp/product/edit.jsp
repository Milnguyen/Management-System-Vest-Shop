<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/04/2026
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.Product" %>

<%
    Product p = (Product) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h2>Edit Product</h2>

    <form action="product?action=update" method="post">

        <input type="hidden" name="id" value="<%= p.getId() %>">

        <div class="mb-3">
            <label>Name</label>
            <input class="form-control" name="name" value="<%= p.getName() %>">
        </div>

        <div class="mb-3">
            <label>Price</label>
            <input class="form-control" name="price" value="<%= p.getPrice() %>">
        </div>

        <div class="mb-3">
            <label>Quantity</label>
            <input class="form-control" name="quantity" value="<%= p.getQuantity() %>">
        </div>

        <div class="mb-3">
            <label>Size</label>
            <input class="form-control" name="size" value="<%= p.getSize() %>">
        </div>

        <button class="btn btn-success">Update</button>
        <a href="product?action=list" class="btn btn-secondary">Back</a>

    </form>

</div>

</body>
</html>
