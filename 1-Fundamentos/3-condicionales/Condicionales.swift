/*
English: EN
Spanish: ES
Chinese: ZH
Russian: RU
*/ 

// Write your code below 🗽
let abbreviation : String = "ES"

if abbreviation == "ES" {
  print("Spanish")
} else if abbreviation == "EN" {
  print("English")
} else if abbreviation == "ZH" {
  print("Chinese")
} else if abbreviation == "RU" {
  print("Russian")
} else {
  print("Abbreviation not found")
}


// Operador ternario
var windy = true 
windy ? print("Sails up") : print("Motor on")


// Switch Statement
var secretIdentity = "Tony Stark"
var superheroName: String 

switch secretIdentity {
  case "Tony Stark":
    superheroName = "Iron Man"
  case "Natasha Romanoff":
    superheroName = "Black Widow"
  case "Prince T'Challa":
    superheroName = "Black Panther"
  case "Thor":
    superheroName = "Thor"
  default:
    superheroName = "Unknown"
}

print(superheroName)

// Switch Statement: Interval Matching

/*
Un intervalo denota un rango utilizado para comprobar si un valor determinado se encuentra dentro de ese rango.
En Swift un rango se indica mediante ... (operador de rango cerrado)
*/

var year = 1943

switch year {
  case 1701...1800:
    print("18th century") 
  case 1801...1900:
    print("19th century")
  case 1901...2000: 
    print("20th century")
  case 2001...2100: 
    print("21st century")
  default: 
    print("You're a time traveler!")
} 
// Prints: 20th century


// Switch: Compound Cases

/*
Uso de múltiples valores en un solo caso.
Esto se conoce como casos compuestos.
*/

var country = "India"

switch country {
  case "USA", "Mexico", "Canada":
    print("\(country) is in North America. 🌏")
  case "South Africa", "Nigeria", "Kenya":
    print("\(country) is in Africa. 🌍")
  case "Bangladesh", "China", "India":
    print("\(country) is in Asia. 🌏")
  default: 
    print("This country is somewhere in the world!")
} 
// Prints: India is in Asia. 🌏


// Switch: where clause

/*
La cláusula where permite una coincidencia de patrones adicional para una expresión determinada.
También se puede usar con bucles y otros condicionales como if.
*/

var randomNumber = Int.random(in: 0...10)

switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is even")
  case let x where x % 2 == 1:
    print("\(randomNumber) is odd")
  default:
    print("Invalid")
}

/*
Programa que determina si un número entero aleatorio entre 0 y 10 es par o impar.
let x --> crea un enlace temporal al valor de randomNumber.
Se usa let poque su valor siempre será constante.
Si se usar var, Swift mostrará una advertencia del compilador, recomendando usar let en su lugar.
*/