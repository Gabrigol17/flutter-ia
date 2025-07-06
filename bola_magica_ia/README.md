# 🔮 Bola Mágica IA

App desarrollada en Flutter con BLoC que utiliza la API de ChatGPT para simular una bola mágica. El usuario puede escribir cualquier pregunta o inquietud, y la app responde con una predicción generada por inteligencia artificial.

## 🛠️ Tecnologías utilizadas

- **Flutter** (SDK de desarrollo multiplataforma)
- **Dart** (Lenguaje de programación)
- **BLoC** (Manejo de estados)
- **Equatable** (Comparación eficiente de objetos)
- **http** (Realizar peticiones HTTP)
- **OpenAI API (ChatGPT)**

## 📱 Funcionamiento de la app

1. El usuario escribe una pregunta en la pantalla principal.
2. Al presionar el botón, se muestra una pantalla de carga.
3. La app hace una petición a la API de OpenAI (modelo `gpt-4-0613`).
4. Se muestra una pantalla con la respuesta.
5. El usuario puede volver y hacer otra pregunta.
