<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #e0f7fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-box {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            width: 380px;
        }

        h2 {
            text-align: center;
            color: #00695c;
            margin-bottom: 25px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #4db6ac;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        button:hover {
            background-color: #26a69a;
        }

        .back-link {
            text-align: center;
            display: block;
            margin-top: 18px;
            color: #00695c;
            font-weight: bold;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="form-box">
    <h2>Update Student</h2>
    <form action="/students/update" method="post">
        <input type="hidden" name="id" value="${student.id}" />

        <label>Name:</label>
        <input type="text" name="name" value="${student.name}" required />

        <label>Department:</label>
        <input type="text" name="dept" value="${student.dept}" required />

        <label>Place:</label>
        <input type="text" name="place" value="${student.place}" required />

        <label>Age:</label>
        <input type="text" name="age" value="${student.age}" required />

        <button type="submit">Update</button>
    </form>
    <a href="/students" class="back-link">← Back to Student List</a>
</div>

</body>
</html>
