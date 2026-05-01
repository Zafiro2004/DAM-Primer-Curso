## 1. Cómo instalar GParted

La forma más rápida y estándar es a través de la terminal (Ctrl + Alt + T).

1. **Actualizar los repositorios:**`sudo apt update`
    
     
    
2. **Instalar la aplicación:**`sudo apt install gparted`
    
3. **Ejecutarla:**Puedes buscar "GParted" en el menú de aplicaciones o lanzarla desde la terminal con:`sudo gparted`
    
     
    

> Nota: GParted siempre te pedirá tu contraseña de administrador porque modificar particiones es una tarea crítica del sistema.

La otra forma es mediante el centro de aplicaciones

## 2. Uso de GParted (Interfaz Gráfica)

Una vez abierto, el proceso es muy visual. Sigue este orden lógico:

### A. Seleccionar el disco físico

En la esquina **superior derecha** verás un desplegable (ej: `/dev/sda` o `/dev/nvme0n1`). Asegúrate de elegir el disco correcto antes de tocar nada.

 

### B. Crear una Tabla de Particiones (Solo si el disco es nuevo)

Si el disco está vacío o quieres borrarlo por completo:

1. Ve al menú **Dispositivo** > **Crear tabla de particiones**.
2. Elige **gpt** (recomendado para sistemas modernos y discos grandes).

### C. Crear una nueva partición

1. Haz clic derecho sobre el espacio gris marcado como **"Sin asignar"** (unallocated).
2. Selecciona **Nuevo**.
3. Configura:
    - **Tamaño:** En MiB.
    - **Sistema de archivos:** Generalmente **ext4** para Linux o **ntfs** si quieres usarlo también en Windows.
    - **Etiqueta:** Un nombre para identificarlo (ej: "MisDatos").

### D. Aplicar los cambios (Paso Crítico)

En GParted, los cambios no se hacen al momento. Se quedan en una "lista de pendientes" abajo.

 

- Para que se ejecuten realmente, debes hacer clic en el botón de **Visto bueno (Checkmark verde)** o ir a **Editar** > **Aplicar todas las operaciones**.

---

## 1. Identificar el disco

Antes de tocar nada, debes saber exactamente qué disco quieres modificar. **¡Ten mucho cuidado!** Un error aquí podría borrar datos importantes.

- `lsblk`: Muestra una estructura de árbol de tus discos y particiones. Es la forma más visual de verlo.
- `sudo fdisk -l`: Lista todos los discos con detalles técnicos (tamaño, sectores, identificadores).

> Nota: Los discos suelen llamarse /dev/sda, /dev/sdb, o /dev/nvme0n1 si son discos M.2.

## 2. Iniciar la herramienta `fdisk`

Para empezar a trabajar en un disco específico (por ejemplo, el disco `sdb`), usa el comando:

```bash
sudo fdisk /dev/sdb
```

Entrarás en un modo interactivo donde usarás comandos de una sola letra. Los más comunes son:

|**Comando**|**Acción**|
|---|---|
|**m**|**M**uestra el menú de ayuda con todos los comandos.|
|**p**|Imprime (muestra) la tabla de **p**articiones actual del disco.|
|**n**|Crea una **n**ueva partición.|
|**d**|**D**elecciona (borra) una partición existente.|
|**t**|Cambia el **t**ipo de partición (ej. Linux, SWAP, NTFS).|
|**w**|**W**rite: Escribe los cambios en el disco y sale (es el paso final).|
|**q**|**Q**uit: Sale sin guardar ningún cambio.|

## 3. Pasos para crear una partición nueva

Una vez dentro de `fdisk /dev/sdX`, sigue este flujo habitual:

1. **Pulsar `n`**: Para crear la partición.
2. **Elegir tipo**: Selecciona `p` para primaria o `e` para extendida (lo normal es primaria).
3. **Número de partición**: Por defecto es la 1 (si el disco está vacío).
4. **Primer sector**: Pulsa `Enter` para aceptar el valor por defecto (inicio del disco).
5. **Último sector (Tamaño)**: Aquí defines cuánto medirá. Ejemplo: ` 0G` para 10 Gigabytes o `+500M` para 500 Megabytes.
6. **Pulsar `w`**: Muy importante. Hasta que no pulses la "w", nada de lo anterior se aplicará físicamente al disco.