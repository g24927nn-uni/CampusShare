<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メッセージ</title>
</head>
<body>

<h1>CampusShare</h1>

<h2>メッセージ画面</h2>

<p>
<%= request.getAttribute("message") == null 
    ? "出品者にメッセージを送れる画面です（仮）" 
    : request.getAttribute("message") %>
</p>

<a href="itemList.jsp">商品一覧へ戻る</a>

</body>
</html>