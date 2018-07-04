<!DOCTYPE html>
<html lang="de" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Seminardetails</title>
  <link rel="stylesheet" href="./css/layout.css">
</head>

<body>
  <header>
    <a href="index.jsp">  <img src="img/logo.png" alt="Logo" width="50" height="50"></a>
    <h1>Seminardetails</h1>
  </header>
  <nav>
    <ul>
      <li><a href="seminarliste.jsp">Seminarübersicht</a></li>
      <li><a href="seminarleiter.jsp">Seminarleiter</a></li>
      <li><a href="html-seminar.jsp">HTML-Seminar</a></li>
      <li><a href="neues-seminar.jsp">Neues Seminar</a></li>
    </ul>
  </nav>
  <main style="width: 75%">
    <h2>Informationen</h2>
    <table id="htmlDetailTable">
      <thead>
        <tr>
          <th>Titel</th>
          <th>Seminarleiter</th>
          <th>Veranstaltungsdatum</th>
          <th>Uhrzeit</th>
          <th>freie Plätze</th>
          <th>verfügbare Plätze</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>HTML-Seminar</td>
          <td><a href="seminarleiter.jsp">Max Muster</a></td>
          <td>01.05.2018</td>
          <td>8.00-16.00 Uhr</td>
          <td>7</td>
          <td>20</td>
        </tr>
      </tbody>
      <tfoot>
      </tfoot>
    </table>
    <h2>Beschreibung</h2>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
      in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </main>
  <aside style="width: 20%">
    <h3>Zusatzinformationen</h3>
  </aside>
  <footer>
    <h4>Footer</h4>
    <small>Copyright to devWhyqueue</small>
  </footer>
</body>

</html>