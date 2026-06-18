<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品一覧</title>
</head>

<body>

<h1>商品一覧画面</h1>
<p><a href="newItem.jsp">＋新規出品</a></p>
<p>ログイン成功です。</p>

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

String[][] items = {
    {"Java基礎", "教科書", "プログラミング", "500円"},
    {"ミニ冷蔵庫", "家具", "家電", "3000円"}
};

for (String[] item : items) {
    boolean matchCategory = category.equals("") || item[1].equals(category);
    boolean matchDetail = detail.equals("") || item[2].equals(detail);

    if (matchCategory && matchDetail) {
%>
        <p>
            <b><%= item[0] %></b><br>
            カテゴリ：<%= item[1] %><br>
            詳細：<%= item[2] %><br>
            価格：<%= item[3] %><br>
            <a href="itemDetail">詳細を見る</a>
        </p>
        <hr>
<%
    }
}
%>

</body>
</html>