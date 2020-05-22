<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String sex=request.getParameter("sex");
	String username=request.getParameter("username");
	String pwd=request.getParameter("pwd");
	String ad_name=request.getParameter("ad_name");
	String email=request.getParameter("email");
	String title=request.getParameter("title");
	String Language_region=request.getParameter("Language_region");
	String sub_title=request.getParameter("sub_title");
	String arg1=sex+";"+username+";"+pwd+";"+ad_name+";"+email+";"+title+";"+Language_region+";"+sub_title;
	
	session.setAttribute("flag",arg1);
	session.setMaxInactiveInterval(20);
	response.sendRedirect("c.jsp");
%>
</body>
</html>