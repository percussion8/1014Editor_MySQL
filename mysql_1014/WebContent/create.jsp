<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language = "java" %>
<%@ page import = "java.sql.*" %>

<%
Connection conn = null;
Statement st = null;
ResultSet rt = null;

//jdbc-odbc driver 등록
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
} catch(ClassNotFoundException e){
	out.println(e.getMessage());
}

String dbURL = "jdbc:mysql://localhost:3306/member?useSSL=false";
String dbId = "root";
String dbPassword = "1234";
System.out.println("1)확인");

//DB와 연결
try{
	System.out.println("2)확인");
	conn = DriverManager.getConnection(dbURL, dbId, dbPassword);
	System.out.println("3) db연결 성공");
} catch(SQLException e){
	out.println("<script>alert('가입처리 되지 않았습니다. 다시 시도해주세요.')</script>");
}


%>