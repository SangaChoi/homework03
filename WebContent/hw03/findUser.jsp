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
<h2>내정보 보기</h2>
		
		<%if(userVO.isActive()) {%>
			이름 : <%=userVO.getName()%><br/>
			성별 : <%=userVO.getSex()%><br/>
			생년월일 : <%=userVO.getYear()%>년 <%=userVO.getBirthMonth()%>월 <%=userVO.getBirthDay()%>일<br/>
			직업 : <%=userVO.getOccupation()%><br/>
			휴대폰 : <%=userVO.getFirstNumberM()+" "+userVO.getMiddleNumberM()+" "+userVO.getLastNumberM()%><br/>
		<%}else{%>
			정확한 이름을 입력하세요.
		<%} %>
	
		
</body>
</html>