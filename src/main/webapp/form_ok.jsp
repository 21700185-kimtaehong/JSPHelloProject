<%@ page import="com.sun.org.apache.xpath.internal.operations.Variable"  %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-05
  Time: 오후 5:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("sname");
  String email = request.getParameter("email");
  String RC = request.getParameter("RC");
//  String[] classes  = request.getParameterValues("classes");
  String department = request.getParameter("department");
  String birthday = request.getParameter("birthday");
  String hobby = request.getParameter("hobby");
  String speciality = request.getParameter("speciality");
  String nsemester = request.getParameter("nsemester");
  String semessage = request.getParameter("semessage");
  String isCheck = request.getParameter("isCheck");
  String isCheckMSG = "";
  if(isCheck.equals("1")) isCheckMSG = "Check me out 체크됨! ";
%>
<html>
<head>
    <title>Title</title>
</head>

<body>
  <div>
    이름: <%=name%> <br />
    이메일: <%=email%> <br />
    소속RC: <%=RC%> <br />
    이번학기 수강과목:
    <%
      String[] classes  = request.getParameterValues("classes");
      if (classes != null){
        for (int i=0; i < classes.length; i++) {
    %>
      <%= classes[i] %>
    <%
        }
      }
    %> <br />
    소속학부: <%=department%> <br />
    생일: <%=birthday%> <br />
    취미: <%=hobby%> <br />
    특기: <%=speciality%> <br />
    다음학기 수강희망 과목: <%=nsemester%> <br />
    수강희망 이유: <%=semessage%> <br />
    <%=isCheckMSG%> <br />
  </div>
</body>
</html>
