<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="servlet.Item" %>

<%
Item item = (Item) request.getAttribute("item");
boolean isOwnItem = Boolean.TRUE.equals(request.getAttribute("isOwnItem"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品詳細</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="header">
    <h1>Campus<span>Share</span></h1>
    <p>商品の詳細を確認できます。</p>
</div>

<div class="container">
    <div class="card">

        <% if (item == null) { %>

            <h2>商品が見つかりませんでした</h2>
            <p><a class="button" href="itemList.jsp">商品一覧へ戻る</a></p>

        <% } else { %>

            <h2>商品詳細</h2>

            <div class="item-card">
                <img src="<%= request.getContextPath() + "/" + item.getImagePath() %>" alt="商品画像">

                <div>
                    <h2><%= item.getName() %></h2>
                    <p>カテゴリ：<%= item.getCategory() %></p>
                    <p>詳細：<%= item.getDetail() %></p>
                    <p>コメント：<%= item.getComment() %></p>
                    <p><strong>価格：￥<%= item.getPrice() %></strong></p>
                    <p>出品者：<%= item.getMaskedSellerId() %></p>

                    <% if (isOwnItem) { %>
                        <a class="button" href="message.jsp?own=true">商品に関するメッセージを表示する</a>
                    <% } else { %>
                        <a class="button" href="message.jsp">出品者にメッセージを送る</a>
                    <% } %>

                    <p><a href="itemList.jsp">商品一覧へ戻る</a></p>
                </div>
            </div>

        <% } %>

    </div>
</div>

</body>
</html>