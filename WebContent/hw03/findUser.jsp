<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="hw03.UserDao" %>
<%@ page import="hw03.UserVO" %>


<%
		request.setCharacterEncoding("EUC_KR");
		//res.setContentType("text/html;charset=EUC_KR");
		
		String cName=request.getParameter("name");
		
		if(cName==null) {
			//session=request.getSession();
			cName=((UserVO)session.getAttribute("userVO")).getName();
					
		}
		
		UserDao userDao=new UserDao();
		UserVO userVO=userDao.findUser(cName);
%>		
		
<html>
<head></head>
<body>
<h2>������ ����</h2>
		
		<%if(userVO.isActive()) {%>
			�̸� : <%=userVO.getName()%><br/>
			���� : <%=userVO.getSex()%><br/>
			������� : <%=userVO.getYear()%>�� <%=userVO.getBirthMonth()%>�� <%=userVO.getBirthDay()%>��<br/>
			���� : <%=userVO.getOccupation()%><br/>
			�޴��� : <%=userVO.getFirstNumberM()+" "+userVO.getMiddleNumberM()+" "+userVO.getLastNumberM()%><br/>
		<%}else{%>
			��Ȯ�� �̸��� �Է��ϼ���.
		<%} %>
	
		
</body>
</html>