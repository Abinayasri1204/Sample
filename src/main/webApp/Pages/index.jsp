<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
   <title>Student Form</title>
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-color: #E3F2FD; 
        text-align: center;
        padding: 60px;
    }

    h1 {
        color: #1A237E; /* Indigo */
        font-size: 36px;
        margin-bottom: 30px;
    }

    form {
        display: inline-block;
        padding: 35px 45px;
        background-color: #FFFFFF;
        border-radius: 18px;
        box-shadow: 0 12px 28px rgba(0, 0, 0, 0.15);
    }

    label {
        display: block;
        text-align: left;
        margin: 15px 0 6px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"],
    #age {
        width: 270px;
        padding: 14px;
        margin-bottom: 20px;
        border-radius: 10px;
        border: 2px solid #5C6BC0;
        font-size: 15px;
        outline: none;
        transition: 0.3s ease;
    }

    input[type="text"]:focus,
    #age:focus {
        border-color: #3F51B5;
        box-shadow: 0 0 8px #9FA8DA;
    }

    button {
        padding: 14px 32px;
        background-color: #BA68C8;
        color: #FFFFFF;
        border: none;
        border-radius: 12px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.4s ease;
    }

    button:hover {
        background-color: #8E24AA;
        transform: scale(1.06);
        box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
    }
    .view{
      color:white;
      text-decoration:none;
    }

    .back-button {
        margin-top: 20px;
    }
</style>
   
    
</head>
<body>
    <h1>Student Registration Form</h1>

    <form  method="post" action="submit">
        <label for="name">Name:</label>
        <input type="text" name="name" required />

        <label for="dept">Department</label>
        <input type="text" name="dept" required />
        
        <label for="place">place</label>
        <input type="text" name="place" required />
        
         <label for="age" >Age</label>
        <input type="number" id="age" name="age" required />
        

        <br>
        <button type="submit" value="submit">Submit</button>
        <a href="/students">
       <button type="button" class="view">View</button>
       </a>
    </form>
   
    

</body>
</html>