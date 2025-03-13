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
    <title>Using Tag lib</title>
    <style>
        /* Reset default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body with gradient background and padding */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            color: #333;
            padding: 20px;
        }

        /* Container to center the content and add a card-like style */
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fafafa;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Header style for a consistent look */
        header {
            background: #fff;
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            margin-bottom: 20px;
        }

        /* Main heading style */
        h1 {
            text-align: center;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        /* Style for individual user details */
        .user-detail {
            background: #fff;
            margin: 15px 0;
            padding: 15px;
            border-radius: 6px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }

        .user-detail p {
            margin-bottom: 8px;
        }

        /* Style for the message when no users exist */
        .no-users {
            text-align: center;
            font-size: 1.2em;
            color: #777;
        }

        /* Divider style */
        .divider {
            border-top: 1px dashed #ccc;
            margin: 10px 0;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
<%--        <%@ include file="components/header.jsp" %>--%>
    <jsp:include page="components/header.jsp">
        <jsp:param name="title" value="We are at users"/>
    </jsp:include>
    </header>

    <h1>Users Page</h1>

    <c:if test="${empty users}">
        <p class="no-users">No users found</p>
    </c:if>

    <c:forEach var="user" items="${users}">
        <div class="user-detail">
            <p><strong>First Name:</strong> <c:out value="${user.firstName}" /></p>
            <p><strong>Last Name:</strong> <c:out value="${user.lastName}" /></p>
            <p><strong>Age:</strong> <c:out value="${user.age}" /></p>
            <div class="divider"></div>
        </div>
    </c:forEach>
</div>
</body>
</html>