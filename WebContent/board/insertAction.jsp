<%@page import="board.vo.Freeboard"%>
<%@page import="board.dao.FreeboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<%  
request.setCharacterEncoding("UTF-8");

String subject = request.getParameter("subject");
String writer = request.getParameter("writer");
String password = request.getParameter("password");
String content = request.getParameter("content");
String ip = request.getRemoteAddr();


FreeboardDao dao = FreeboardDao.getInstance();
 /* Freeboard bean = Freeboard.builder()
			.writer("김땡땡").subject("글쓰기 테스트").content("잘되나요??").password("1212").build(); */

	Freeboard bean =
			new Freeboard(0,writer,password,subject,content,0,null,ip,0);
	//new Freeboard(0,"김영떙","1242","그냥테스트","잘되나요?",0,null,null,0);
	dao.insert(bean);
	response.sendRedirect("listAction.jsp");
	%>
</body>
</html>