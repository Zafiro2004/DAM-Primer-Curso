## **1. Introducción a los lenguajes de marcas**

Los lenguajes de marcas son una herramienta esencial en la informática moderna. Una de las tareas esenciales de los ordenadores es **almacenar información** para su posterior procesamiento.  
Esa información puede ser de diferentes tipos (texto, imágenes, vídeos, música, etc.), pero lo realmente relevante es **cómo se almacena** para poder tratarla de forma eficiente y reutilizable. Permiten **describir, estructurar y presentar información** de forma estandarizada, legible y adaptable a múltiples plataformas.  
Su éxito se debe a su **simplicidad, compatibilidad y capacidad de interpretación**, lo que los convierte en la base fundamental de la web actual.
### **Conceptos básicos**

- **Dato:** representación de un aspecto del mundo real que puede ser almacenado y procesado por un sistema informático.
- **Información:** resultado del tratamiento o procesamiento de los datos para generar conocimiento útil.
- **Sistema informático:** conjunto de elementos (hardware, software y datos) cuyo propósito es almacenar, procesar y comunicar información.

---
## **1.1. Características de los datos**

Los datos presentan tres características fundamentales:

1. **Destinatario:**
    - **Datos destinados a personas:** poseen una estructura visual (títulos, negritas, formato). No requieren conocer el significado interno, ya que la interpretación la realiza el lector.
    - **Datos destinados a programas:** su estructura es lógica y formal. Los programas no interpretan la forma visual, sino la estructura de las etiquetas o tipos de datos.
2. **Reutilización:**  
    Los datos deben almacenarse de manera genérica y estructurada para poder ser reutilizados en diferentes contextos o aplicaciones, evitando dependencias específicas de una tarea.
3. **Compartición:**  
    En la actualidad, la información puede generarse en un sistema y consumirse en otro completamente diferente (por ejemplo, en distintos sistemas operativos o arquitecturas).  
    Por tanto, el almacenamiento debe facilitar **la interoperabilidad** y **la independencia de plataforma**.

---
## **1.2. Almacenamiento de datos en los ordenadores**

En la arquitectura moderna (Von Neumann), la información se representa mediante **el sistema binario** (0 y 1).  
Para poder almacenar cualquier tipo de dato (texto, imagen, audio…), este debe **convertirse a formato binario**.

### **Tipos de datos**

**Datos binarios:**
- Son la forma natural en que el ordenador almacena la información.
- Ventajas:
	- Ocupan solo el espacio necesario.
	- Son rápidamente interpretados por las máquinas.
	- Permiten incluir metadatos.
- Inconveniente: no son legibles por personas sin un programa que los interprete.
**Datos de texto:**
- Se almacenan letra por letra siguiendo un **código de caracteres estándar** (ASCII, UTF-8, etc.).
- Son legibles por humanos y fácilmente transportables entre sistemas.
- Esta representación es la base de los **lenguajes de marcas**, ya que permite que las etiquetas sean visibles e interpretables por los programas.

---
## **1.3. Diferencia entre lenguaje de programación y lenguaje de marcas**

- Un **lenguaje de programación** (C, Java, Python...) **es procesado por la CPU**. Sus instrucciones se ejecutan, realizan operaciones y generan resultados.
- Un **lenguaje de marcas** (HTML, XML, Markdown...) **no se ejecuta**, sino que **es interpretado** por un programa (generalmente un navegador o parser).
- Por tanto:
    - En los lenguajes de marcas **sí se utiliza código, pero este no se procesa** por el procesador.
    - Su objetivo es **describir, estructurar o presentar información**, no realizar cálculos ni lógica de programación.
    - El **navegador interpreta el código** y **reproduce visualmente** el contenido, buscando que la **experiencia del usuario sea agradable, comprensible y útil**.
    - Se emplean fundamentalmente en **portales y entornos web**.

---
## **1.4. Memoria caché del navegador**

Cuando el usuario realiza una petición web, el navegador **almacena copias de ciertos recursos (imágenes, scripts, hojas de estilo, etc.)** en una memoria temporal denominada **memoria caché**.  
Esto permite **acelerar las cargas futuras** y **reducir el tráfico de red**.  
Sin embargo, es importante **realizar limpiezas periódicas** para evitar errores de visualización y optimizar el rendimiento general del sistema.

