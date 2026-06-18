<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CampusShare ログイン</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="header">
    <h1>Campus<span>Share</span></h1>
    <p>不要になったモノを、必要な人へ。</p>
</div>

<div class="container">
    <div class="card">
        <h2>ログイン</h2>

        <% if (request.getAttribute("error") != null) { %>
            <p style="color:red;"><%= request.getAttribute("error") %></p>
        <% } %>

        <form action="login" method="post">
            <p>
                学籍番号：<br>
                <input type="text" name="studentId" required>
            </p>

            <p>
                パスワード：<br>
                <input type="password" name="password" required>
            </p>

            <input type="submit" value="ログイン">
        </form>
    </div>
</div>

</body>
</html>