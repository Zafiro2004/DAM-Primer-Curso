# 📖 Lectura de texto en Java

## Clases principales

Para leer archivos de texto en Java se utilizan principalmente estas clases:

- `FileReader` → conecta el programa con el archivo de texto.
- `BufferedReader` → permite leer de forma eficiente y línea a línea.

Normalmente se usan juntas.

```Java
BufferedReader br = new BufferedReader(new FileReader("archivo.txt"));
```

---

## Lectura línea a línea

La forma más habitual de leer un archivo de texto es usando `readLine()` dentro de un bucle.

```Java
try (BufferedReader br = new BufferedReader(new FileReader("archivo.txt"))) {
    String linea;
    while ((linea = br.readLine()) != null) {
        System.out.println(linea);
    }
} catch (IOException e) {
    e.printStackTrace();
}
```

### Detalles importantes

- `readLine()` devuelve:
    - una línea de texto (sin el salto de línea)
    - `null` cuando se llega al final del archivo

---

## try-with-resources

- Garantiza que el archivo se cierre correctamente.
- Evita fugas de recursos.
- Es la forma recomendada en Java moderno.

```Java
try (BufferedReader br = new BufferedReader(new FileReader("datos.txt"))) {
    System.out.println(br.readLine());
}
```

No es necesario llamar manualmente a `close()`.

---

## Errores habituales

- ❌ Leer un archivo que no existe → `FileNotFoundException`
- ❌ No cerrar el archivo
- ❌ No controlar el final del archivo (`null`)

---

🔗 Relacionado:

- [[Flujos en Java]]
- [[Escritura de texto en Java]]
- [[Gestión de archivos y directorios en Java]]

#java #io #lectura