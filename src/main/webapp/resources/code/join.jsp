<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	input[type=text] {
 	  width: 300px;
  	  padding: 12px 20px;
	  margin: 8px 0;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	}
	
	input[type=button] {
 	  width: 100px;
	  margin: 8px 0;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	}
	
	input[type=password] {
 	  width: 300px;
  	  padding: 12px 20px;
	  margin: 8px 0;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	}
	
	
	input[type=submit] {
  		  width: 300px;
		  background-color: #ffc107;
		  padding: 12px 20px;
		  border: none;
		  border-radius: 4px;
		}
		
	fieldset {
		width: 350px;
		background-color: #e6e6ff;
	}
	
	
</style>
</head>
<body>
<h1>INSUNG</h1>
	<form action="joinPro.jsp">
		<b>아이디</b><br> 
		<input type="text" name="id" maxlength="10" placeholder="아이디">
		<input type="button" name="idCheck" value="중복확인"><br>
		<b>비밀번호</b><br>
		<input type="password" name="passwd" maxlength="10" placeholder="비밀번호"><br>
		<b>이름</b><br>
		<input type="text" name="name" maxlength="10" placeholder="이름"><br><br>
			<input type="submit" value="가입완료">
	</form>
		
</body>
</html>