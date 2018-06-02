<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<%
	//자바 코드를 작성 할 수 있어요!
	System.out.println("자바 소스");
	//요청한 것을 받아 주세요
	request.setCharacterEncoding("UTF-8");//인코딩 맞춰주기
	String who = request.getParameter("who"); //너는 누구?
	String where = request.getParameter("where"); //여긴 어디?
	String what = request.getParameter("what"); //오늘 뭐먹지?
	String country1 = request.getParameter("country1");
	String country2 = request.getParameter("country2");
	int num1 = Integer.parseInt(request.getParameter("num1"));//kor
	int num2 = Integer.parseInt(request.getParameter("num2"));//kor
	
			
	//System.out.println(who + " " + where + " " + what);//확인용
	//out.println(who + " " + where + " " + what);
%>
<!-- 여기에 주석을 작성할 수 잇어여 -->
<title>넘어오는 데이터를 받아 주는 페이지</title>
<style>
	body{background:darkblue;color:white; font-weight:bold; font-size: 30px;padding:100px 500px;}
	div{background:green;margin:20px; border:3px solid yellow;padding:20px;text-align:center;}
</style>
</head>
<body>
	<h2>넘어 오는 데이터를 받아 주는 페이지</h2>
	너는 <%=who %> 이야~~<br>
	거긴 <%=where %> 야!<br>
	오늘은 <%=what %>를 먹어!!<br>
	<div>
	축구 결과<br>
	
	<%=num1%> : <%=num2%><br>
	<%
		if(num1>num2){%>
			<%=country1 %> 나라가 이겼습니다!
		<%}else if(num1<num2){ %>
			<%=country2 %> 나라가 이겼습니다!
		<%}else{ %>
			비겼습니다!
		<%}%>
	</div>
</body>
</html>