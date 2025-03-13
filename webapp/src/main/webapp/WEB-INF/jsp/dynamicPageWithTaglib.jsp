<%--
  Created by IntelliJ IDEA.
  User: fquesada
  Date: 14/03/2024
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        /* Overall body styling with a gradient background */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            color: #333;
            padding: 20px;
        }

        /* Container for the content for a card-like appearance */
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fafafa;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Header styling */
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

        /* Styling for user information */
        .user-info {
            background: #fff;
            padding: 15px;
            margin: 15px 0;
            border-radius: 6px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }
        .user-info p {
            margin-bottom: 10px;
        }

        /* Styling for friends list */
        .friends {
            background: #fff;
            padding: 15px;
            margin: 15px 0;
            border-radius: 6px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
        }
        .friends ul {
            list-style: none;
            padding-left: 0;
            margin-top: 10px;
        }
        .friends li {
            padding: 8px 0;
            border-bottom: 1px dashed #ccc;
        }
        .friends li:last-child {
            border-bottom: none;
        }

        /* Message style for no friends found */
        .message {
            text-align: center;
            color: #777;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
<%--        <%@ include file="components/header.jsp" %>--%>
    <jsp:include page="components/header.jsp">
        <jsp:param name="title" value="We are at taglib"/>
    </jsp:include>
    </header>
    <h1>Page Using TagLib</h1>

    <div class="user-info">
        <p><strong>First Name:</strong> <c:out value="${user.firstName}" /></p>
        <p><strong>Last Name:</strong> <c:out value="${user.lastName}" /></p>
    </div>

    <c:if test="${user.friends.size() > 0}">
        <div class="friends">
            <p>You have friends :)</p>
            <ul>
                <c:forEach var="friend" items="${user.friends}">
                    <li><c:out value="${friend}" /></li>
                </c:forEach>
            </ul>
        </div>
    </c:if>
    <c:if test="${user.friends.size() == 0}">
        <p class="message">You don't have friends :(</p>
    </c:if>
</div>
</body>
</html>