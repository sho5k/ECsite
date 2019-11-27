<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ユーザー情報詳細画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>ユーザーリスト</p>
		</div>
		<div id="list">
			<table>
				<tr>
					<th>ID</th>
					<th>ユーザー名</th>
					<th>ログインID</th>
					<th>PASSWORD</th>
				</tr>
				<s:iterator value="userDetailsList">
					<tr>
						<td><s:property value="id"/></td>
						<td><s:property value="userName"/></td>
						<td><s:property value="loginId"/></td>
						<td><s:property value="password"/></td>
					</tr>
				</s:iterator>
			</table>
		</div>
		<br>
		<div>
			<s:form action="UserDeleteConfirmAction">
				<s:submit value="削除する"/>
				<s:hidden name="loginId" value="%{loginId}"/>
			</s:form>
		</div>
		<br>
		<div>
			<span>管理画面に戻る場合は</span>
			<a href='<s:url action ="AdminAction"/>'>こちら</a>
		</div>
	</div>
	<div id="footer">
	</div>

</body>
</html>