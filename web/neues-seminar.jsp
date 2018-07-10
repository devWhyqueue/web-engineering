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
  <%@include file="navbar.jspf"%>
  <main style="width: 75%">
    <form method="post" action="seminar_erstellt.jsp">
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
  <%@include file="aside.jspf"%>
  <%@include file="footer.jspf"%>
</body>

</html>