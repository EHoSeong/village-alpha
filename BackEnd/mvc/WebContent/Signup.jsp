<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>ȸ������/�α���</h2>
	<% request.setCharacterEncoding("euc-kr"); %>
	<jsp:useBean id="Signup" class="mvc.signup" scope="page" />
	
	<HR>
	<h3>ȸ������/�α���</h3><p>
	<jsp:setProperty name="Signup" property="id" param="id" />
	<jsp:setProperty name="Signup" property="pw" param="pw" />
	<jsp:setProperty name="Signup" property="name" param="name" />
	<jsp:setProperty name="Signup" property="email" param="email" />
	<jsp:setProperty name="Signup" property="nickname" param="nickname" />
	<jsp:setProperty name="Signup" property="cellphoneNo" param="cellphoneNo" />
	<jsp:setProperty name="Signup" property="address" param="address" />
	
	<HR>
	<h3>ȸ������/�α���</h3><p>
	ID : <jsp:getProperty name="Signup" property="id" /><BR>
	��й�ȣ : <jsp:getProperty name="Signup" property="pw" /><BR>
	�̸� : <jsp:getProperty name="Signup" property="name" /><BR>
	�̸��� : <jsp:getProperty name="Signup" property="email" /><BR>
	�г��� : <jsp:getProperty name="Signup" property="nickname" /><BR>
	��ȭ��ȣ : <jsp:getProperty name="Signup" property="cellphoneNo" /><BR>
	�����ϴ� ���� : <jsp:getProperty name="Signup" property="address" /><BR>
</body>
</html>