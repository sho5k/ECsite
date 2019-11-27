<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" type ="text/css" href="./css/style.css">

<title>UserCreate画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id = "main">
		<div id="top">
		<p>UserCreate</p>
		</div>
	<div>
		<s:if test = "errorMessage != ''">
			<s:property value="errorMessage" escape="false"/>
		</s:if>
		<s:if test = "check ==false">
			<p>すでに登録されているログインIDです</p>
		</s:if>
		<table>
		<s:form action ="UserCreateConfirmAction">
			<tr>
				<td>
					<label>ログインID:</label>
				</td>
				<td>
					<input type="text" name="loginUserId" value="" />
				</td>
			</tr>
			<tr>
				<td>
					<label>ログインPASS:</label>
				</td>
				<td>
					<input type="text" name="loginPassword" value="" />
				</td>
			</tr>
			<tr>
				<td>
					<label>ユーザー名:</label>
				</td>
				<td>
					<input type="text" name="userName" value="" />
				</td>
			</tr>
				<s:submit value="登録"/>
			</s:form>
		</table>
		<div>
			<s:if test="#session.admin_flg==1">
			<span>管理者画面に戻る場合は</span>
			<a href='<s:url action ="AdminAction"/>'>こちら</a>
			</s:if>
			<p>Homeへ戻る場合は
			<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
		</div>
	</div>
</div>
	<div id ="footer">
	</div>

</body>
</html>