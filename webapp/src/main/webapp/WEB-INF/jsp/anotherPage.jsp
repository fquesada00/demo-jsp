<%--
  Created by IntelliJ IDEA.
  User: fquesada
  Date: 14/03/2024
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>This is another page</title>
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

        /* Center content with a card-like container */
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Header styling for the included component */
        header {
            margin-bottom: 20px;
            text-align: center;
        }

        /* Main heading style */
        h1 {
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
<%--        <%@ include file="components/header.jsp" %>--%>
    <jsp:include page="components/header.jsp">
        <jsp:param name="title" value="We are at another"/>
    </jsp:include>
    </header>
    <h1>This is another page</h1>
</div>
</body>
</html>