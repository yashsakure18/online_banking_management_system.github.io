<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<style>
    body{
        background: url(https://images.theconversation.com/files/444012/original/file-20220202-15-1ydbqf2.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop) center;
        background-size: cover;
    }
    .welcome{
        display: flex;
        justify-content: space-around;
        align-items: center;
        flex-direction: column;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    h1{
        font-size: 5.4rem;
    }
    a{
        text-decoration: none;
        font-size: 1.6rem;
        margin: 0 1rem;
        font-weight: 500;
    }
    button{
        font-size: 1rem;
        padding: .6rem 1rem;
    }
</style>

<form action="logout.jsp" method="post">
    <div class="welcome">
        <h1>Welcome to Bank</h1>
        <div class="links">
            <a href="profile.html">Profile</a>
            <a href="withdraw.html">Withdraw</a>
            <a href="transfer.html">Transfer</a>
            <a href="check balance.html">Check Balance</a>
        </div>
        <br>
        <br>
        <button type="submit">Log-Out</button>
    </div>
</form>


</body>
</html>