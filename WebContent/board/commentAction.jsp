<%@page import="board.vo.Comment"%>
<%@page import="board.dao.CommentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%	
    	//댓글을 추가하고 삭제하는 dao메소드를 실행하는  Action클래스
    	//   	ㄴ댓글 삭제할 때에는 del 파라미터 전달합니다.
    	request.setCharacterEncoding("UTF-8");
    	CommentDao dao = CommentDao.getInstance();
    	String del = request.getParameter("del");
    	if(del !=null &&del.equals("y")){ //del이 null일때는 첫번째 조건 false이므로 두번째 조건 equals 메소드 실행 안합니다.
    		//댓글 삭제
    		int cmtidx = Integer.parseInt(request.getParameter("cmtidx"));
    		int idx = Integer.parseInt(request.getParameter("idx"));
    		dao.delete(cmtidx);
    		response.sendRedirect("detailAction.jsp?idx="+idx+"&page="+request.getParameter("page"));
    	}else{
    		//댓글 등록(추가)
    	//댓글을 등록하기 위해 mref컬럼 값 꼭 필요합니다.
    	int mref = Integer.parseInt(request.getParameter("mref"));
    	String writer = request.getParameter("writer");
    	String content= request.getParameter("content");
    	String ip = request.getRemoteAddr();

    	Comment vo = new Comment(0,mref,writer,content,null,ip,0);
    	dao.insert(vo);
    	//댓글 등록 확인하기 위해 글 상세보기 페이지로 이동
    	response.sendRedirect("detailAction.jsp?idx="+mref+"&page="+request.getParameter("page"));
    	}
    %>