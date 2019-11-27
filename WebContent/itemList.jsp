<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品リスト</title>
</head>
<body>
	<div id="header">
	</div>
	<div id="main">
		<div id="top">
			<p>商品リスト</p>
		</div>
		<div id="list">
			<table>
				<tr>
					<th>ID</th>
					<th>商品名</th>
					<th>価格</th>
					<th>在庫数</th>
					<th>追加日時</th>
					<th>更新日時</th>
					<th></th>
				</tr>
				<s:iterator value="itemList">
					<tr>
						<td><s:property value="id"/></td>
						<td><s:property value="itemName"/></td>
						<td><s:property value="itemPrice"/></td>
						<td><s:property value="itemStock"/></td>
						<td><s:property value="insertDate"/></td>
						<td><s:property value="updateDate"/></td>
						<td><a href="<s:url action="ItemDetailsAction"><s:param name="id" value="%{id}"/></s:url>">詳細</a></td>
					</tr>
				</s:iterator>
			</table>
		</div>
		<br>
		<div>
			<s:form action="ItemListDeleteConfirmAction">
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