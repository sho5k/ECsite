<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ユーザーリスト</title>
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
					<th></th>
				</tr>
				<s:iterator value="userList">
					<tr>
						<td><s:property value="id"/></td>
						<td><s:property value="userName"/></td>
						<td><s:property value="loginId"/></td>
						<td><s:property value="password"/></td>
						<td><a href="<s:url action="UserDetailsAction"><s:param name="loginId" value="%{loginId}"/></s:url>">詳細</a></td>
					</tr>
				</s:iterator>
			</table>
		</div>
		<br>
		<div>
			<s:form action="UserListDeleteConfirmAction">
				<s:submit value="削除する" class="btn"/>
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