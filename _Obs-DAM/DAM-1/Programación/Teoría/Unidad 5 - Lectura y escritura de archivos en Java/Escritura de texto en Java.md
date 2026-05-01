# ✍️ Escritura de texto en Java

## Clases principales

Para escribir en archivos de texto en Java se utilizan principalmente estas clases:

- `FileWriter` → conecta el programa con el archivo de texto.
- `BufferedWriter` → permite escribir de forma eficiente.

Normalmente se usan juntas.

```Java
BufferedWriter bw = new BufferedWriter(new FileWriter("archivo.txt"));
```

---

## Escritura básica (sobrescribir)

Por defecto, al usar `FileWriter`, el contenido anterior del archivo se sobrescribe.

```Java
try (BufferedWriter bw = new BufferedWriter(new FileWriter("archivo.txt"))) {
    bw.write("Hola mundo");
    bw.newLine();
    bw.write("Segunda línea");
} catch (IOException e) {
    e.printStackTrace();
}
```

### Métodos importantes

- `write(String texto)` → escribe texto
- `newLine()` → inserta un salto de línea del sistema

---

## Escritura en modo append (añadir al final)

Para no borrar el contenido existente del archivo se utiliza el modo append.

```Java
try (BufferedWriter bw = new BufferedWriter(new FileWriter("archivo.txt", true))) {
    bw.write("Nueva línea añadida");
    bw.newLine();
}
```

El segundo parámetro de `FileWriter`:

- `true` → añade contenido
- `false` (o no ponerlo) → sobrescribe

---

## Importancia de cerrar el archivo

- Si no se cierra:
    - pueden perderse datos
    - el archivo puede quedar corrupto
- `try-with-resources` garantiza el cierre automático

```Java
try (BufferedWriter bw = new BufferedWriter(new FileWriter("archivo.txt"))) {
    bw.write("Texto seguro");
}
```

---

## Errores habituales

- ❌ No usar `newLine()` y obtener todo en una sola línea
- ❌ Olvidar el modo append cuando se necesita
- ❌ No cerrar el archivo

---

🔗 Relacionado:

- [[Flujos en Java]]
- [[Lectura de texto en Java]]
- [[CSV en Java]]

#java #io #escritura