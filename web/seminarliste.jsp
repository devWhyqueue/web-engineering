<!DOCTYPE html>
<html lang="de" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Seminarübersicht</title>
  <link rel="stylesheet" href="./css/layout.css">
  <link rel="stylesheet" href="./css/flexbox.css">
</head>

<body>
  <div id="container">
    <header>
      <a href="index.jsp">  <img src="img/logo.png" alt="Logo" width="50" height="50"></a>
      <h1>Seminarübersicht</h1>
    </header>
    <%@include file="navbar.jspf"%>
    <div id="subcontainer">
      <div id="maincontainer">
        <main>
          <form method="get" action="results">
            <label for="semtitle">Seminartitel</label>
            <input type="text" name="semtitle" id="semtitle" maxlength="20">
            <label for="semlead">Seminarleiter</label>
            <input list="semleadlist" type="text" name="semlead" id="semlead">
            <datalist id="semleadlist">
        <option value="Max Muster"></option>
      </datalist>
            <button type="submit" name="finden">Finden</button>
          </form>
          <ul id="seminare">
            <!-- dynamic list of Seminar objects -->
          </ul>
        </main>
      </div>
      <%@include file="aside.jspf"%>
    </div>
    <%@include file="footer.jspf"%>
  </div>
  <!-- scripts -->
  <script src="./js/seminarliste.js"></script>
</body>

</html>