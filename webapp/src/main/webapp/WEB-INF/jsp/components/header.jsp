<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    /* Styling for the header container */
    #header {
        background-color: #4a90e2;
        padding: 20px;
        color: #fff;
        text-align: center;
    }

    /* Style for the main header title */
    #header h1 {
        margin-bottom: 10px;
        font-size: 2em;
    }

    /* Navigation styling */
    #header nav {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 15px; /* adds spacing between links */
    }

    /* Navigation link styling */
    #header nav a {
        color: #fff;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    /* Hover effect for navigation links */
    #header nav a:hover {
        color: #cce5ff;
    }
</style>
<div id="header">
<%--    <h1>My Simple Header</h1>--%>
    <h1>${param.title}</h1>
    <nav>
        <a href="<c:url value='/'/>">Home</a>
        <a href="<c:url value='/other'/>">Other</a>
        <a href="<c:url value='/dynamic'/>">Dynamic</a>
        <a href="<c:url value='/tag-lib'/>">Tag Lib</a>
        <a href="<c:url value='/users'/>">Users</a>
        <a href="<c:url value='/addUser'/>">Add User</a>
    </nav>
</div>