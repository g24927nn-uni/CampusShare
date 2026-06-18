<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規出品</title>
<link rel="stylesheet" href="css/style.css">

<script>
function updateDetailOptions() {
    const category = document.getElementById("category").value;
    const detail = document.getElementById("detail");

    const options = {
        "教科書": ["英語", "数学", "プログラミング", "公民", "その他"],
        "参考書": ["英語", "数学", "プログラミング", "TOEIC", "資格", "その他"],
        "家具": ["机・椅子", "収納", "寝具", "その他"],
        "洋服": ["トップス", "ボトムス", "アウター", "その他"],
        "雑貨": ["文房具", "キッチン用品", "インテリア", "その他"],
        "家電": ["冷蔵庫", "電子レンジ", "照明", "その他"],
        "その他": ["その他"]
    };

    detail.innerHTML = "";

    options[category].forEach(function(text) {
        const option = document.createElement("option");
        option.value = text;
        option.textContent = text;
        detail.appendChild(option);
    });

    detail.selectedIndex = 0;
}

window.onload = updateDetailOptions;
</script>
</head>

<body>

<div class="header">
    <h1>Campus<span>Share</span></h1>
    <p>かんたん出品。入力してすぐに一覧へ。</p>
</div>

<div class="container">
    <div class="card">
        <h2>新規出品</h2>

        <form action="newItem" method="post">

            <p>
                商品画像：<br>
                <input type="file" name="image">
                <br>
                <small>※デモでは共通のサンプル画像を表示します</small>
            </p>

            <p>
                商品名：<br>
                <input type="text" name="name" required>
            </p>

            <p>
                カテゴリ：<br>
                <select name="category" id="category" onchange="updateDetailOptions()" required>
                    <option value="教科書">教科書</option>
                    <option value="参考書">参考書</option>
                    <option value="家具">家具</option>
                    <option value="洋服">洋服</option>
                    <option value="雑貨">雑貨</option>
                    <option value="家電">家電</option>
                    <option value="その他">その他</option>
                </select>
            </p>

            <p>
                詳細：<br>
                <select name="detail" id="detail" required></select>
            </p>

            <p>
                コメント：<br>
                <textarea name="comment" rows="5" cols="45"></textarea>
            </p>

            <p>
                価格：<br>
                <input type="number" name="price" min="0" step="1" required>
            </p>

            <button type="submit">出品する</button>
            <a class="button" href="itemList.jsp">商品一覧へ戻る</a>
        </form>
    </div>
</div>

</body>
</html>
