<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
  
<style>
    body {
        background: linear-gradient(135deg, #FFDEE9, #B5FFFC); 
        font-family: 'Poppins', sans-serif;
        text-align: center;
        padding: 80px;
        color: #333;
        min-height: 100vh;
    }

    h1 {
        color: #6A1B9A; /* Deeper purple */
        font-size: 36px;
        margin-bottom: 40px;
        text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
    }

    form {
        display: inline-block;
        padding: 35px 50px;
        background: linear-gradient(135deg, #ffffff, #fef5e7); 
        border-radius: 24px;
        box-shadow: 0 12px 32px rgba(0, 0, 0, 0.15);
    }

    input[type="text"],
    input[type="password"] {
        width: 280px;
        padding: 14px;
        margin: 14px 0;
        border-radius: 12px;
        border: 2px solid transparent;
        font-size: 15px;
        outline: none;
        background: linear-gradient(#fff, #fff) padding-box,
                    linear-gradient(to right, #F48FB1, #81D4FA) border-box;
        transition: all 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        box-shadow: 0 0 12px #81D4FA;
        border-color: #4FC3F7;
    }

    button {
        padding: 14px 36px;
        background: linear-gradient(135deg, #FF6B6B, #FFD93D);
        color: #fff;
        border: none;
        border-radius: 14px;
        font-size: 17px;
        font-weight: 600;
        cursor: pointer;
        box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        transition: all 0.3s ease;
    }

    button:hover {
        background: linear-gradient(135deg, #FF4081, #FFC107);
        transform: translateY(-2px) scale(1.05);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    }
</style>


   
</head>
<body>

    <h1>Login Page</h1>

    <form method="post" action="/login">
        <input type="text" name="username" placeholder="Username" required /><br>
        <input type="password" name="password" placeholder="Password" required /><br>
        <button type="submit">Login</button>
    </form>

</body>
</html>