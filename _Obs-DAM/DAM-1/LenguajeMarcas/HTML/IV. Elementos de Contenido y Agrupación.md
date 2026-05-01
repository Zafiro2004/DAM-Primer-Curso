# **IV. Elementos de Contenido y Agrupación**

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