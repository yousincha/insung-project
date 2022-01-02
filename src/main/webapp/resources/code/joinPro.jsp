<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JoinPro</title>
<style>

</style>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<%
	String id=request.getParameter("id");
	String passwd=request.getParameter("passwd");
	String name=request.getParameter("name");
	Timestamp register=new Timestamp(System.currentTimeMillis());
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	String str="";
	
	
	try{
		String url="jdbc:mysql://localhost:3306/test?serverTimezone=UTC";
		String dbId="root";
		String dbPass="1234";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url,dbId,dbPass);
		
		String sql="insert into member values(?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,passwd);
		pstmt.setString(3,name);
		pstmt.setTimestamp(4,register);
		pstmt.executeUpdate();
		str="회원가입이 완료되었습니다.";
	}catch(Exception e){
		e.printStackTrace();
	}
		
%>

<%=str %>
<hr>
<button onclick="location.href='http://localhost:8080/ap/resources/code/login.jsp'">로그인</button>

</body>
</html>