<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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
	
	input[type=password] {
 	  width: 300px;
  	  padding: 12px 20px;
	  margin: 8px 0;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	}
	
	input[type=submit] {
  		  width: 340px;
		  background-color: #ffc107;
		  padding: 12px 20px;
		  border: none;
		  border-radius: 4px;
		}
		
		
	input[type=reset] {
  		  width: 340px;
  		  	  margin: 8px 0;
  		  
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
	<form action="loginPro.jsp">
		<input type="text" name="id" maxlength="10" placeholder="���̵�"><br>
		<input type="password" name="passwd" maxlength="10" placeholder="��й�ȣ"><br><br>
		<input type="submit" value="�α���"><br>
		<input type="reset" value="���"><br><br>
		<a href="http://localhost:8080/ap/resources/code/join.jsp">ȸ������</a>
	</form>

</body>
</html>