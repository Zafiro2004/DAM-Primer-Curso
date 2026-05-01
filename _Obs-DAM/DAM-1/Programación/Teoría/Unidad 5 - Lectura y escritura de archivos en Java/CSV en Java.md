# 📑 CSV en Java

## ¿Qué es un archivo CSV?

Un CSV (Comma Separated Values) es un archivo de texto con estructura sencilla:

- Cada línea representa un registro.
- Los valores están separados por comas.
- La primera línea puede ser una cabecera.

Ejemplo:

```PlainText
id,nombre,edad
1,Ana,23
2,Luis,31
```

---

## Lectura de un archivo CSV

Como un CSV es texto plano, se lee igual que un `.txt`, usando `BufferedReader`.

```Java
try (BufferedReader br = new BufferedReader(new FileReader("personas.csv"))) {
    String linea;
    br.readLine(); // saltar cabecera

    while ((linea = br.readLine()) != null) {
        System.out.println(linea);
    }
} catch (IOException e) {
    e.printStackTrace();
}
```

---

## De línea CSV a objeto

Normalmente cada línea del CSV se convierte en un objeto.

```Java
public class Persona {
    private int id;
    private String nombre;
    private int edad;

    public Persona(int id, String nombre, int edad) {
        this.id = id;
        this.nombre = nombre;
        this.edad = edad;
    }

    public static Persona fromCSV(String linea) {
        String[] partes = linea.split(",");
        int id = Integer.parseInt(partes[0]);
        String nombre = partes[1];
        int edad = Integer.parseInt(partes[2]);
        return new Persona(id, nombre, edad);
    }
}
```

---

## De objeto a línea CSV

Para guardar datos, el objeto se convierte de nuevo a texto CSV.

```Java
public String toCSV() {
    return id + "," + nombre + "," + edad;
}
```

---

## Escribir un CSV

```Java
try (BufferedWriter bw = new BufferedWriter(new FileWriter("salida.csv"))) {
    bw.write("id,nombre,edad");
    bw.newLine();

    bw.write(persona.toCSV());
    bw.newLine();
} catch (IOException e) {
    e.printStackTrace();
}
```

---

## Filtrar y transformar datos

Es muy habitual filtrar datos antes de escribirlos.

Ejemplo: escribir solo personas mayores de 18 años.

```Java
if (persona.getEdad() >= 18) {
    bw.write(persona.toCSV());
    bw.newLine();
}
```

---

## Errores habituales

- ❌ No controlar la cabecera
- ❌ No convertir correctamente los tipos (`int`, `double`, …)
- ❌ Ficheros mal separados (comas dentro del texto)

---

🔗 Relacionado:

- [[Lectura de texto en Java]]
- [[Escritura de texto en Java]]
- [[Gestión de archivos y directorios en Java]]

#java #io #csv