---
## **1.5. Las marcas y su evolución histórica**

El concepto de “marcado” proviene del inglés _marking up_, usado originalmente para anotar textos destinados a la imprenta con instrucciones de formato.

- **Charles Goldfarb (IBM)** desarrolló el **GML (Generalized Markup Language)**, precursor del **SGML (Standard Generalized Markup Language)**, reconocido por la ISO (ISO 8879).
- A finales de los 80, en el **CERN**, se creó un lenguaje para compartir información a través de redes: **HTML (HyperText Markup Language)**, basado en SGML.
- El **primer navegador**, **Mosaic**, fue capaz de interpretar HTML de forma visual. Posteriormente, **Internet Explorer** lo superó y contribuyó al desarrollo y expansión internacional de los lenguajes de marcas, integrando nuevas funcionalidades y mejorando la compatibilidad con la web moderna.
- En 1998, el **W3C (World Wide Web Consortium)** publicó **XML (eXtensible Markup Language)**, un estándar más flexible y potente, también derivado de SGML.
    

---

## **1.6. Características de los lenguajes de marcas**

- Basados en **texto plano**.
- Permiten el uso de **metadatos**.
- **Fáciles de interpretar, procesar y editar**.
- **Flexibles** para representar distintos tipos de datos.
- **Compatibles** con cualquier sistema o plataforma.
- **No ejecutan código**, simplemente describen información.

---
## **1.7. Ventajas de los lenguajes de marcas**

- Independientes del sistema operativo o plataforma.
- Editables con programas sencillos de texto.
- Legibles tanto por personas como por máquinas.
- Su estructura permite **automatizar el procesamiento de la información**.
- Estándares abiertos y ampliamente documentados.

---
## **1.8. Clasificación de los lenguajes de marcas**

1. **Lenguajes descriptivos o semánticos:**  
    Describen la estructura lógica de los datos sin especificar su representación visual. Ejemplo: **XML**.
2. **Lenguajes procedimentales o de presentación:**  
    Describen cómo debe mostrarse la información (estilo, formato, disposición). Ejemplos: **HTML, Markdown, TeX, Wikitext**.
    

---

## **1.9. Aplicación de los lenguajes de marcas en entornos web**

Una **página web** es un documento electrónico adaptado para la World Wide Web, escrito principalmente en **HTML**, y que puede contener:

- Texto, imágenes, enlaces y elementos multimedia.
- **Datos de estilo (CSS)** para definir su presentación visual.
- **Aplicaciones embebidas o scripts (JavaScript)** para añadir interactividad.

El navegador interpreta el código HTML y CSS y **renderiza el resultado visual** en pantalla.
Existen dos tipos de páginas:
- **Estáticas:** su contenido es fijo y no cambia salvo que se edite el archivo.
- **Dinámicas:** se generan de forma automática al solicitarse al servidor, generalmente mediante un lenguaje de programación del lado del servidor (back-end).

_Dato técnico:_ aunque gran parte de las comunicaciones sean inalámbricas, **en algún punto del recorrido de los datos siempre existe un tramo físico de cable**.

---

## **1.10. Arquitectura Web: Front-end y Back-end**

### **Front-end**
- Parte **visible para el usuario** (interfaz y presentación).
- Recibe la información desde el servidor y la representa visualmente.
- **Lenguajes principales:** HTML, CSS y JavaScript.
- Su objetivo es la **usabilidad, accesibilidad y experiencia de usuario**.
### **Back-end**

- Parte **que se ejecuta en el servidor**.
- Gestiona la lógica de la aplicación, la base de datos y las peticiones del cliente.
- El **servidor** actúa como punto central que recibe solicitudes y devuelve respuestas.
- **JavaScript (Node.js)** puede actuar en el lado del servidor, aunque también se considera parte del entorno front-end por su interacción con el usuario.

---
## **1.11. Organizaciones desarrolladoras de estándares**

### **ISO (International Organization for Standardization)**

