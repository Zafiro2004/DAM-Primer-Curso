## 1️⃣ H1, H2, H3… (jerarquía real)

**Regla clave**  
✔ **Un solo `<h1>` por página**  
✔ Representa el **tema principal de la página**, no el logo

Ejemplo correcto:

```html
<h1>Nearly Alive – Cortometraje de animación 3D</h1>
```

Luego:

- `<h2>` → secciones principales
    
- `<h3>` → subsecciones dentro de un `<h2>`
    
- `<h4>`… solo si hace falta
    

Importante:

- No se usan por tamaño visual
    
- Se usan por **estructura semántica**
    

Tu sección “PRODUCCIÓN” debería ser un `<h2>`, y cada fase un `<h3>` (eso lo estás haciendo bien).

---

## 2️⃣ Estructura semántica básica (esto es FUNDAMENTAL)

El esqueleto correcto de una página moderna es:

```html
<body>
  <header></header>

  <main>
    <section></section>
    <section></section>
    <section></section>
  </main>

  <footer></footer>
</body>
```

### ¿Por qué importa esto?

Google **sí entiende** estas etiquetas. No posicionan solas, pero **ayudan a interpretar el contenido**.

---

## 3️⃣ `<main>` (muy importante y mucha gente lo ignora)

✔ **Solo uno por página**  
✔ Contiene el contenido principal  
✔ No debe incluir header ni footer

Correcto:

```html
<main>
  <section id="inicio"></section>
  <section class="short-info"></section>
</main>
```

Incorrecto:

```html
<main>
  <header>...</header>
</main>
```

Google usa `<main>` para identificar **de qué va la página**.

---

## 4️⃣ `<section>` vs `<div>` (esto suele confundirse)

### Usa `<section>` cuando:

- El contenido tiene **sentido propio**
    
- Tiene (o podría tener) un heading
    

Ejemplo:

```html
<section>
  <h2>Producción</h2>
  ...
</section>
```

### Usa `<div>` cuando:

- Es solo **layout**
    
- No aporta significado semántico
    

Ejemplo:

```html
<div class="short-img"></div>
```

**Regla rápida**:  
👉 Si puedes ponerle un título → `section`  
👉 Si solo es estructura → `div`

---

## 5️⃣ `<article>` (cuándo sí)

Usa `<article>` cuando el contenido:

- Podría entenderse **de forma independiente**
    
- Podría compartirse o indexarse solo
    

Ejemplos correctos:

- Un post
    
- Una fase de producción explicada
    
- Una ficha de proyecto
    

En tu caso, es correcto usar `<article>` en:

```html
<article class="step-row">
```

---

## 6️⃣ `<header>` y `<footer>` (sí pueden repetirse)

Puedes tener:

- un `<header>` global
    
- headers dentro de sections o articles
    

Ejemplo correcto:

```html
<section>
  <header>
    <h2>Animación</h2>
  </header>
</section>
```

Google lo entiende perfectamente.

---

## 7️⃣ Imágenes y SEO (muy importante)

✔ **Siempre `alt` descriptivo**, no genérico

Mal:

```html
<img alt="imagen">
```

Bien:

```html
<img alt="Storyboard del cortometraje Nearly Alive">
```

No keyword stuffing, solo descripción real.

---

## 8️⃣ Enlaces internos

- Usa `<nav>` solo para navegación real
    
- Los `<a>` deben tener texto claro
    

Mal:

```html
<a href="#">click aquí</a>
```

Bien:

```html
<a href="/about.html">Sobre el proyecto Nearly Alive</a>
```

---

## 9️⃣ Lo que NO afecta al SEO (mitos)

❌ Usar muchas etiquetas semánticas no posiciona solo  
❌ Divs no penalizan  
❌ El orden visual no importa, **el orden en el HTML sí**

---

## 10️⃣ Cómo quedaría tu estructura ideal (simplificada)

```html
<body>
  <header>
    <nav>...</nav>
  </header>

  <main>
    <section id="inicio">
      <h1>Nearly Alive – Cortometraje de animación 3D</h1>
    </section>

    <section>
      <h2>Proyecto</h2>
    </section>

    <section>
      <h2>Historia</h2>
    </section>

    <section>
      <h2>Producción</h2>

      <article>
        <h3>Guión y Storyboard</h3>
      </article>
    </section>
  </main>

  <footer>
    <p>© Mythic Projects</p>
  </footer>
</body>
```

---

## Conclusión clara

SEO hoy en día es:

- **estructura clara**
    
- **jerarquía lógica**
    
- **semántica correcta**
    
- **contenido real y bien escrito**
    

Y por lo que has enseñado, **vas bastante bien**, solo necesitas:

- añadir `<main>`
    
- asegurar un único `<h1>`
    
- revisar `alt` de imágenes
    

Si quieres, en el siguiente mensaje puedo **reorganizar tu HTML actual** exactamente como debería quedar para SEO sin cambiar el diseño.