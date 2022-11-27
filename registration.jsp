<%@page import = "java.sql.*"%>
<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String user_id=request.getParameter("user");
String password=request.getParameter("password");
String phn_no=request.getParameter("phn_ano");
String email=request.getParameter("email");
String nationality=request.getParameter("nationality");
String address=request.getParameter("address");
String sex=request.getParameter("sex");
String DOB=request.getParameter("DOB");


try{    
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","yash");  
Statement stmt=con.createStatement();  
String sql = "insert into banking values('"+fname+"','"+lname+"','"+user_id+"','"+password+"',"+phn_no+",'"+email+"','"+nationality+"','"+address+"','"+sex+"',"+DOB+")";
stmt.executeUpdate(sql);
out.print("<html><body bgcolor='sky blue'>");
out.print("<H1>ONLINE BANKING APPLICATION</H1>");
out.print("<h2>Record inserted sucessfully</h2>");
%>
<a href="index.html">login here</a>

<%
con.close();  
 }catch(Exception e){out.print(e);}  

%>