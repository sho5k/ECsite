<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" type = "text/css" href = "./css/style.css">
<title>BuyItem画面</title>
</head>
<body>
	<div id="header">
	</div>
<div id = "main">
		<div id="top">
		<p>ユーザー情報削除確認画面</p>
		</div>
		<div>
			<p>ログインID[<s:property value="%{loginId}"/>]のユーザーを削除します。よろしいですか？</p>
		</div>
		<div class="btn_layout">
			<s:form action="UserDeleteCompleteAction">
				<s:submit value="OK" class="btn"/>
				<s:hidden name="loginId" value="%{loginId}"/>
			</s:form>

			<s:form action="UserDetailsAction">
				<s:submit value="キャンセル" class="btn"/>
				<s:hidden name="loginId" value="%{loginId}"/>
			</s:form>
		</div>
	<div>
			<p>前画面に戻る場合は<a href="<s:url action="UserDetailsAction"><s:param name="loginId" value="%{loginId}"/></s:url>">こちら</a></p>
			<p>管理者画面は<a href='<s:url action ="AdminAction"/>'>こちら</a></p>
		</div>
</div>
	<div id ="footer">
	</div>
</body>
</html>

