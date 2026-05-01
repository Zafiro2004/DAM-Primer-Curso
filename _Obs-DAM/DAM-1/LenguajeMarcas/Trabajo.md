# 🔴⚪ Pokémon Team Builder & Pokédex

Una aplicación web interactiva desarrollada con Vanilla JavaScript, HTML5 y CSS3 que permite explorar un catálogo de 80 Pokémon clásicos (evoluciones finales y únicas de la primera generación) y crear tu equipo ideal de 6 integrantes.

## ✨ Características Principales

* **Búsqueda en tiempo real:** Encuentra rápidamente cualquier Pokémon tecleando su nombre.
* **Filtrado dinámico por tipos:** Organiza el catálogo pulsando sobre los botones de tipo (Fuego, Agua, Planta, etc.). Los filtros de texto y tipo se pueden combinar sin conflictos.
* **Team Builder:** Añade hasta 6 Pokémon a tu equipo. El panel lateral interactivo te acompañará mientras haces scroll por la página.
* **Gestión de Equipo:** Elimina Pokémon de tu equipo fácilmente si cambias de opinión. El sistema evita que añadas Pokémon duplicados o que superes el límite de 6.
* **Sprites Animados 3D:** Integración de los modelos animados modernos del repositorio Showdown de la PokéAPI para una experiencia visual inmersiva.
* **Enlaces a WikiDex:** Haz clic en la imagen o el nombre de cualquier Pokémon para abrir su ficha completa en una pestaña nueva.

## 🛠️ Tecnologías Utilizadas

* **HTML5:** Estructura semántica de una sola página (SPA).
* **CSS3:** * Diseño 100% *responsive* utilizando **CSS Grid** y **Flexbox**.
  * Variables CSS (`:root`) para un control centralizado de la paleta de colores.
  * *Position Sticky* para mejorar la navegación del usuario.
* **JavaScript (Vanilla):** * Manipulación dinámica del DOM.
  * Renderizado de componentes mediante *Template Literals*.
  * Uso avanzado de **Delegación de Eventos** para optimizar el rendimiento.
  * Gestión de estados combinados para los filtros de búsqueda.

## 📁 Estructura del Proyecto

El proyecto no requiere dependencias externas ni procesos de compilación (build tools). Su estructura es simple y directa:

```text
/
├── index.html        # Estructura principal de la aplicación
├── css/
│   └── style.css     # Estilos visuales, maquetación y colores
└── js/
    ├── data.js       # Base de datos mockeada con la información de los 80 Pokémon
    └── app.js        # Lógica de la aplicación, filtros y manipulación del DOM
```
## 🚀 Instalación y Uso

1. Descarga o clona este repositorio en tu ordenador.
    
2. Asegúrate de mantener la estructura de carpetas intacta.
    
3. Abre el archivo `index.html` en cualquier navegador web moderno (Chrome, Firefox, Safari, Edge).
    
4. ¡Empieza a buscar y a construir tu equipo Pokémon!
    

## 👨‍💻 Autor

Proyecto desarrollado como práctica de programación Front-End, centrándose en el uso de JavaScript nativo, la correcta gestión del DOM y la estructuración de interfaces de usuario modernas.