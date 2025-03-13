<%--
  Created by IntelliJ IDEA.
  User: fquesada
  Date: 14/03/2024
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User</title>
    <style>
        /* Reset default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Basic body styling with a soft gradient background */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            color: #333;
            padding: 20px;
        }

        /* Centered container for a card-like appearance */
        .container {
            max-width: 500px;
            margin: 0 auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Header styling for the included header component */
        header {
            text-align: center;
            margin-bottom: 20px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        /* Main title styling */
        h1 {
            font-size: 2em;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Form styling */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
        }

        /* Styling for the submit button */
        input[type="submit"] {
            margin-top: 20px;
            padding: 10px;
            background-color: #4a90e2;
            border: none;
            border-radius: 4px;
            color: #fff;
            font-size: 1em;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #4178c0;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
<%--        <%@ include file="components/header.jsp" %>--%>
    <jsp:include page="components/header.jsp">
        <jsp:param name="title" value="We are at add user"/>
    </jsp:include>
    </header>
    <h1>Add User Page</h1>
    <form action="<c:url value='/addUser'/>" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required>

        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>

        <input type="submit" value="Add User">
    </form>
</div>
</body>
</html>