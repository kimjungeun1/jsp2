<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	//List<String> list = (List<String>)request.getAttrebute("list")
	//er은 gerAttribute와 형변환을 합니다.
%> 
<h3>EL출력</h3>
String 애트리뷰트 :<c:out value="${string }"/> <!--String은 애트리뷰트 이름  -->
age 애트리뷰트:<c:out value="${age }"/>
user 애트리뷰트: <c:out value="${user }"/> <br>
user 애트리뷰트 age 프로퍼티 : <c:out value ="${user.age }"/><br>
user 애트리뷰트 name 프로퍼티 : <c:out value ="${user.name}"/><br>
list 애트리뷰트 : <c:out value="${list }"></c:out>
list 애트리뷰트의 get(0) : <c:out value="${list[0] }"></c:out><!--list.get(0)  -->
list 애트리뷰트의 get(1): <c:out value="${list[1] }"></c:out>
list 애트리뷰트의 get(2) : <c:out value="${list[2] }"></c:out>
<!--c:forEach는 배열 또는 리스트를 다룰때 items 속성 지정  -->
<ul>
<c:forEach var="item" items="${list }">
<li><c:out value="${item }"></c:out>
</li>
 </c:forEach>
</ul>

</body>
</html>