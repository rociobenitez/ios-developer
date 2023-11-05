# Fundamentos Swift

## [Constantes y variables](https://swift-book-es.vercel.app/)

Se utilizan para asociar un nombre a un valor específico. Las **constantes** tienen valores *inmutables*, mientras que las **variables** pueden *cambiar su valor*. Para declarar constantes, se utiliza `let``, y para declarar variables, se usa `var``. Aquí tienes un ejemplo de cómo declararlos:

```swift
let numeroMaximoDeIntentosDeInicioDeSesion = 10
var intentoActualDeInicioDeSesion = 0
```

En este ejemplo, "numeroMaximoDeIntentosDeInicioDeSesion" es una constante con un valor fijo, y "intentoActualDeInicioDeSesion" es una variable que puede cambiar su valor.

También puedes especificar el tipo de dato de una constante o variable utilizando una **definición de tipo**. Por ejemplo:

```swift
var mensajeDeBienvenida: String
mensajeDeBienvenida = "Hola"
```

Aquí, "mensajeDeBienvenida" es una *variable de tipo String* que almacena un mensaje de bienvenida.

Los nombres de constantes y variables pueden incluir una amplia variedad de caracteres, pero **no pueden contener espacios en blanco ni caracteres especiales**. Las palabras clave de Swift se pueden utilizar como nombres rodeándolas con [comillas invertidas](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#nombrar-constantes-y-variables). También puedes [imprimir el valor](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#nombrar-constantes-y-variables) de una constante o variable utilizando `print()`` y hacer uso de interpolación de cadenas para incluir valores en mensajes.

## [Comentarios](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#comentarios)

Los comentarios se pueden utilizar para agregar notas o explicaciones al código, y en Swift, los comentarios de una sola línea comienzan con `//`, mientras que los comentarios de varias líneas se encierran entre `/*` y `*/`. Los comentarios de varias líneas se pueden anidar.

## [Punto y coma](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#punto-y-coma)

Swift **no requiere el uso de punto y coma** al final de las declaraciones, pero se pueden utilizar si se desean varias declaraciones en una sola línea.


## [Enteros](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#enteros)

Los enteros son números enteros sin componente fraccionario, como 42 y -23. Los números enteros pueden tener signo (positivo, cero o negativo) o no tenerlo (positivo o cero).

Swift proporciona enteros con y sin signo en diversos formatos: 8, 16, 32 y 64 bits. Estos enteros siguen una convención de nomenclatura similar a la de C. Por ejemplo, un entero sin signo de 8 bits es de tipo UInt8, y un entero de 32 bits con signo es de tipo Int32.

### Límites de enteros

Puedes acceder a los valores mínimos y máximos de cada tipo de entero mediante las propiedades `min` y `max`. Por ejemplo:

```swift
let valorMinimo = UInt8.min // valorMinimo es igual a 0 y es de tipo UInt8
let valorMaximo = UInt8.max // valorMaximo es igual a 255 y es de tipo UInt8
```

### Int

En la mayoría de los casos, puedes usar el tipo `Int`, que tiene el mismo tamaño que el tipo de la plataforma en la que trabajas (por ejemplo, 32 bits en una plataforma de 32 bits y 64 bits en una plataforma de 64 bits).

### UInt

Swift también proporciona un tipo de número entero sin signo, `UInt`, que tiene el mismo tamaño que el tipo de la plataforma.

## [Números de punto flotante](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#n%C3%BAmeros-de-punto-flotante)

Tienen un componente fraccionario, como 3.14159 o -273.15. Swift ofrece dos tipos de números de punto flotante con signo: `Double` (64 bits) y `Float` (32 bits).

## [Seguridad de tipo e Inferencia de tipo](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#seguridad-de-tipo-e-inferencia-de-tipo)

Swift es un lenguaje con **seguridad de tipo** que realiza *verificaciones de tipos al compilar el código*, evitando errores al trabajar con diferentes tipos de valores. La inferencia de tipo permite a Swift deducir automáticamente el tipo de una expresión en función de los valores proporcionados.

## [Literales numéricos](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#literales-num%C3%A9ricos)

Se pueden escribir de varias formas, incluyendo enteros en diferentes bases (decimal, binaria, octal y hexadecimal) y flotantes. También se pueden utilizar guiones bajos y ceros para facilitar la lectura de los literales.

Ejemplos:
```swift
let enteroDecimal = 17
let enteroBinario = 0b10001 // 17 en notación binaria
let enteroOctal = 0o21 // 17 en notación octal
let enteroHexadecimal = 0x11 // 17 en notación hexadecimal

let doubleDecimal = 12.1875
let doubleExponente = 1.21875e1
let doubleHexadecimal = 0xC.3p0

let unMillon = 1_000_000
```

## [Conversión de tipo numérico](https://swift-book-es.vercel.app/guia-del-lenguaje/fundamentos#conversi%C3%B3n-de-tipo-num%C3%A9rico)

- Usa `Int` para variables y constantes enteras de propósito general en tu código, incluso si no son negativas. Esto facilita la interoperabilidad y coincidencia de tipos con valores literales enteros.
- Utiliza otros tipos de enteros solo cuando sean necesarios para tareas específicas, datos de tamaño explícito o optimización de rendimiento.
- Realiza conversiones de tipo numérico de forma explícita para evitar errores ocultos y hacer que las intenciones de conversión sean claras en tu código.

### Conversión de enteros

- Cada tipo numérico tiene un rango de valores que puede almacenar. Asegúrate de realizar conversiones de tipo numérico caso por caso.
- Para convertir un tipo de número a otro, inicializa un nuevo número del tipo deseado con el valor existente.
- Por ejemplo, para sumar un `UInt16` y un `UInt8`, utiliza `UInt16(valorUInt8)` para convertir el `UInt8` al tipo deseado.

### Conversión de números enteros y de punto flotante

- Las conversiones entre tipos numéricos enteros y de punto flotante deben hacerse de forma explícita.
- Puedes inicializar un tipo entero con un valor de tipo `Double` o `Float` de manera explícita.
- Ten en cuenta que los valores de punto flotante siempre se truncarán al convertirse en enteros.

Nota: Las reglas de conversión de variables y constantes numéricas son diferentes de las reglas para los literales numéricos, ya que los literales no tienen un tipo explícito en sí mismos y su tipo se infiere cuando se evalúan en el código.