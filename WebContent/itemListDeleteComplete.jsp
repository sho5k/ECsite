<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品一覧削除完了画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>商品一覧削除完了</p>
		</div>
		<div>
			<p>商品一覧の削除が完了致しました。</p>
			<div>
				<p><a href='<s:url action="AdminAction"/>'>管理者TOPへ</a></p>
				<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			</div>
		</div>
	</div>
	<div id ="footer">
	</div>

</body>
</html>