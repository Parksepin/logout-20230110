<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 중 테스트</title>
</head>
<body>
	<%
		String sessionId = (String) session.getAttribute("memberId");
	
		//System.out.println(sessionId);
		
		if(sessionId == null){
			out.print("로그인 중 아님");
		}else{
			out.print(sessionId + "님 로그인 중임");
		}
		
		int sTime = session.getMaxInactiveInterval();
		System.out.println("기본값 : "+sTime);
		session.setMaxInactiveInterval(3600);
		int sTime2 = session.getMaxInactiveInterval();
		System.out.println("변경후 : "+sTime2);
	%>
	<br>
	<a href="logout.jsp">로그아웃</a>
	<br>
	<a href="logout2.jsp">로그아웃2</a>
</body>
</html>