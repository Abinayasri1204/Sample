<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Students</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #E3F2FD;
            padding: 40px;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            color: #1A237E;
            margin-bottom: 30px;
            text-shadow: 1px 1px #fff;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(0,0,0,0.1);
        }

        th, td {
            border-bottom: 1px solid #e0e0e0;
            padding: 16px;
            font-size: 16px;
            color: #333;
            text-align: center;
        }

        th {
            background: #5C6BC0;
            color: white;
            font-size: 17px;
            letter-spacing: 0.5px;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f0f8ff;
            transition: 0.3s ease;
        }

        a.button, a.action-btn {
            display: inline-block;
            padding: 10px 18px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 8px;
            transition: 0.3s ease;
            font-size: 14px;
        }

        .logout-btn {
            background: linear-gradient(135deg, #BA68C8, #9575CD);
            margin-top: 30px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.15);
        }

        .logout-btn:hover {
            background: linear-gradient(135deg, #7B1FA2, #512DA8);
            transform: scale(1.05);
        }

        .edit-btn {
            background-color: #4CAF50;
        }

        .edit-btn:hover {
            background-color: #388e3c;
        }

        .delete-btn {
            background-color: #f44336;
        }

        .delete-btn:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>

    <h1>Student Records</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Place</th>
                <th>Age</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${students}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.dept}</td>
                    <td>${student.place}</td>
                    <td>${student.age}</td>
                    <td>
                        <a href="/students/edit/${student.id}" class="action-btn edit-btn">Edit</a>
                        <a href="/students/delete/${student.id}" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>
    <a href="/login" class="button logout-btn">Log Out</a>

</body>
</html>
