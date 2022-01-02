package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDBBean {
	private static BoardDBBean instance = new BoardDBBean();
	//.jsp���������� DB�������� BoardDBBeanŬ������ �޼ҵ忡 ���ٽ� �ʿ�
	public static BoardDBBean getInstance(){
		return instance;
	}
	
	private BoardDBBean() {}
	
	//Ŀ�ؼ�Ǯ�κ��� Connection��ü�� ��
	private Connection getConnection() throws Exception {
		Connection conn=null;
		@SuppressWarnings("unused")
		PreparedStatement pstmt=null;
		
		String jdbc_driver = "com.mysql.cj.jdbc.Driver";
		String jdbc_url = "jdbc:mysql://localhost:3306/jspdb?characterEncoding=UTF-8&serverTimezone=UTC";
		
			try{
				Class.forName(jdbc_driver);
				conn=DriverManager.getConnection(jdbc_url, "root", "1234");
			} catch(Exception e){
				e.printStackTrace();
			}
			
			return conn;
	}
	
	// board���̺� ���� �߰�(insert��)<=writePro.jsp���������� ���
	@SuppressWarnings("resource")
	public void insertArticle(BoardDataBean article) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		int number=0;
		String sql="";
		
		try{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select max(num) from board2");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				number=rs.getInt(1)+1;
			else
				number=1;
			
			if (num!=0){
				sql="update board2 set re_step=re+step+1";
				sql +="where ref=? and re_step> ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				pstmt.executeUpdate();
				re_step=re_step+1;
				re_level=re_level+1;
			}else{
				ref=number;
				re_step=0;
				re_level=0;
			}
			// ������ �ۼ�
			sql = "insert into board2(name2,content, reg_date,";
			sql += "ref, re_step, re_level) values(?,?,?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getName2());
			pstmt.setString(2, article.getContent());
			pstmt.setTimestamp(3, article.getReg_date());
			pstmt.setInt(4, ref);
			pstmt.setInt(5, re_step);
			pstmt.setInt(6, re_level);
			
			pstmt.executeUpdate();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if (rs != null) try {rs.close();} catch(SQLException ex) {}
			if (pstmt != null) try {pstmt.close();} catch(SQLException ex) {}
			if (conn != null) try {conn.close();} catch(SQLException ex) {}
		}
	}
	
	//board���̺� ����� ��ü ���� ���� ��(select��)<=list.jsp���� ���
	public int getArticleCount() throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int x=0;
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select count(*) from board2");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if (rs != null) try {rs.close();} catch(SQLException ex) {}
			if (pstmt != null) try {pstmt.close();} catch(SQLException ex) {}
			if (conn != null) try {conn.close();} catch(SQLException ex) {}
		}
		return x;
	}
	
	//���� ���(�������� ��)�� ������(select��) <=list.jsp���� ���
	public List<BoardDataBean> getArticles(int start, int end) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardDataBean> articleList=null;
		try{
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select * from board2 order by ref desc, re_step asc limit ?,?");
			pstmt.setInt(1, start-1);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				articleList = new ArrayList<BoardDataBean>(end);
				do{
					BoardDataBean article = new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setName2(rs.getString("name2"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					
					articleList.add(article);
				}while(rs.next());
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally{
			if (rs != null) try {rs.close();} catch(SQLException ex) {}
			if (pstmt != null) try {pstmt.close();} catch(SQLException ex) {}
			if (conn != null) try {conn.close();} catch(SQLException ex) {}
		}
		return articleList;
	}
	
	
}