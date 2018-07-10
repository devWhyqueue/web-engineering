<!DOCTYPE html>
<html lang="de" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Seminarleiter</title>
  <link rel="stylesheet" href="./css/layout.css">
  <link rel="stylesheet" href="./css/grid.css">
</head>

<body>
  <div id="container">
    <header>
      <a href="index.jsp">  <img src="img/logo.png" alt="Logo" width="50" height="50"></a>
      <h1>Seminarleiter</h1>
    </header>
    <%@include file="navbar.jspf"%>
    <main>
      <h2>Informationen</h2>
      <div id="contentContainer">
        <figure id="seminarleiterBild">
          <img src="img/seminarleiter.png" alt="Seminarleiter" width="75%" height="auto">
          <figcaption>Portrait: Max Muster</figcaption>
        </figure>
        <p>
          <strong>Name: </strong>Max Muster<br>
          <strong>Mail: </strong><a href="mailto:max.muster@example.com">max.muster@example.com</a><br>
          <strong>Telefon: </strong>0123456789
        </p>
      </div>
    </main>
    <%@include file="aside.jspf"%>
    <%@include file="footer.jspf"%>
  </div>
</body>

</html>