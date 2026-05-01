# Índice
**[[I. Conceptos Fundamentales]]**
**[[II. Estructura Básica del Documento]]**
**[[III. HTML Semántico y Estructura Lógica (HTML5)]]**
**[[IV. Elementos de Contenido y Agrupación]]**
**[[V. Formularios]]**

# **[[I. Conceptos Fundamentales]]**

## **¿Qué es un Lenguaje de Marcas?**

Un lenguaje de marcas es un tipo de lenguaje que utiliza etiquetas para estructurar, describir y organizar información dentro de un documento. **No es un lenguaje de programación** (como Java o Python) porque no ejecuta acciones ni cálculos, sino que marca el contenido para indicar su significado o formato.

- **Ejemplos:** HTML (para estructurar páginas web), XML (intercambio de datos), SVG (gráficos vectoriales), Markdown (formato sencillo) y LaTeX (documentos científicos/académicos).

**¿Qué es HTML?**

HTML significa **Lenguaje de Marcado de Hipertexto** (_Hyper Text Markup Language_). Es el lenguaje de marcas estándar para crear páginas web y describe su estructura.

- **Función de los Elementos:** Los elementos HTML etiquetan partes del contenido (e.g., “esto es un encabezado”, “esto es un párrafo”, “esto es un enlace”) e indican al navegador cómo mostrarlos.
- **Usos Comunes:** Se utiliza para sitios web, _webapps_ (aplicaciones que se ejecutan en el navegador como Gmail), _apps_ móviles híbridas (HTML dentro de apps nativas), interfaces de videojuegos, apps de escritorio (como VS Code) y documentación o _dashboards_.

**Estructura de Elementos y Atributos**

Un elemento HTML completo se define generalmente como `<etiqueta> Contenido </etiqueta>`.

- **Atributos:** La gran mayoría de las etiquetas HTML pueden tener atributos. Estos pueden ser específicos (ej. `src` en `<img>`) o globales.
- **Etiquetas Huérfanas (Sin Cierre):** Son etiquetas que no tienen contenido ni etiqueta de cierre. Ejemplos comunes son `<!DOCTYPE html>`, `<hr>`, `<img>`, `<input>`, `<link>`, y `<meta>`.

**Atributos Globales**

Son atributos que pueden ser utilizados por **todos** los elementos HTML.

- **id:** Asigna un nombre **único** a un elemento, usado para identificarlo en hojas de estilo o scripts.
- **class:** Asigna un nombre de clase; el mismo nombre puede ser usado por varios elementos.
- **title:** Agrega un comentario que los navegadores muestran en una ventana emergente al situar el ratón sobre el elemento.
- **style:** Sirve para aplicar información de estilo directamente a un elemento.
- **lang:** Indica el idioma del documento.

# **[[II. Estructura Básica del Documento]]**

La estructura de un documento HTML debe seguir un orden específico:

1. `<!DOCTYPE html>`: Declaración que define que el código está en formato HTML5. Es una etiqueta huérfana.

2. `<html></html>`: Es el **elemento raíz** que encapsula todo el documento.

- **lang:** Indica el idioma del documento (ej. `es`, `en`). Puede incluir la región (ej. `es-ES`). Los códigos de idioma se definen en la ISO 639-1 y los de país en la ISO 3166-1 alfa-2.

- **dir:** Indica el sentido de lectura del texto. Valores: `ltr` (izquierda a derecha, por defecto), `rtl` (derecha a izquierda) o `auto`.

3. `<head></head>`: Contiene la metainformación de la página, la cual no es visible.

4. `<body></body>`: Contiene todos los contenidos visibles al navegador (texto, tablas, imágenes, etc.).

## **La Cabecera (`<head>`)**

Contiene la información general que es lo primero que analiza el navegador.

