<!DOCTYPE html>
<html lang="de" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Seminar anlegen</title>
  <link rel="stylesheet" href="./css/layout.css">
</head>

<body>
  <header>
    <a href="index.jsp">  <img src="img/logo.png" alt="Logo" width="50" height="50"></a>
    <h1>Neues Seminar</h1>
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
    <form method="post" action="http://www.elsvene.de/seminarApp/testCreateSeminar.php">
      <fieldset>
        <legend>Seminar</legend>
        <label for="semtitle">Seminartitel</label>
        <span class="requiredInput"><input type="text" name="semtitle" id="semtitle" placeholder="Seminartitel" maxlength="20" pattern="[A-Z]\w*" autofocus required></span><br>
        <label for="semlead">SeminarleiterIn</label>
        <select name="semlead" id="semlead">
        <option value="max">Max Muster</option>
      </select><br>
        <fieldset>
          <legend>Zeitangaben</legend>
          <label class="lblForRequiredInput" for="semdate">Veranstaltungsdatum</label>
          <input type="date" name="semdate" id="semdate"><br>
          <label class="lblForRequiredInput" for="semstart">Uhrzeit (Start)</label>
          <input type="time" name="semstart" id="semstart" min="08:00" max="16:00">
          <label class="lblForRequiredInput" for="semend">Uhrzeit (Ende)</label>
          <input type="time" name="semend" id="semend" max="18:00"><br>
        </fieldset>
        <label class="lblForRequiredInput" for="semseats">verfügbare Plätze</label>
        <input type="number" name="semseats" id="semseats" min="0" max="100"><br>
        <label class="lblForRequiredInput" for="semtutors">Tutoren</label>
        <input type="text" name="semtutors" id="semtutors" pattern="[a-z]{2,4}\d{1}([,][a-z]{2,4}\d{1})*"><br>
      </fieldset>
      <fieldset>
        <button type="submit" name="anlegen">Anlegen</button>
      </fieldset>
    </form>
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