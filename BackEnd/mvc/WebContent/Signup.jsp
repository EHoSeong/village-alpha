<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입/로그인</h2>
	<% request.setCharacterEncoding("euc-kr"); %>
	<jsp:useBean id="Signup" class="mvc.signup" scope="page" />
	
	<HR>
	<h3>회원가입/로그인</h3><p>
	<jsp:setProperty name="Signup" property="id" param="id" />
	<jsp:setProperty name="Signup" property="pw" param="pw" />
	<jsp:setProperty name="Signup" property="name" param="name" />
	<jsp:setProperty name="Signup" property="email" param="email" />
	<jsp:setProperty name="Signup" property="nickname" param="nickname" />
	<jsp:setProperty name="Signup" property="cellphoneNo" param="cellphoneNo" />
	<jsp:setProperty name="Signup" property="address" param="address" />
	
	<HR>
	<h3>회원가입/로그인</h3><p>
	ID : <jsp:getProperty name="Signup" property="id" /><BR>
	비밀번호 : <jsp:getProperty name="Signup" property="pw" /><BR>
	이름 : <jsp:getProperty name="Signup" property="name" /><BR>
	이메일 : <jsp:getProperty name="Signup" property="email" /><BR>
	닉네임 : <jsp:getProperty name="Signup" property="nickname" /><BR>
	전화번호 : <jsp:getProperty name="Signup" property="cellphoneNo" /><BR>
	거주하는 동네 : <jsp:getProperty name="Signup" property="address" /><BR>
</body>
</html>