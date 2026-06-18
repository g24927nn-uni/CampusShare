<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品詳細</title>
</head>
<body>

<h1>CampusShare</h1>
<h2>商品詳細</h2>

<p>商品名：<%= request.getAttribute("name") %></p>
<p>カテゴリ：<%= request.getAttribute("category") %></p>
<p>詳細：<%= request.getAttribute("description") %></p>
<p>価格：<%= request.getAttribute("price") %> 円</p>

<a href="message.jsp">出品者にメッセージを送る</a>

</body>
</html>