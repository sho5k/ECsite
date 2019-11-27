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
		<p>商品情報削除確認画面</p>
		</div>
		<div>
			<p>商品ID[<s:property value="%{id}"/>]の商品を削除します。よろしいですか？</p>
		</div>
		<div class="btn_layout">
			<s:form action="ItemDeleteCompleteAction">
				<s:submit value="OK" class="btn"/>
				<s:hidden name="id" value="%{id}"/>
			</s:form>

			<s:form action="ItemDetailsAction">
				<s:submit value="キャンセル" class="btn"/>
				<s:hidden name="id" value="%{id}"/>
			</s:form>
		</div>
	<div>
			<p>前画面に戻る場合は<a href="<s:url action="ItemDetailsAction"><s:param name="id" value="%{id}"/></s:url>">こちら</a></p>
			<p>管理者画面は<a href='<s:url action ="AdminAction"/>'>こちら</a></p>
		</div>
</div>
	<div id ="footer">
	</div>
</body>
</html>

