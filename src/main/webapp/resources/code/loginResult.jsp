<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%!
      private boolean isEmpty(String str){
          if(str == null || str.trim().equals("")){
             return true; 
            } 
      
            return false; 
      }
 
 
       private final String successHtml = "<h1>로그인 상태입니다</h1> \n"  + 
                                         "<a  href=\"logout.jsp\">로그아웃</a>";
                                                   
%>
 
 
<html>
<head>
</head>
<body>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    Boolean isLogined = (Boolean) session.getAttribute("isLogined");
 
 
    //로그인 상태인지 여부 확인
    if (isLogined != null && isLogined) {
        out.println(successHtml);
    } else {
        //로그인 상태가 아닌 경우
        //id와 비밀번호를 모두 입력했는지 여부 확인
        if (isEmpty(id) || isEmpty(password)) {
            response.sendRedirect("http://localhost:8080/ap/resources/code/login.jsp");
        } else {
            //id와 비밀번호를 모두 입력했고 id와 password가 같다면  로그인처리
            if (id.equals(password)) {
                session.setAttribute("isLogined", true);
                out.println(successHtml);
            } else { 
                //id와 password가 같은값이 아니면 로그인 실패로 간주
                response.sendRedirect("http://localhost:8080/ap/resources/code/login.jsp");
            }
        }
    }
%>
 
 
</body>
</html>


