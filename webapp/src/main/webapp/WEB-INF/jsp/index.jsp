<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Styled JSP Page</title>
    <style>
        /* Reset some default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Set a nice gradient background and basic font properties */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            color: #333;
            padding: 20px;
        }

        /* Center the content and add a container with a drop shadow */
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fafafa;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for the header */
        header {
            background: #fff;
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            margin-bottom: 20px;
        }

        /* Style the h2 text */
        h2 {
            text-align: center;
            font-size: 2em;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
<%--        <%@ include file="components/header.jsp" %>--%>
        <jsp:include page="components/header.jsp">
            <jsp:param name="title" value="We are at index"/>
        </jsp:include>
    </header>

    <h2>Hello World!</h2>
</div>
</body>
</html>