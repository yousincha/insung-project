
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<style>
   form{
       text-align: center;
       margin:0 auto;
   }

   .border{
       margin:0 auto;
       width:400px;
       height:500px;
       border:1px solid #000;
       border-radius: 10%;
   }

   img{
       margin-top:20px;
       margin-bottom:80px;
   }

   input{
      width:200px;
      height:50px;
   }
	</style>
	</head>
	<body>
    	<form action ="home.jsp" method="post">
        
            	<h1>로그인</h1>
            	<img src ="resources/assets/img/sun.png" width="100dp" height="100dp" ><br>  	
                <input type="text"  name="id" id="id" placeholder="아이디를 입력해주세요." ><br>
            	<input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요."><br><br>
            	<input type="submit" value="로그인">

    	</form>
    	<form action = "joinform.jsp" method="post">
    	            	<input type="submit" value="회원가입">
    	</form>
    	 
	</body>
</html>