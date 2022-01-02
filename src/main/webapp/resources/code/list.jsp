<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.BoardDataBean"%>
<%@ page import = "board.BoardDBBean"%>
<%@ page import = "java.util.List"%>
<%@ page import = "java.text.SimpleDateFormat"%>

<%!
	int pageSize = 1000;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
	String pageNum = request.getParameter("pageNum");

	if(pageNum == null){
		pageNum = "1";
	}
	
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	int count = 0;
	int number = 0;
	List<BoardDataBean> articleList = null;
	
	BoardDBBean dbPro = BoardDBBean.getInstance();
	count = dbPro.getArticleCount();
	
	if(count > 0){
		articleList = dbPro.getArticles(startRow, pageSize);
	}
	number = count-(currentPage-1)*pageSize;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>

table.ds {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.ds thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.ds tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.ds td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
<title>List</title>
</head>
<body>
<h3>받은 메시지</h3>
<p>(도착한 메시지 수:<%=count %>)</p>

<% if (count == 0) {%>

<table>
	<tr>
		<td align="center">
			게시판에 저장된 글이 없습니다.
		</td>
</table>
<% } else { %>
<table border="1" class="ds">
	<tr height="30" bgcolor="#ffcc00">
		<td align="center" width="50"><b>번 호</b></td>
		<td align="center" width="250"><b>Message</b></td>
		<td align="center" width="100"><b>From</b></td>
		<td align="center" width="150"><b>작성일</b></td>
	</tr>
<%
	for(int i = 0; i < articleList.size(); i++){
		BoardDataBean article = articleList.get(i);	
%>
	<tr height="30">
		<td width="50"> <%=number-- %></td>
		
		<td width="100" align="left">
							<%=article.getContent() %>
		</td>
		<td width="250" align="left">
					<%=article.getName2() %>
		</td>
		<td width="150"><%=sdf.format(article.getReg_date()) %></td>
	</tr>
<%} %>
</table>
<%} %>
</body>
</html>