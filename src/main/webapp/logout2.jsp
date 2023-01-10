<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃2</title>
</head>
<body>
	<%
		Enumeration enumeration = session.getAttributeNames();
	
		while(enumeration.hasMoreElements()){
			String sessionName = (String) enumeration.nextElement();
			//session에 올려놓은 세션의 이름 가져오기
			//System.out.println(sessionValue);
			String sessionValue = (String)session.getAttribute(sessionName);
			//System.out.println(sessionValue);
			
		if(sessionValue.equals("tiger")){
			session.removeAttribute(sessionName);
			}
		}
		
		String sessionId = (String) session.getAttribute("memberId");
		
		System.out.println(sessionId);
	%>
	<a href="sessionTest.jsp">세션 테스트</a>
</body>
</html>