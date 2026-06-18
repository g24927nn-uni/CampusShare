<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="servlet.Item" %>
<%@ page import="servlet.ItemStore" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品一覧</title>
</head>

<body>

<h1>商品一覧画面</h1>

<p><a href="newItem.jsp">＋新規出品</a></p>

<form method="get" action="itemList.jsp">
    カテゴリ：
    <select name="category">
        <option value="">すべて</option>
        <option value="教科書">教科書</option>
        <option value="家具">家具</option>
    </select>

    詳細：
    <select name="detail">
        <option value="">すべて</option>
        <option value="プログラミング">プログラミング</option>
        <option value="家電">家電</option>
    </select>

    <input type="submit" value="検索">
</form>

<hr>

<%
String category = request.getParameter("category");
String detail = request.getParameter("detail");

if (category == null) category = "";
if (detail == null) detail = "";

List<Item> items = ItemStore.getItems();

for (Item item : items) {
    boolean matchCategory = category.equals("") || item.getCategory().equals(category);
    boolean matchDetail = detail.equals("") || item.getDetail().equals(detail);

    if (matchCategory && matchDetail) {
%>
        <p>
            <b><%= item.getName() %></b><br>
            カテゴリ：<%= item.getCategory() %><br>
            詳細：<%= item.getDetail() %><br>
            価格：<%= item.getPrice() %><br>
            <a href="itemDetail">詳細を見る</a>
        </p>
        <hr>
<%
    }
}
%>

</body>
</html>