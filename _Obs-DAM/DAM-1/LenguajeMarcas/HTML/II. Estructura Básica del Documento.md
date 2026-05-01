# **II. Estructura Básica del Documento**

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