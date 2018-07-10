<%--
  Created by IntelliJ IDEA.
  User: kvwl
  Date: 10.07.2018
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<html>
<head>
    <link rel="stylesheet" href="./css/layout.css">
    <title>Seminar erstellt!</title>
</head>
<body>
<header>
    <a href="index.jsp"> <img src="img/logo.png" alt="Logo" width="50" height="50"></a>
    <h1>Seminar erfolgreich angelegt!</h1>
</header>
<%@include file="navbar.jspf" %>
<main style="width: 75%">
    <h2>Das Seminar mit folgenden Daten wurde erfolgreich angelegt:</h2>
    <% Map<String, String[]> parameters = request.getParameterMap();
        for (String parameter : parameters.keySet()) {
            if (!parameter.equals("anlegen") && !parameters.get(parameter)[0].equals(""))
                out.println("<p>" + parameter + ": " + parameters.get(parameter)[0] + "</p>");
        }%>
</main>
<%@include file="aside.jspf" %>
<%@include file="footer.jspf" %>
</body>
</html>
