# 🗂️ Gestión de archivos y directorios en Java

## ¿Para qué sirve la gestión de archivos?

Además de leer y escribir contenido, en Java es muy habitual:

- comprobar si un archivo existe
- crear o eliminar archivos
- crear o eliminar directorios
- trabajar con rutas del sistema

Para ello Java proporciona varias clases específicas.

---

## Clases principales

- `File` → representa un archivo o un directorio (forma clásica).
- `Path` → representa una ruta del sistema.
- `Files` → permite realizar operaciones sobre rutas.

---

## 📁 Clase File

La clase `File` permite trabajar con archivos y carpetas.

### Ejemplo básico

```Java
File archivo = new File("datos.txt");

if (archivo.exists()) {
    System.out.println("El archivo existe");
}
```

### Operaciones comunes

- `exists()` → comprueba si existe
- `isFile()` → comprueba si es archivo
- `isDirectory()` → comprueba si es directorio
- `getName()` → obtiene el nombre
- `getPath()` → obtiene la ruta

---

## 🛣️ Clases Path y Files

Son la opción moderna y recomendada frente a `File`.

### Crear un objeto Path

```Java
Path ruta = Paths.get("datos.txt");
```

### Comprobar si existe

```Java
if (Files.exists(ruta)) {
    System.out.println("La ruta existe");
}
```

---

## 📄 Crear y eliminar archivos

### Crear un archivo

```Java
Path archivo = Paths.get("nuevo.txt");
Files.createFile(archivo);
```

### Eliminar un archivo

```Java
Files.delete(archivo);
```

⚠️ Crear un archivo que ya existe o borrar uno que no existe lanza una excepción.

---

## 📂 Crear y eliminar directorios

### Crear un directorio

```Java
Path carpeta = Paths.get("datos");
Files.createDirectory(carpeta);
```

### Eliminar un directorio

```Java
Files.delete(carpeta);
```

⚠️ Solo se pueden eliminar directorios vacíos.

---

## Errores y excepciones habituales

- ❌ `FileAlreadyExistsException`
- ❌ `NoSuchFileException`
- ❌ `DirectoryNotEmptyException`

Siempre es buena práctica comprobar la existencia antes de operar.

---

🔗 Relacionado:

- [[Lectura de texto en Java]]
- [[Escritura de texto en Java]]
- [[CSV en Java]]

#java #io #archivos #directorios