
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event mining</title>
<style type="text/css">
img {
	width: 300px;
	height: 300px;
}
</style>
</head>
<body>
<p>hi</p>
	<%
	List<byte[]> images = (List<byte[]>) request.getAttribute("images");
	response.setContentType("image/jpeg");
	if(images !=null){
		for(int i=0;i<images.size();i++){
			response.getOutputStream().write(images.get(i));
			response.getOutputStream().flush();
		}
	}
	%>
</body>
</html>