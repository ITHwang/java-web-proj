<!-- 회원가입 창에서 전달받은 회원 정보를 일단 jsp:setProperty 액션 태그를 이용해 useBean 속성에 저장한 후, -->
<!-- jsp:getProperty 액션 태그를 이용해 useBean 속성에 접근하여 값을 출력합니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, sec01.ex01.*"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="sec01.ex02.MemberBean" scope="page" />
<jsp:setProperty name="m" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록 창</title>
</head>
<body>
	<table align="center" width="100%">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="11%">이메일</td>
			<td width="5%">가입일</td>
		</tr>
		<tr align="center">
			<td><jsp:getProperty name="m" property="id"/></td>
			<td><jsp:getProperty name="m" property="pwd"/></td>
			<td><jsp:getProperty name="m" property="name"/></td>
			<td><jsp:getProperty name="m" property="email"/></td>
		</tr>
		<tr height="1" bgcolor="#99ccff">
			<td colspan="5"></td>
		</tr>
	</table>

</body>
</html>