- Fundada en 1947.
- Promueve la creación de estándares internacionales en todos los campos industriales.
- Publicó el **SGML (ISO 8879)**, que estableció las bases de los lenguajes de marcas modernos.
- Sus normas son **voluntarias y no gubernamentales**.

### **W3C (World Wide Web Consortium)**

- Fundado en 1994 por **Tim Berners-Lee** (creador de la Web).
- Su misión es **tutelar el crecimiento y normalización de la Web**.
- Estandarizó **HTML** y creó las especificaciones de **XML**.
- Promueve la **compatibilidad, accesibilidad y coherencia semántica** de la información en la red.

---
## **1.12. Elementos, etiquetas y atributos en los lenguajes de marcas**

**Elemento:** unidad estructural que agrupa contenido o define una acción.  
- Tiene una **etiqueta de apertura**, un **contenido** y una **etiqueta de cierre**.  
- Algunos elementos pueden ser **vacíos** (sin contenido).
**Etiqueta (tag):** texto entre los símbolos `<` y `>`.
- Ejemplo: `<p>` es la etiqueta de apertura y `</p>` la de cierre.
**Atributo:** propiedad que aporta información adicional sobre un elemento.  
- Se expresa como un par `nombre="valor"` dentro de la etiqueta de apertura.

**Ejemplo en HTML:**

```html
<h1>Título principal</h1>
```

**Ejemplo en XML:**

```xml
<provincia ciudad="Palma de Mallorca">Islas Baleares</provincia>
```

---
## **1.13. Markdown**

### **Introducción**
**Markdown** es un lenguaje de marcado ligero creado por **John Gruber y Aaron Swartz (2004)** bajo licencia BSD.  
Su objetivo es permitir **una escritura sencilla, legible y fácilmente convertible a HTML**.  
Se utiliza ampliamente en plataformas como **GitHub, Reddit, SourceForge o Slack**.
### **Características**

- Se basa en **texto plano**.
- No utiliza etiquetas complejas como HTML, sino **símbolos simples**.
- Su prioridad es la **legibilidad del código fuente** y la **facilidad de conversión a otros formatos**.
### **Sintaxis básica**

- **Encabezados:**  
    `# Título 1`  
    `## Título 2`  
    `### Título 3`
    
- **Listas:**
    - Desordenadas: `-`, `*` o `+`
    - Ordenadas: `1.`, `2.`, `3.`
- **Citas:** `> Texto citado`
- **Bloques de código:**
```
~~~
bloque de código
~~~
```
- **Negrita:** `**texto**`  
- **Cursiva:** `*texto*`
- **Enlaces:** `[texto](https://url.com)`
- **Imágenes:** `![título](https://url-imagen.jpg)`
- **Reglas horizontales:** `---` o `***`

---

**Fecha de modificación:** 05/10/2025
**Revisión:** <font color="#ff0000">No revisado</font>
#DAM 

---

Diferencia entre un lenguaje de programación y lenguaje de marcas:
	El lenguaje es interpretado, no pasa por el procesador.

Primer navegador Mosaic y superado posteriormente por Internet Explorer.
	Lenguaje de marcas se creó a nivel internacional pero Internet Explorer ayudó a actualizar y mejorar el lenguaje de marcas

Puntos importantes:
	Para el lenguaje de marcas sí que utilizamos código que no se procesa.
	Se usa en portales web. 
	El navegador interpreta el código y lo reproduce.
	Es importante que la recepción que tiene el usuario sea agradable y útil.

Back-end:
- Es la estructura que se ejecuta a un servidor. Servidor: Punto de acceso común que sirve servicios informáticos (en este caso)
- Devuelve las peticiones de la parte de front-end
- Lenguaje Javascript --> Se considera back-end pero tiene impacto directo en el usuario por eso se puede considerar Front-end
Front-end:
- Tipo de estructura que proviene del servidor pero lo recibe el usuario
- Este se comunica con el servidor y pide cierta información
- Lenguajes HTML CSS

Dato: En algún momento del recorrido de conexiones universales inalámbricas hay un cable

//Concepto "Memoria Cache" --> Al realizar una petición el usuario, el navegador crea un copia para optimizar ese proceso en un futuro. Es importante realizar una limpieza para optimizar el rendimiento.