| Etiqueta  | Descripción y Uso  |
|---|---|
|**``<title>``**|Título de la página, se muestra en la pestaña del navegador. Etiqueta de apertura y cierre obligatorias.|
|**``<meta>``**|Proporciona metadatos (autor, descripción, palabras clave). Es huérfana.|
|`charset` (en `<meta>`)|Especifica la codificación de caracteres, siendo **utf-8** la más recomendada para compatibilidad.|
|`name` / `content` (en `<meta>`)|`name` indica la propiedad (ej. `author`, `description`, `keywords`) y `content` contiene su valor. Funcionan simultáneamente.|
|**`<base>`**|Dirección raíz del sitio Web, útil para resolver direcciones relativas. Es huérfana, y solo puede haber una por documento.|
|`target` (en `<base>`)|Contexto por defecto para la navegación por enlaces (`<a>`) o formularios (`<form>`). Valores: **_blank** (nueva pestaña), `_self` (predeterminado), `_parent`, `_top`.|
|**`<link>`**|Define un vínculo a otro documento (hojas de estilo CSS, iconos). Es huérfana.|
|`rel="stylesheet"`|Establece el vínculo con una hoja de estilos externa.|
|`rel="icon"`|Se utiliza para insertar un icono en la barra de título o pestaña del navegador (favicon).|
|**`<style>`**|Contiene reglas CSS internas aplicadas a la página.|
|**`<script>`**|Inserta o enlaza código JavaScript.|

# **[[III. HTML Semántico y Estructura Lógica (HTML5)]]**

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

# **[[IV. Elementos de Contenido y Agrupación]]**

## **1. Párrafos y Separación**

- **Párrafos:** Entre un párrafo y el siguiente (`<p>`) siempre hay un espacio mayor que entre las líneas que lo componen.
- **Salto de Línea:** `<br>` inserta un salto a la línea siguiente **dentro del mismo párrafo**. Es huérfana.
- **Línea Recta:** `<hr>` inserta una línea recta de separación. Es huérfana.
- **Espacio en Blanco:** `&nbsp;` genera un espacio en blanco que el navegador sí interpretará.
- **Alineación:** Se puede utilizar el atributo `style` dentro de `<p>` con `text-align`: `left`, `right`, `center`, o `justify`.
- **Comentarios:** `<!-- -->` se usan para insertar comentarios que no son interpretados por el navegador y no se pueden anidar.

## **2. Agrupación de Contenido**

- **``<div>``:** Sirve para agrupar varios elementos dentro de un **bloque** para asignar nombre, clase y estilo. Es un elemento de bloque y puede contener otros elementos de bloque o en línea. Las etiquetas de apertura y cierre son obligatorias.
- **``<span>``:** Sirve para identificar un elemento **en línea** y asignar estilo. Permite distinguir partes concretas del texto y aplicar un estilo diferente sin necesidad de cambiar de línea.

## **3. Listas**

Existen dos tipos fundamentales de listas de elementos y listas de definiciones:

1. **Listas No Ordenadas (``<ul>``):** Se construyen con el elemento `<ul>` (_unordered list_) y utilizan viñetas. Contienen elementos `<li>`.

2. **Listas Ordenadas (``<ol>``):** Se construyen con el elemento `<ol>` (_ordered list_) y utilizan índices o numeración. Contienen elementos `<li>`.

3. **Elemento de Lista (``<li>``):** Es el objeto de lista, que puede contener otros elementos de bloque o texto.

4. **Listas de Definiciones (``<dl>``):** Listas que no tienen índices ni símbolos, se componen de dos elementos a modo de diccionario.

- **``<dt>``:** El término que se quiere definir (elemento de línea).

- **``<dd>``:** La definición del término anterior (elemento de bloque).

## **4. Enlaces (`<a>`)**

Los hipervínculos son elementos en línea y fueron el motivo que inspiró el desarrollo de HTML. Se crean con la etiqueta `<a>`.

### **Atributos de ``<a>``:**

