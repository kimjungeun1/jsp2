<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	//userid="admim@gmail.com"이고 비밀번호는 12345라고 가정해서 임시테스트
		out.print("<script>");
	if(userid.equals("admim@gmail.com")&&password.equals("12345")){
		//인증성공 -> session객체에 필요한 데이터를 애트리뷰트에 저장
		session.setAttribute("user", userid);
		session.setAttribute("sessionId", session.getId());
		out.print("alert('로그인했습니다..');");
		out.print("location.href='home.jsp';");
		
	}else{
		//인증실패 
		out.print("alert('로그인 계정 정보가 틀립니다.');");
		out.print("location.href='loginForm.jsp';");
	}
		out.print("</script>");

%>