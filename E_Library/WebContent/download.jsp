<%@page import="com.elibrary.model.Books"%>
<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Book Page</title>
</head>
<body>

	<div align="center" style="height: 300px; width: 500px;">

		<%
			Books book = (Books) session.getAttribute("PDFBOOK");
			byte[] pdfcontent = book.getPdfContent();
			
			response.setContentType(book.getContentType());
			response.setHeader("Content-Disposition", "saveas; filename=\"Test.pdf\"");

			response.getOutputStream().write(pdfcontent);
		%>

	</div>

</body>
</html>