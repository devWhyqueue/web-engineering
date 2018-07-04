let aTag = document.getElementById('addKachel')
aTag.onclick = function () {
  let titel = window.prompt('Bitte geben Sie einen Titel ein!')
  let url = window.prompt('Bitte geben Sie eine URL ein!')
  let li = document.createElement('li')
  let a = document.createElement('a')
  let lastLi = document.getElementsByTagName('li')
  lastLi = lastLi[lastLi.length - 1]
  a.textContent = titel
  a.href = url
  li.append(a)
  lastLi.before(li)
}
