<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規出品</title>
</head>
<body>

<h1>CampusShare</h1>
<h2>新規出品</h2>

<form action="newItem" method="post">
    <p>商品名：<input type="text" name="name"></p>
    <p>カテゴリ：<input type="text" name="category"></p>
    <p>詳細：<input type="text" name="description"></p>
    <p>価格：<input type="text" name="price"></p>
    <button type="submit">出品する</button>
</form>

</body>
</html>
