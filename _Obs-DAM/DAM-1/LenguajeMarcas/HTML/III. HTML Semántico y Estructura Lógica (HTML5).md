# **III. HTML Semántico y Estructura Lógica (HTML5)**

El **HTML Semántico** utiliza etiquetas que transmiten el **significado o semántica** de su contenido. A diferencia del HTML no semántico (`<div>`, `<span>`), estas etiquetas definen la funcionalidad e importancia de las secciones.

- **Importancia:** Mejoran la **accesibilidad** (permiten a los lectores de pantalla comprender el contenido) y el **SEO** (los rastreadores de buscadores, como Googlebot, entienden mejor la función del contenido).
- **Buena Práctica:** **No debes utilizar las etiquetas semánticas con fines puramente estilísticos**. Para el formato, usa siempre CSS.

## **A. Etiquetas Semánticas para Estructura (Etiquetas HTML5)**

|Etiqueta|Función|
|---|---|
|**``<header>``**|Contenido introductorio de una página o sección.|
|**``<nav>``**|Delimita los enlaces de navegación.|
|**``<main>``**|Contiene el contenido principal (cuerpo) de la página. **Solo debe haber una etiqueta <main> por página**.|
|**``<section>``**|Agrupa contenido que trata sobre temas similares. No son necesariamente autónomas.|
|**``<article>``**|Define contenido independiente o autónomo, como una entrada de blog.|
|**``<aside>``**|Define contenido de menor importancia, a menudo usado para barras laterales o información complementaria.|
|**``<footer>``**|Pie de página (ej. derechos de autor, navegación por la web).|

## **B. Etiquetas Semánticas para Texto**

|Etiqueta|Función|
|---|---|
|**``<h1>`` a ``<h6>``**|Encabezados de distintos niveles de importancia. **Deben ordenarse por importancia para crear una jerarquía lógica**.||
|**``<p>``**|Párrafo de texto independiente.||
|**``<strong>`` / ``<b>``**|**Enfatizar** el texto (`<strong>`) / Poner texto en negrita (`<b>`).||
|**``<em>`` / ``<i>``**|Resaltar el texto o dar énfasis (`<em>`) / Poner texto en cursiva (`<i>`).||
|**``<del>`` / ``<s>``**|Texto eliminado (`<del>`) o tachado (`<s>`).||
|**``<mark>``**|Resalta el texto (ej. en amarillo).||
|**``<u>`` / ``<ins>``**|Subrayar (`<u>`) o marcar texto insertado (`<ins>`).||
|**``<sup>`` /`` <sub>``**|Superíndice / Subíndice.||
|**``<q>`` /`` <blockquote>``**|Cita corta en línea (`<q>`) o cita de texto larga/de varias líneas (`<blockquote>`). **No deben usarse para sangrar texto**.||
|**``<code>``**|Indica un bloque de código.||