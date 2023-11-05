# Vistas SwiftUI

Las **[vistas SwiftUI](https://developer.apple.com/documentation/swiftui/view)** son los ***componentes básicos de la interfaz de usuario de una aplicación*** desarrollada en Swift para los sistemas operativos de Apple, como iOS, macOS, watchOS y tvOS. Estas vistas son fundamentales para construir la interfaz de usuario de tu aplicación y se utilizan para mostrar contenido, interactuar con el usuario y controlar la apariencia de la aplicación.

## Vistas como componentes básicos

Las vistas en SwiftUI son como los bloques de construcción de la interfaz de usuario. Son **elementos fundamentales**, como *etiquetas, botones, imágenes, campos de texto y otros*, que se utilizan para crear la pantalla de tu aplicación.

**Definir una vista personalizada:**

```
struct HappyView: View {
   var body: some View {
       Text("Hello, World!")
   }
}
```

### Características

- **Declarativo y reactivo:** SwiftUI es un marco declarativo, lo que significa que defines cómo debe verse la interfaz de usuario en función del estado y la lógica de tu aplicación, en lugar de decirle a la aplicación cómo dibujar cada vista. Esto hace que tu código sea más legible y mantenible. Además, las vistas SwiftUI son reactivas, lo que significa que se actualizan automáticamente cuando cambia el estado de la aplicación, sin necesidad de actualizar manualmente la interfaz de usuario.

- **Jerarquía de vistas:** Las vistas SwiftUI se organizan en una jerarquía, como las habitaciones de una casa. Puedes anidar vistas dentro de otras vistas para construir interfaces de usuario más complejas. La jerarquía sigue una estructura de árbol, donde las vistas padre pueden contener múltiples vistas secundarias.

- **Datos y estado:** Las vistas SwiftUI están vinculadas a los datos de la aplicación. Cuando los datos cambian, las vistas se actualizan automáticamente para reflejar esos cambios. Puedes definir propiedades observables para rastrear cambios en los datos y usar vinculadores para conectar esas propiedades con las vistas.

- **Reutilización:** Puedes crear tus propias vistas personalizadas y reutilizarlas en diferentes partes de tu aplicación. Esto fomenta la reutilización de componentes de interfaz de usuario y garantiza la coherencia en el diseño de tu aplicación.


## Modificadores

Puedes personalizar la **apariencia** y el **comportamiento** de las vistas utilizando ***modificadores***. Los [modificadores](/ios-developer/2-Vistas-SwiftUI/Modificadores.md) son funciones que se aplican a las vistas para cambiar su aspecto, como cambiar el color de fondo, el tamaño de fuente, la alineación, los bordes y más. Puedes encadenar varios modificadores para personalizar aún más las vistas.

**Utilizando modificadores de vista:**

```
Text("Hello, World!")
   .foregroundColor(.blue)
   .bold()
   .padding()
   .border(Color.black, width: 1) 
```

## Contenedores de vista

### VStack

`VStack` en SwiftUI es un **contenedor de vistas** que organiza sus vistas secundarias en una ***disposición vertical***. Puedes pensar en él como una pila vertical en la que las vistas se apilan una encima de la otra en orden secuencial. Es uno de los tipos de contenedores disponibles en SwiftUI que te permite crear diseños de interfaz de usuario de manera eficiente y flexible.

Aquí hay una explicación más detallada de `VStack`:

1. **Organización Vertical:** `VStack` coloca sus vistas secundarias en una columna vertical, desde arriba hacia abajo. Cada vista secundaria se apila debajo de la anterior en el orden en que se agregaron.

2. **Características principales:** 
   - `alignment`: Puedes especificar cómo alinear horizontalmente las vistas secundarias dentro del `VStack`, lo que te permite personalizar la alineación en la dirección horizontal.
   - `spacing`: Puedes definir la cantidad de espacio entre las vistas secundarias.

3. **Uso típico:** `VStack` se utiliza para crear interfaces de usuario con contenido organizado verticalmente, como listas de elementos, columnas de texto, menús desplegables y más. Es especialmente útil cuando deseas apilar vistas una encima de la otra de manera ordenada.

4. **Ejemplo:**
   
   ```swift
   VStack(alignment: .leading, spacing: 10) {
       Text("Título")
           .font(.title)
       Text("Descripción larga que se extiende por varias líneas.")
           .font(.body)
       Button("Presionar aquí") {
           // Acción al presionar el botón
       }
   }
   ```

   En este ejemplo, hemos creado un `VStack` que contiene un título, una descripción y un botón. Hemos especificado la alineación horizontal como `.leading` y un espacio de 10 puntos entre las vistas.

5. **Encadenamiento de modificadores:** Puedes encadenar modificadores para personalizar aún más la apariencia y el diseño de las vistas secundarias dentro del `VStack`. Esto incluye la aplicación de colores, fuentes, bordes y otros ajustes visuales.


### HStack

`HStack` en SwiftUI es otro **contenedor de vistas** que organiza sus vistas secundarias en una ***disposición horizontal***. Puedes pensar en él como una fila en la que las vistas secundarias se alinean una al lado de la otra en orden secuencial. `HStack` es el complemento de `VStack`, que organiza las vistas verticalmente.

Aquí hay una explicación más detallada de `HStack`:

1. **Organización Horizontal:** `HStack` coloca sus vistas secundarias en una fila horizontal, de izquierda a derecha. Cada vista secundaria se coloca junto a la anterior en el orden en que se agregaron.

2. **Características principales:**
   - `alignment`: Puedes especificar cómo alinear verticalmente las vistas secundarias dentro del `HStack`, lo que te permite personalizar la alineación en la dirección vertical.
   - `spacing`: Puedes definir la cantidad de espacio entre las vistas secundarias.

3. **Uso típico:** `HStack` se utiliza para crear interfaces de usuario con contenido organizado horizontalmente, como barras de herramientas, botones en línea, encabezados de página y más. Es especialmente útil cuando deseas que las vistas se alineen horizontalmente de manera ordenada.

4. **Ejemplo:**

   ```swift
   HStack(alignment: .center, spacing: 20) {
       Image("icon")
           .resizable()
           .frame(width: 50, height: 50)
       Text("Título")
           .font(.title)
       Button("Presionar aquí") {
           // Acción al presionar el botón
       }
   }
   ```

   En este ejemplo, hemos creado un `HStack` que contiene una imagen, un título y un botón. Hemos especificado la alineación vertical como `.center` y un espacio de 20 puntos entre las vistas.

5. **Encadenamiento de modificadores:** Al igual que con `VStack`, puedes encadenar modificadores en las vistas secundarias dentro del `HStack` para personalizar su apariencia y diseño.

`HStack` es una herramienta versátil para crear diseños horizontales en SwiftUI. Puedes usarlo para diseñar interfaces de usuario que requieran alineación horizontal, como barras de navegación, botones en línea, encabezados de lista y otros elementos que deben aparecer uno al lado del otro. Cuando se combina con `VStack`, puedes crear diseños de interfaz de usuario complejos y personalizados en tus aplicaciones SwiftUI.


### ZStack

`ZStack` en SwiftUI es un **contenedor de vistas** que te permite ***superponer vistas*** una encima de otras en la dirección Z, creando ***capas de contenido***. Puedes pensar en él como una pila de vistas, donde la vista que se encuentra más arriba en la pila se dibuja encima de las demás vistas. La "Z" en `ZStack` se refiere a la coordenada Z en un espacio tridimensional, y `ZStack` te permite controlar la superposición de vistas en una interfaz de usuario en SwiftUI.

Aquí hay una explicación más detallada de `ZStack`:

1. **Superposición de vistas:** `ZStack` permite superponer varias vistas en la misma posición en pantalla. Esto significa que puedes colocar vistas una encima de las otras para crear efectos visuales interesantes.

2. **Características clave:**
   - **Orden de superposición:** El orden en el que agregas vistas a `ZStack` determina su orden de superposición. La primera vista agregada se coloca en la parte inferior, y las vistas subsiguientes se colocan encima de ellas.
   - **Alineación:** Puedes alinear las vistas en `ZStack` tanto vertical como horizontalmente según tus necesidades.

3. **Uso típico:** `ZStack` se utiliza para crear diseños en capas, como superposición de texto en una imagen, botones flotantes, indicadores, o cualquier interfaz de usuario que requiera vistas superpuestas. También es útil para crear efectos de paralaje y animaciones con capas.

4. **Ejemplo:**

   ```swift
   ZStack {
       Image("fondo")
           .resizable()
           .aspectRatio(contentMode: .fill)
           .frame(width: 300, height: 200)
       
       Text("Superpuesto")
           .font(.title)
           .foregroundColor(.white)
           .background(Color.blue)
   }
   ```

   En este ejemplo, hemos creado un `ZStack` con una imagen de fondo y un texto superpuesto. La imagen se ajusta al tamaño del `ZStack`, y el texto se superpone a la imagen. El orden en el que se agregaron determina la superposición.

5. **Encadenamiento de modificadores:** Al igual que con otros contenedores de vistas, puedes encadenar modificadores en las vistas dentro de `ZStack` para personalizar su apariencia y comportamiento.

`ZStack` es especialmente útil cuando deseas crear capas visuales en tu interfaz de usuario. Puedes superponer imágenes, texto, botones u otras vistas para lograr efectos visuales específicos o resaltar ciertos elementos en tu diseño. Es una herramienta poderosa para la creación de interfaces de usuario creativas y dinámicas en SwiftUI.


## Botones

Un `Button` en SwiftUI es una vista que permite a los usuarios interactuar con tu aplicación tocando un área rectangular definida. En otras palabras, un botón es un elemento interactivo que responde a las acciones del usuario, como toques o clics. Los botones son fundamentales en la creación de interfaces de usuario interactivas y permiten a los usuarios realizar acciones específicas, como enviar formularios, activar eventos, navegar a otras pantallas, entre otras cosas.

Aquí hay una descripción detallada de lo que es un `Button` en SwiftUI:

1. **Interacción del usuario:** Un `Button` se utiliza para capturar y responder a la interacción del usuario. Cuando un usuario toca un botón en la interfaz de usuario, se desencadenará una acción o función que hayas definido para ese botón.

2. **Contenido personalizado:** Puedes personalizar el contenido del botón (incluir texto, imágenes u otras vistas).

3. **Sintaxis básica:** 

   ```swift
   Button(action: {
       // Código que se ejecutará cuando se toque el botón
   }) {
       // Contenido del botón (texto, imagen, otras vistas, etc.)
   }
   ```

4. **Modificadores:** Puedes aplicar modificadores al botón y su contenido para personalizar su apariencia, como cambiar su estilo, color o fuente.

5. **Estilos de botón:** SwiftUI ofrece varios estilos predefinidos para botones, como `.default`, `.plain`, `.bordered`, `.link`, entre otros. Estos estilos determinan la apariencia visual del botón.

6. **Acciones del botón:** Las acciones que definas para un botón pueden ser diversas, como navegar a otra pantalla, activar una función, mostrar un cuadro de diálogo, enviar datos a un servidor, o cualquier otra acción específica de tu aplicación.

7. **Respuestas táctiles:** Los botones en SwiftUI manejan automáticamente la retroalimentación táctil, como el cambio de color o animaciones cuando el usuario toca el botón.

8. **Ejemplo básico:**

   ```swift
   Button(action: {
       print("Botón tocado")
   }) {
       Text("Presiona aquí")
   }
   ```

