<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メッセージ</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="header">
    <h1>Campus<span>Share</span></h1>
    <p>出品者との連絡画面です。</p>
</div>

<div class="container">
    <div class="card">
        <h2>メッセージ画面</h2>

        <%
        String own = request.getParameter("own");
        %>

        <% if ("true".equals(own)) { %>
            <p>メッセージはありません。</p>
        <% } else { %>
            <p>出品者にメッセージを送れる画面です（仮）</p>
        <% } %>

        <p><a class="button" href="itemList.jsp">商品一覧へ戻る</a></p>
    </div>
</div>

</body>
</html>