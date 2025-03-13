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
    <title>${title}</title>
    <style>
        /* Reset default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body with a soft gradient background and padding */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            color: #333;
            padding: 20px;
        }

        /* Centered container for a card-like appearance */
        .container {
            max-width: 800px;
            margin: 0 auto;
            background: #fafafa;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Header styling to wrap the included header */
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

        /* Paragraph styling */
        p {
            margin: 10px 0;
            font-size: 1.1em;
        }

        /* Strong text styling for labels */
        p strong {
            color: #555;
        }
    </style>
</head>
<body>
<div class="container">
    <header>
<%--        <%@ include file="components/header.jsp" %>--%>
    <jsp:include page="components/header.jsp">
        <jsp:param name="title" value="We are at dynamic"/>
    </jsp:include>
    </header>
    <h1>${title}</h1>
    <p><strong>First Name:</strong> <c:out value="${user.firstName}" /> </p>
    <p><strong>Last Name:</strong> ${user.lastName}</p>
    <p><strong>Age:</strong> ${user.age}</p>
    <p><strong>Age x 2:</strong> ${2 * user.age}</p>
</div>
<%--<script>
    if (${user.age > 1}) { // This will evaluate to if (24 > 1) in the client which is not necessary. The correct way is to use c:if
        alert("You are older than 1 year old");
    }
</script>--%>
</body>
</html>