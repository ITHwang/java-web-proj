<!-- setProperty 액선 태그의 property 속성에 *를 지정하면 jsp 페이지에서 자동으로 매개변수 이름과 속성 이름을 비교한 후, -->
<!-- 같은 이름의 속성에 매개변수 값을 알아서 설정해줍니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, sec01.ex01.*"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="m" class="sec01.ex02.MemberBean" scope="page" />
<jsp:setProperty name="m" property="*"/>

<%
MemberDAO memberDAO = new MemberDAO();
memberDAO.addMember(m);
List membersList = memberDAO.listMembers();
%>

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
		<%
			if(membersList.size() == 0){
		%>
		<tr>
			<td colspan="5">
				<p align="center"><b><span style="font-size:9pt;">등록된 회원이 없습니다.</span></b></p>
			</td>
		</tr>
<%
		}else{
			for (int i = 0; i < membersList.size(); i++){
				MemberBean bean = (MemberBean) membersList.get(i);
%>
				<tr align="center">
					<td><%=bean.getId() %></td>
					<td><%=bean.getPwd() %></td>
					<td><%=bean.getName() %></td>
					<td><%=bean.getEmail() %></td>
					<td><%=bean.getJoinDate() %></td>
				</tr>
<%
			}
		}
%>
		<tr height="1" bgcolor="#99ccff">
			<td colspan="5"></td>
		</tr>
	</table>

</body>
</html>
