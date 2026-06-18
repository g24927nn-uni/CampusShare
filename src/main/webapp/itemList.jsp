<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="servlet.Item" %>
<%@ page import="servlet.ItemStore" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品一覧</title>
<link rel="stylesheet" href="css/style.css">

<script>
function updateDetailOptions(resetDetail) {
    const category = document.getElementById("category").value;
    const detailSelect = document.getElementById("detail");

    const options = {
        "": ["すべて"],
        "教科書": ["すべて", "英語", "数学", "プログラミング", "公民", "その他"],
        "参考書": ["すべて", "英語", "数学", "プログラミング", "TOEIC", "資格", "その他"],
        "家具": ["すべて", "机・椅子", "収納", "寝具", "その他"],
        "洋服": ["すべて", "トップス", "ボトムス", "アウター", "その他"],
        "雑貨": ["すべて", "文房具", "キッチン用品", "インテリア", "その他"],
        "家電": ["すべて", "冷蔵庫", "電子レンジ", "照明", "その他"],
        "その他": ["すべて", "その他"]
    };

    detailSelect.innerHTML = "";

    options[category].forEach(function(text) {
        const option = document.createElement("option");
        option.text = text;
        option.value = text === "すべて" ? "" : text;
        detailSelect.add(option);
    });

    if (resetDetail) {
        detailSelect.value = "";
    }
}

window.onload = function() {
    updateDetailOptions(false);

    const selectedDetail = "<%= request.getParameter("detail") == null ? "" : request.getParameter("detail") %>";
    if (selectedDetail !== "") {
        document.getElementById("detail").value = selectedDetail;
    }
};
</script>

</head>

<body>

<div class="header">
    <h1>Campus<span>Share</span></h1>
    <p>不要になったモノを、必要な人へ。</p>
</div>

<div class="container">

<%
String category = request.getParameter("category");
String detail = request.getParameter("detail");

if (category == null) category = "";
if (detail == null) detail = "";
%>

    <div class="card">
        <h2>商品を検索する</h2>

        <form method="get" action="itemList.jsp">
            <p>
                カテゴリ：
                <select name="category" id="category" onchange="updateDetailOptions(true)">
                    <option value="" <%= category.equals("") ? "selected" : "" %>>すべて</option>
                    <option value="教科書" <%= category.equals("教科書") ? "selected" : "" %>>教科書</option>
                    <option value="参考書" <%= category.equals("参考書") ? "selected" : "" %>>参考書</option>
                    <option value="家具" <%= category.equals("家具") ? "selected" : "" %>>家具</option>
                    <option value="洋服" <%= category.equals("洋服") ? "selected" : "" %>>洋服</option>
                    <option value="雑貨" <%= category.equals("雑貨") ? "selected" : "" %>>雑貨</option>
                    <option value="家電" <%= category.equals("家電") ? "selected" : "" %>>家電</option>
                    <option value="その他" <%= category.equals("その他") ? "selected" : "" %>>その他</option>
                </select>

                詳細：
                <select name="detail" id="detail">
                    <option value="">すべて</option>
                </select>

                <input type="submit" value="検索">
            </p>
        </form>

        <p>
            <a class="button large-button" href="newItem.jsp">
    			＋ 新規出品
			</a>
        </p>
    </div>

<%
List<Item> items = ItemStore.getItems();

boolean hasItem = false;

for (Item item : items) {
    boolean matchCategory = category.equals("") || item.getCategory().equals(category);
    boolean matchDetail = detail.equals("") || item.getDetail().equals(detail);

    if (matchCategory && matchDetail) {
        hasItem = true;
%>

    <div class="card item-card">
        <img src="<%= request.getContextPath() + "/" + item.getImagePath() %>" alt="商品画像">

        <div>
            <h2><%= item.getName() %></h2>
            <p>カテゴリ：<%= item.getCategory() %></p>
            <p>詳細：<%= item.getDetail() %></p>
            <p><strong>￥<%= item.getPrice() %></strong></p>
            <a class="button" href="itemDetail?id=<%= item.getId() %>">詳細を見る</a>
        </div>
    </div>

<%
    }
}

if (!hasItem) {
%>

    <div class="card">
        <p>条件に合う商品はありません。</p>
    </div>

<%
}
%>

</div>

</body>
</html>