
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>出题系统</title>
</head>
<body >

		<h2>出题系统</h2> 
		<form action="check.jsp" method="post">
		出题数量：<input type="text" name = "username"><br>
		<h2>题目样式：1.整数四则运算 2.真分数四则运算</h2>
		题目样式：<input type="text" name="choose"><br>
        <input type="submit" value="提交">
		</form>
</body>
</html>