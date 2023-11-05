// Magic8Ball 🎱

let playerName = "Rocío"
let playerQuestion = "¿Es mejor Swift que JavaScript?"

let randomNumber = Int.random(in: 1...9)
// print(randomNumber)

var eightBall: String

switch randomNumber {
  case 1:
    eightBall = "Sí, definitivamente"
  case 2:
    eightBall = "Es decididamente así"
  case 3:
    eightBall = "Sin duda"
  case 4:
    eightBall = "Respuesta incierta, inténtalo de nuevo"
  case 5:
    eightBall = "Pregunta de nuevo más tarde"
  case 6:
    eightBall = "Mejor no te lo digo ahora"
  case 7:
    eightBall = "Mis fuentes dicen que no"
  case 8:
    eightBall = "Perspectivas no tan buenas"
  case 9:
    eightBall = "Muy dudoso"
  default:
    eightBall = "Error"
}

playerName.isEmpty ? print("\(playerQuestion)") : print("\(playerName) asks: \(playerQuestion)")
print("Respuesta de la Bola Mágica: \(eightBall)")
