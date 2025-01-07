<%@page import="learnbyteaching.guestbook.dao.GuestbookDaoImpl"%>
<%@page import="learnbyteaching.guestbook.dao.GuestbookDao"%>
<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ServletContext context = getServletContext();
String dbUser = context.getInitParameter("dbUser");
String dbPass = context.getInitParameter("dbPass");

System.out.println(request.getParameter("no"));
Integer no = Integer.valueOf(request.getParameter("no"));

GuestbookDao dao = new GuestbookDaoImpl(dbUser, dbPass);
dao.delete(no);

response.sendRedirect("list.jsp");
%>