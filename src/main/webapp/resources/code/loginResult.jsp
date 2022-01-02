<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
   String id=request.getParameter("id");
   String passwd=request.getParameter("passwd");
   
   Connection conn=null;
   PreparedStatement pstmt=null;
   ResultSet rs=null;
   try {
      String url="jdbc:mysql://localhost:3306/test?serverTimezone=UTC";
      String dbId="root";
      String dbPass="1234";         
      Class.forName("com.mysql.cj.jdbc.Driver");
      conn=DriverManager.getConnection(url,dbId,dbPass);
      
      
      if(rs.next()) {
         String rId=rs.getString("id");
         String rPasswd=rs.getString("passwd");
         if(id.equals(rId)&&passwd.equals(rPasswd)) {
            response.sendRedirect("http://localhost:8080/ap");
         }else
            out.println("패스워드가 틀렸습니다.");
          
      }else
         out.println("아이디가 틀렸습니다.");
   }catch(Exception e){
      e.printStackTrace();
   }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>

</body>
</html>