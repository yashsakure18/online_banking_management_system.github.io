<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<%if((request.getParameter("pin")=="")||(request.getParameter("name")=="")||(request.getParameter("account")=="")){
%>
    <script>
        alert("One of the entry is empty!");
        window.location = "withdraw.html";
    </script>
    <%
}
else{
    %>
    <script>
        alert("Balance is 5000");
        window.location = "welcome.jsp";
    </script>
    <%
}
%>

</body>
</html>