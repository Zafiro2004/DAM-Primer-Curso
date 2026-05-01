# **I. Conceptos Fundamentales**

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