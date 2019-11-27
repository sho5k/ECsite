<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ユーザー一覧削除確認画面</title>
</head>
<body>

	<div id="header">
	</div>
	<div id="main">
		<div id="top">
		<p>ユーザー一覧削除確認</p>
		</div>
		<p>管理者以外のユーザーを削除します。よろしいですか？</p>
		<div class="btn_layout">
			<s:form action="UserListDeleteCompleteAction">
				<s:submit value="OK" class="btn"/>
			</s:form>
			<s:form action="UserListAction">
				<s:submit value="キャンセル" class="btn"/>
			</s:form>
		</div>
	</div>

</body>
</html>