<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/04/2026
  Time: 0:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h2>Add Product</h2>

    <form action="product?action=add" method="post">

        <div class="mb-3">
            <label>Name</label>
            <input class="form-control" name="name">
        </div>

        <div class="mb-3">
            <label>Price</label>
            <input class="form-control" name="price">
        </div>

        <div class="mb-3">
            <label>Quantity</label>
            <input class="form-control" name="quantity">
        </div>

        <div class="mb-3">
            <label>Size</label>
            <input class="form-control" name="size">
        </div>

        <button class="btn btn-primary">Add</button>
        <a href="product?action=list" class="btn btn-secondary">Back</a>

    </form>

</div>

</body>
</html>