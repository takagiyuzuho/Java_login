<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User)session.getAttribute("loginUser");
//アプリケーションスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p>
<%= loginUser.getName() %>さんログイン中
<a href="/docoTsubu/Loguout">ログアウト</a>
</p>
<p>
<a href="/docoTsubu/Main">更新</a></p>
<form action="/docoTsubu/Main" method="post">
<input type="text" name="name"><br>
<input type="submit" value="つぶやく"><br>
</form>
<% for(Mutter mutter : mutterList) { %>
	<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
<% }  %>
</body>
</html>