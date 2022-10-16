<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.0.js"></script>
<script>
    $(function() {        
        // Geolocation API에 액세스할 수 있는지를 확인
        if (navigator.geolocation) {
            //위치 정보를 얻기
            navigator.geolocation.getCurrentPosition (function(pos) {
                $('#latitude').html(pos.coords.latitude);     // 위도
                $('#longitude').html(pos.coords.longitude); // 경도
            });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
    });
    navigator.geolocation.getCurrentPosition(function(pos) {
        var latitude = pos.coords.latitude;
        var longitude = pos.coords.longitude;
        alert("현재 위치는 : " + latitude + ", "+ longitude);
    });
</script>
</head>
<body>
	<% request.setCharacterEncoding("euc-kr"); %>
	<jsp:useBean id="Signup" class="login.login" scope="page" />

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
	<h3>회원정보 출력</h3><p>
	ID : <jsp:getProperty name="Signup" property="id" /><BR>
	비밀번호 : <jsp:getProperty name="Signup" property="pw" /><BR>
	이름 : <jsp:getProperty name="Signup" property="name" /><BR>
	이메일 : <jsp:getProperty name="Signup" property="email" /><BR>
	닉네임 : <jsp:getProperty name="Signup" property="nickname" /><BR>
	전화번호 : <jsp:getProperty name="Signup" property="cellphoneNo" /><BR>
	거주하는 동네 : <jsp:getProperty name="Signup" property="address" /><BR>
	<ul>
		<li>위도:<span id="latitude"></span></li>
		<li>경도:<span id="longitude"></span></li>
	</ul>
</body>
</html>