- **href:** Especifica la URI o destino del hipervínculo.

- **target:** Establece dónde se abrirá el enlace. Valores posibles: `_blank` (nueva pestaña), `_self`, `_parent`, `_top`.

- `title`: Texto que aparece al pasar el ratón por encima.

### **Marcadores de Posición (Anclas Internas):**

- El atributo `name` en `<a>` está **obsoleto en HTML5**.

- Se recomienda usar el atributo **id** en el elemento de destino (ej. `<h2 id="seccion1">`).

- **Enlaces internos (misma página):** Se usa la almohadilla (`#`) seguida del `id` del destino (ej. `<a href="#seccion1">`).

- **Enlaces a otra página del mismo servidor:** Se añade el nombre de la página destino en el atributo `href` (ej. `href="Definiciones.html#X"`).
- **Enlaces externos (otro servidor):** Se debe especificar la URL completa.

## **5. Imágenes (`<img>`)**

Se utiliza para insertar una imagen. Es un elemento en línea, sin etiqueta de cierre.

### **Atributos de ``<img>``:**

- **src:** Indica la ruta o URL de acceso a la imagen (obligatorio).

- **alt:** Texto alternativo (obligatorio por accesibilidad).

- **width / height**: Ancho y altura de la imagen.

-  **loading**: Indica si se debe postergar o no la carga.

- **usemap**: Si se va a usar un mapa de áreas.

- **Rutas:** Pueden ser **absolutas** (incluyen protocolo y dominio) o **relativas** (ubicación respecto al archivo HTML actual).
- **Mapas de Imágenes:** La etiqueta `<map>` crea un mapa de imágenes en el lado del cliente. `<area>` especifica una región geométrica dentro del mapa y el vínculo asociado.

## **6. Tablas (`<table>`)**

Las tablas se utilizan para **organizar información en filas y columnas**. **No deben usarse para maquetar la página**.

### **Estructura Básica:**

-  **``<table>``:** Define la tabla.

-  **``<tr>``:** Define una fila (_table row_). La etiqueta final es opcional.

-  **``<th>``:** Define una celda de encabezado (_table header_). Por defecto, muestra el texto en _negrita y centrado_.

-  **``<td>``:** Define una celda de datos (_table data_).

###  **Partes Semánticas de la Tabla:** 
Se utilizan para organizar mejor la información:

-  **``<thead>``:** Cabecera.

-  **``<tbody>``:** Cuerpo.

-  **``<tfoot>``:** Pie.

### **Agrupación de Columnas:** 
`colgroup` sirve para crear un grupo de columnas, y `col` para dar estilo a parte de la tabla. `colgroup` puede usar el atributo `span`.
### **Título:** `<caption>` 
representa el título de la tabla.
### **Atributos de Celdas:**

-  `colspan`: Expande la celda para que ocupe un número de columnas.

-  `rowspan`: Expande la celda para que ocupe un número de filas.

## **7. Marcos y Objetos**

### **Marcos en Línea (``<iframe>``):** 
Se utiliza para incrustar otro documento dentro del HTML actual. Los marcos antiguos (`<frameset>`) no están soportados en la última versión de HTML. Atributos: `src`, `allowfullscreen`, `height`, `width`, `sandbox`.
### **Objetos (<object>):** 
Inserta un objeto (imagen, applet de Java, video, otro documento HTML, etc.). Para imágenes es mejor usar `<img>`, y para video/audio es mejor usar `<video>` o `<audio>`.

-  **``<param>``:** Se utiliza dentro de `<object>` para inicializar variables de objetos.

# **[[V. Formularios]]**

Un formulario HTML (`<form>`) es un conjunto de elementos que permiten al usuario introducir datos para ser procesados por una aplicación web.

## **1. Declaración y Atributos de `<form>`**

La etiqueta `<form>` agrupa todos los campos.

