<!DOCTYPE html>
<html lang="de" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Seminarübersicht</title>
  <link rel="stylesheet" href="./css/layout.css">
  <link rel="stylesheet" href="./css/dashboard.css">
</head>

<body>
  <div id="container">
    <header>
      <a href="index.jsp">  <img src="img/logo.png" alt="Logo" width="50" height="50"></a>
      <h1>Dashboard</h1>
    </header>
    <main>
      <ul id="boxes">
        <li><a href="seminarliste.jsp">Seminarübersicht</a></li>
        <li><a href="html-seminar.jsp">HTML-Seminar</a></li>
        <li><a href="seminarleiter.jsp">Seminarleiter</a></li>
        <li><a href="neues-seminar.jsp">Neues Seminar</a></li>
        <li><a id="addKachel" href="#">+</a></li>
      </ul>
    </main>
    <footer>
      <h4>Footer</h4>
      <small>Copyright to devWhyqueue</small>
    </footer>
  </div>
  <!-- scripts -->
  <script src="./js/dashboard.js"></script>
</body>

</html>