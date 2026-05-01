# 🎨 **1. CSS (lo esencial)**

### **Selectores**

- `h1 { }` → por etiqueta
- `.clase { }` → por clase
- `#id { }` → por id

### **Propiedades más usadas**

- Colores: `color: darkblue;`
- Tamaño texto: `font-size: 22px;`
- Tipografía: `font-family: Arial;`
- Margen párrafos: `margin-bottom: 15px;`
- Viñetas lista: `list-style-type: square;`
- Color item lista: `li { color: darkgreen; }`
- Imágenes:
    - `border: 3px solid black;`
    - `width: 300px;`

### **Tablas**

- `border-collapse: collapse;` → une bordes
- `th { background: lightgray; padding: 8px; }`
- `td { padding: 6px; }`

### **Flexbox esencial**

- `display: flex;`
- `justify-content: …` → horizontal
- `align-items: …` → vertical
- Proporciones: `flex: 1`, `flex: 4` (sidebar 1:4)

---

# 🟨 **2. JS INTRODUCCIÓN**

### **Variables**

- `let` → se puede reasignar, NO redeclarar.
- `const` → no reasigna, pero arrays/objetos SÍ cambian.
- `var` → scope de función, permite redeclarar.

### **Comparaciones**

- `"5" == 5` → true (convierte tipos)
- `"5" === 5` → false (compara tipo y valor)
- `"5" + 2` → `"52"`
- `"5" - 2` → `3`

### **Valores especiales**

- `NaN` → resultado no numérico
- `null` → vacío intencionado
- `undefined` → sin valor asignado

### **Arrays**

Métodos imprescindibles:

- `push()` añade al final
- `pop()` borra último
- `concat()` une arrays
- `join("-")` → `"a-b-c"`
- `sort()` ordena alfabéticamente
- `length` → longitud del array

### **Bucles**

- `for` → número fijo de vueltas
- `while` → condición primero
- `do...while` → ejecuta una vez mínimo

### **Funciones**

```js
function nombre(a,b){  
	return a+b;  
}  
```
- Variables dentro = **locales**
- Variables fuera = **globales**

---

# 🟥 **3. DOM (la parte más importante del examen)**

## **Seleccionar elementos**

|Método|Devuelve|
|---|---|
|`getElementById("id")`|1 elemento|
|`getElementsByClassName("x")`|HTMLCollection (viva)|
|`getElementsByTagName("p")`|HTMLCollection|
|`querySelector("selector")`|primer elemento|
|`querySelectorAll("selector")`|NodeList (NO viva)|

## **Propiedades clave**

- `textContent` → solo texto
- `innerHTML` → HTML + texto
- `value` → valor actual de input
- `getAttribute("value")` → valor definido en el HTML

## **Crear / insertar / eliminar nodos**

```JavaScript
const li = document.createElement("li");  
li.textContent = "Hola";  
padre.appendChild(li); // MUEVE el nodo si ya existía `
``` 
- `createElement()` → crea nodo
- `createTextNode()`
- `appendChild()` → añade al final (MUEVE)
- `insertBefore(nuevo, referencia)`
- `replaceChild(nuevo, viejo)`
- `removeChild(nodo)`

## **Clases y estilos**

- `element.className = "clase1 clase2"`
- `element.setAttribute("class","verde")`
- `element.style.color = "red"`
- `element.style.fontSize = "20px"`

## **Eventos DEL DOM (añadido con DOM 3)**

### **addEventListener**
```js
element.addEventListener("click", funcion);
```
Eventos frecuentes:
- `"click"`
- `"input"`
- `"change"`
- `"keydown"`
- `"blur"` (al perder foco)
- `"focus"`
- `e.preventDefault()` para evitar que un enlace navegue
### **e.target**
Cuando haces click en un botón:
```js
b.addEventListener("click", function(e){
   console.log(e.target);
});
```
`e.target` → el elemento exacto que recibe el clic (el botón).
## **Gestión de inputs**
### **1. Evento input**
Actualiza en tiempo real:
```js
inp.addEventListener("input", (e)=>{
  out.textContent = e.target.value;
});
```
### **2. Evento keydown**

Capturar teclas presionadas:

- Se usa para **impedir letras** como en el DNI.
- Si presionan una letra:
    - No escribirla
    - Mostrar aviso
### **3. Evento blur**

Cuando sales de un input:

→ mostrar lo escrito en mayúsculas.
```js
inp.addEventListener("blur", ()=>{
  out.textContent = inp.value.toUpperCase();
});
```
## **Listas dinámicas**
Añadir elementos numerados:
```js
const li = document.createElement("li");
li.textContent = "Element " + numero;
llista.appendChild(li);
```
Añadir al **principio**:
```js
llista.prepend(li);
```
## **Prevenir acciones**
Para evitar que un enlace navegue:
```js
link.addEventListener("click", (e)=>{
  e.preventDefault();
  msg.textContent = "Missatge...";
});
```
# ⭐ **4. DIFERENCIAS IMPORTANTES (muy preguntadas)**

### **innerHTML vs textContent**

- `innerHTML` → muestra etiquetas
- `textContent` → solo texto plano

### **value vs getAttribute("value")**

- `.value` → valor ACTUAL del input
- `getAttribute("value")` → valor original del HTML

### **appendChild**

- NO copia
- MUEVE el nodo

### **querySelectorAll vs getElementsByClassName**

- `querySelectorAll` → estático
- `getElementsByClassName` → dinámico (se actualiza)
# 🟩 **RESUMEN SUPER-EXPRESS (para memorizar 3 min)**

### **JS**

- `let` reasigna, `const` no.
- `"5" + 2 → "52"`
- `"5" - 2 → 3`
- `==` compara valor, `===` valor+tipo
- Arrays: push/pop/concat/sort/join

### **DOM**

- `querySelector("#id")`
- `innerHTML` vs `textContent`
- `.value` vs `.getAttribute("value")`
- `appendChild` **mueve**
- Eventos: click, input, change, keydown, blur
- `e.target` = elemento clicado
- `e.preventDefault()` evita navegación