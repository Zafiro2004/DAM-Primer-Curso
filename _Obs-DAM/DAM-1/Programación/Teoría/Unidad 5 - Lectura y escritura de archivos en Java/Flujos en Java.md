# 🔄 Flujos en Java

## ¿Qué es un flujo (stream)?

- Un flujo es un canal por el que circulan datos.
- Conecta un programa con una fuente de datos o un destino.

### Tipos de flujo

- Flujo de entrada: el programa lee datos.
- Flujo de salida: el programa escribe datos.

---

## Flujos de bytes vs flujos de caracteres

### 🔹 Flujos de bytes

- Trabajan con datos binarios.
- No interpretan el contenido como texto.
- Usos habituales:
    - imágenes
    - vídeos
    - audio
    - PDFs

```Java
FileInputStream fis = new FileInputStream("imagen.png");
```

### 🔹 Flujos de caracteres

- Trabajan con texto.
- Interpretan caracteres.
- Usos habituales:
    - archivos .txt
    - archivos .csv

```Java
FileReader fr = new FileReader("datos.txt");
```

---

🔗 Relacionado:

- [[Lectura de texto en Java]]
- [[Escritura de texto en Java]]

#java #io #streams