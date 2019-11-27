<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>管理者画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
		<p>管理者画面</p>
		</div>
		<div id ="left">
			<p>-商品管理-</p>
			<s:form action="ItemCreateAction">
				<s:submit value="新規登録" class="btn"/>
			</s:form>
			<s:form action="ItemListAction">
				<s:submit value="一覧" class="btn"/>
			</s:form>
		</div>
		<div id="right">
			<p>-ユーザー管理-</p>
			<s:form action="UserCreateAction">
				<s:submit value="新規登録" class="btn"/>
			</s:form>
			<s:form action="UserListAction">
				<s:submit value="一覧" class="btn"/>
			</s:form>
		</div>
		<div id="text-link">
		<br>
			<p>Homeへ戻る場合は
			<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>