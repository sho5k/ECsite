<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品登録確認画面</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>商品登録確認</p>
		</div>
		<h3>登録する内容は以下でよろしいですか。</h3>
		<table>
			<tr id="box">
				<td>
					<label>商品名:</label>
				</td>
				<td>
					<s:property value="itemName" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>価格:</label>
				</td>
				<td>
					<s:property value="itemPrice" escape="false"/>
				</td>
			</tr>
			<tr id="box">
				<td>
					<label>在庫数:</label>
				</td>
				<td>
					<s:property value="itemStock" escape="false"/>
				</td>
			</tr>
		</table>
		<div class="btn_layout">
			<s:form action="ItemCreateCompleteAction">
				<s:submit value="完了" class="btn"/>
			</s:form>
			<s:form action="ItemCreateAction">
				<s:submit value="戻る" class="btn"/>
			</s:form>
		</div>
	</div>
	<div id="footer">
	</div>
</body>
</html>