|Atributo|Descripción|
|---|---|
|**action**|Dirección (página o script) donde se envían los datos del formulario.||
|**method**|Método de envío: **POST** (más seguro, datos ocultos en el cuerpo) o **GET** (datos visibles en la URL).||
|`target`|Dónde se mostrará la respuesta.||

## **2. Elementos de Entrada (`<input>`) y Atributos**

Los `<input>` son los elementos más utilizados y su apariencia y función dependen del atributo `type`.

### A. Tipos de Input (Texto, Numéricos y Archivos)

|Tipo|Descripción|
|---|---|
|`text`|Campo de texto de una sola línea.||
|`password`|Oculta los caracteres introducidos.||
|`email`|Campo para direcciones de correo; el navegador puede validar el formato.||
|`url`|Campo para direcciones web; el navegador puede validar el formato.||
|`search`|Campo de búsqueda.||
|`number`|Solo acepta números.||
|`range`|Control deslizante para elegir un valor dentro de un rango.||
|`file`|Permite seleccionar archivos.||
|`color`|Muestra un selector de color.||

### B. Tipos de Input (Fecha y Hora)

|Tipo|Descripción|
|---|---|
|`date`|Selector de fecha.||
|`time`|Selecciona una hora.||
|`datetime-local`|Selecciona fecha y hora local en un mismo control.||
|`month`|Selecciona mes y año.||
|`week`|Selecciona semana y año.||

### C. Tipos de Input (Botones)

|Tipo|Descripción|
|---|---|
|`submit`|Botón de envío que remite los datos al controlador especificado en `action`.||
|`reset`|Botón que restaura todos los campos a sus valores iniciales.||
|`image`|Botón de envío en forma de imagen.||
|`button`|Botón simple pulsable, sin funcionalidad predeterminada.||
|`hidden`|Campo invisible que almacena un valor interno.||

### D. Atributos de Validación y Utilidad de Inputs

|Atributo|Descripción|Citas|
|---|---|---|
|`placeholder`|Muestra un texto de ayuda dentro del campo hasta que se escribe.||
|`required`|Hace que el campo sea obligatorio para enviar el formulario.||
|`disabled`|Desactiva el campo, impidiendo la edición o el envío.||
|`readonly`|El campo se muestra, pero no se puede modificar.||
|`min` / `max`|Define valores mínimo y máximo para campos numéricos o de fecha.||
|`minlength` / `maxlength`|Establece el número mínimo y máximo de caracteres permitidos.||
|`pattern`|Define una expresión regular para validar el formato del input.||
|`autofocus`|Coloca el cursor automáticamente en el campo al cargar la página.||
|`autocomplete`|Controla si el navegador debe autocompletar el campo.||

## **3. Agrupación y Campos de Múltiples Opciones**

- **`<label>`:** Define una etiqueta para los elementos del formulario. Mejora la usabilidad y es útil para _screen-readers_. El atributo `for` de `<label>` debe ser igual al `id` del `<input>` para enlazarlos.
- **radio:** Permite seleccionar **una** de unas opciones limitadas.
- **checkbox:** Permite seleccionar **cero o más** opciones de un número limitado.
- **`<textarea>`:** Campo de entrada **multilínea**. Los atributos `rows` y `cols` especifican el número visible de líneas y el ancho.
- **`<select>`:** Define una **lista desplegable**.

◦ **`<option>`:** Define cada una de las opciones dentro de `<select>`. El atributo `selected` marca la opción preseleccionada.

- **`<datalist>`:** Especifica una lista de opciones predefinidas que el usuario ve a medida que ingresa datos en un `<input>` (autocompletado). El atributo `list` del `<input>` debe ser igual al `id` del `<datalist>`.
- **`<fieldset>` y <`legend>`:** `<fieldset>` se utiliza para agrupar datos relacionados dentro del formulario, y `<legend>` define un título para ese grupo.
- **`<progress>`:** Muestra una barra de progreso.