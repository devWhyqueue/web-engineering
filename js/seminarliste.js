console.log('I love Web Engineering!')
// Definition eines Seminars
function Seminar(titel, leiter, ort, startzeit, endzeit, verfuegbarePlaetze, freiePlaetze, tutoren) {
  this.titel = titel
  this.leiter = leiter
  this.ort = ort
  this.startzeit = startzeit
  this.endzeit = endzeit
  this.verfuegbarePlaetze = verfuegbarePlaetze
  this.freiePlaetze = freiePlaetze
  this.tutoren = tutoren
  this.getBelegtePlaetze = function () {
    return verfuegbarePlaetze - freiePlaetze
  }
}
// Objekterzeugung
let seminar1 = new Seminar('AngularJS', 'Koenigsmann', 'Haltern', '14:35', '19:00', 20, 15, 'Müller, Meier')
let seminar2 = new Seminar('VueJS', 'Wiesmann', 'Essen', '17:30', '21:00', 30, 20, 'Schmidt')
console.log(seminar1)
console.log(seminar2)
// Seminar-Array
let seminare = [seminar1, seminar2]
seminare.forEach(function (s) {
  console.log(s.getBelegtePlaetze())
})
