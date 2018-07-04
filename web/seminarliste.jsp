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
    <nav>
      <ul>
        <li><a href="seminarliste.jsp">Seminarübersicht</a></li>
        <li><a href="seminarleiter.jsp">Seminarleiter</a></li>
        <li><a href="html-seminar.jsp">HTML-Seminar</a></li>
        <li><a href="neues-seminar.jsp">Neues Seminar</a></li>
      </ul>
    </nav>
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
      <aside>
        <h3>Zusatzinformationen</h3>
      </aside>
    </div>
    <footer>
      <h4>Footer</h4>
      <small>Copyright to devWhyqueue</small>
    </footer>
  </div>
  <!-- scripts -->
  <script src="./js/seminarliste.js"></script>
</body>

</html>