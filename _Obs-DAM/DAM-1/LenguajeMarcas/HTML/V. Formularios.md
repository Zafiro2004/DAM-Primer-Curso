# **V. Formularios**

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