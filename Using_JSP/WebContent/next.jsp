<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user=request.getParameter("username"); 
session.setAttribute("username",user); 
String email=request.getParameter("email"); 
String pwd=request.getParameter("password"); 
String mobile=request.getParameter("mobile"); 
String address=request.getParameter("address"); 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3333/ganesh?autoReconnect=true&useSSL=false","root","ganesh"); 
Statement st= con.createStatement(); 
int i=st.executeUpdate("insert into details values ('"+user+"','"+email+"','"+pwd+"','"+mobile+"','"+address+"')"); 


%>