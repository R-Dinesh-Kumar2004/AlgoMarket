<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="postEvent" method="post" enctype="multipart/form-data">
		Enter Email:<input type="text" name="email"><br> Event
		Date:<input type="date" name="event_date"><br> Enter
		Email:<input type="file" name="poster"><br>
		<button type="submit">Submit</button>
	</form>
</body>
</html>