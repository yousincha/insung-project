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
 
 
       private final String successHtml = "<h1>�α��� �����Դϴ�</h1> \n"  + 
                                         "<a  href=\"logout.jsp\">�α׾ƿ�</a>";
                                                   
%>
 
 
<html>
<head>
</head>
<body>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    Boolean isLogined = (Boolean) session.getAttribute("isLogined");
 
 
    //�α��� �������� ���� Ȯ��
    if (isLogined != null && isLogined) {
        out.println(successHtml);
    } else {
        //�α��� ���°� �ƴ� ���
        //id�� ��й�ȣ�� ��� �Է��ߴ��� ���� Ȯ��
        if (isEmpty(id) || isEmpty(password)) {
            response.sendRedirect("http://localhost:8080/ap/resources/code/login.jsp");
        } else {
            //id�� ��й�ȣ�� ��� �Է��߰� id�� password�� ���ٸ�  �α���ó��
            if (id.equals(password)) {
                session.setAttribute("isLogined", true);
                out.println(successHtml);
            } else { 
                //id�� password�� �������� �ƴϸ� �α��� ���з� ����
                response.sendRedirect("http://localhost:8080/ap/resources/code/login.jsp");
            }
        }
    }
%>
 
 
</body>
</html>


