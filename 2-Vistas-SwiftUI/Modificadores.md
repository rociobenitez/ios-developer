# Modificadores SwiftUI

SwiftUI proporciona una amplia gama de modificadores que puedes aplicar a las vistas para personalizar su aspecto y comportamiento. Aquí tienes una lista de algunos de los modificadores comunes en SwiftUI:

### Modificadores de apariencia

- `foregroundColor(_:)`: Define el color del texto o del contenido
- `background(_:)`: Establece el color de fondo
- `font(_:)`: Cambia la fuente del texto
- `fontWeight(_:)`: Ajusta el grosor del texto (por ejemplo, `.bold()`).
- `italic()`: Muestra el texto en cursiva
- `underline()`: Subraya el texto
- `strikethrough()`: Agrega una línea de tachado al texto
- `shadow(color:, radius:, x:, y:)`: Agrega una sombra alrededor de la vista
- `lineLimit(_:)`: Limita el número de líneas de texto
- `multilineTextAlignment(_:)`: Establece la alineación del texto

### Modificadores de diseño

- `padding(_:)`: Agrega espacio alrededor de la vista
- `frame(width:height:)`: Establece el tamaño de la vista
- `cornerRadius(_:)`: Agrega esquinas redondeadas
- `background(_:)`: Define un fondo personalizado
- `overlay(_:)`: Agrega una superposición
- `border(_:)`: Dibuja un borde alrededor
- `alignmentGuide(_:)`: Ajusta la alineación de una vista dentro de su contenedor

### Modificadores de interacción

- `onTapGesture { }`: Agrega un gesto de toque a la vista
- `gesture(_:)`: Permite la adición de gestos personalizados
- `onAppear { }`: Realiza acciones cuando la vista aparece en pantalla
- `onDisappear { }`: Realiza acciones cuando la vista desaparece de la pantalla

### Modificadores de posición y alineación

- `position(x:y:)`: Establece la posición de la vista en su contenedor
- `offset(x:y:)`: Desplaza la vista desde su posición original
- `alignmentGuide(_:)`: Controla la alineación de la vista en su contenedor

### Modificadores de animación

- `animation(_:)`: Agrega animaciones a las transiciones de vista

Estos son solo algunos de los modificadores disponibles en SwiftUI. Puedes combinar y encadenar varios de ellos para personalizar y dar forma a tus vistas de acuerdo a tus necesidades específicas. Los modificadores son una parte esencial de SwiftUI y te permiten crear interfaces de usuario altamente personalizadas y dinámicas.


## Ejemplos

```
Text("Hello")
    .font(.title)
```

```
Text("World!")
   .font(Font.custom("Helvetica", size: 24))
```

```
Text("Hello, World! I'm having a great time at Codecademy!")
```

```
Text("Hello, World! I'm having a great time at Codecademy!")
    .multilineTextAlignment(.center)
```

```
Text("Checking alignment of text")
    .padding(EdgeInsets(top: 3, leading: 5, bottom: 10, trailing: 20))
```

```
Text("Checking alignment of text")
    .padding(.top, 10)
```