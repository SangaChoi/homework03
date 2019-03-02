<%@ page contentType="text/html;charset=EUC-KR"%>
<%@ page import="hw03.UserVO" %>
<%@ page import="hw03.UserDao" %>


<%	
		request.setCharacterEncoding("EUC_KR");
		//response.setContentType("text/html;charset=EUC_KR");
		
		String cName=request.getParameter("name");
		String cSex=request.getParameter("sex");
		String cYear=request.getParameter("year");
		String cBirthMonth=request.getParameter("bitrhMonth");
		String cBitrhDay=request.getParameter("birthDay");
		String cOccupation=request.getParameter("occupation");
		String cFirstNumberM=request.getParameter("firstNumberM");
		String cMiddleNumberM=request.getParameter("middleNumberM");
		String cLastNumberM=request.getParameter("lastNumberM");
		
		UserVO userVO=new UserVO();
		userVO.setName(cName);
		userVO.setSex(cSex);
		userVO.setYear(cYear);
		userVO.setBirthMonth(cBirthMonth);
		userVO.setBirthDay(cBitrhDay);
		userVO.setOccupation(cOccupation);
		userVO.setFirstNumberM(cFirstNumberM);
		userVO.setMiddleNumberM(cMiddleNumberM);
		userVO.setLastNumberM(cLastNumberM);
		
		UserDao userDao=new UserDao();
		userDao.addUser(userVO);
%>		
<html>
<head></head>
<body>
<h2>가입 확인</h2>
		
		<%if(userVO.isActive()) {%>
			<%=userVO.getName()%> 님 환영합니다.
			
			<%request.getSession().setAttribute("userVO", userVO);%>
		<%}else {%>
			회원가입 실패
		<%} %>
		
<p><p><a href='/homework03/hw03/findUser.html'>내정보 보기 01</a>
<p><p><a href='/homework03/hw03/findUser.jsp'>내정보 보기 02</a>
</body>
</html>