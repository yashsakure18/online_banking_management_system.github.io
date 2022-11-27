<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%@ page import = "java.sql.*"%>

<%
String userid=request.getParameter("user");
String password=request.getParameter("password"); 
try{    
    Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","yash");  
    Statement stmt=con.createStatement();  
    String sql = "SELECT * from banking ";
    ResultSet rs=stmt.executeQuery(sql);
    if(rs.next() == true){
        String address = rs.getString("address");

        session.setAttribute("address",address);
        response.sendRedirect("welcome.jsp");
    }
    else{
        response.sendRedirect("index.html");
    }
    
    con.close();  
     }catch(Exception e){out.print(e);}
%>
</body>
</html>