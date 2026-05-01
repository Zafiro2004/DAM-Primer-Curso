# 3. SEGURIDAD DE OBJETOS Y PERMISOS NTFS

Para proteger la información, Windows utiliza Listas de Control de Acceso (ACL) que definen qué usuarios o grupos pueden interactuar con un objeto (carpeta, archivo, etc.).

## 3.1. Cómo añadir Usuarios o Grupos a la Seguridad

El proceso para otorgar permisos es idéntico tanto para una cuenta individual como para un grupo:

1. Hacer clic derecho sobre el objeto y seleccionar **Propiedades**.
    
2. Navegar a la pestaña **Seguridad** y pulsar en **Editar...** (o **Opciones avanzadas** para un control total y gestión de herencia).
    
3. Pulsar el botón **Agregar...**. Se abrirá la ventana "Seleccionar Usuarios o Grupos".
    
4. **Búsqueda del elemento:**
    
    - **Opción rápida:** Escribir el nombre exacto del usuario o del grupo en el cuadro de texto y pulsar "Comprobar nombres".
        
    - **Opción asistida:** Pulsar en **Opciones avanzadas...** > **Buscar ahora**. Aparecerá una lista con todos los objetos (usuarios y grupos) creados en el equipo.
        
5. Seleccionar el elemento deseado y pulsar **Aceptar**.
    
6. **Configuración de privilegios:** Una vez añadido a la lista, seleccionar el nombre y marcar las casillas de la columna "Permitir" (Lectura, Escritura, Modificar, etc.) según sea necesario.
## 3.2. Tabla de Permisos NTFS Básicos
|**Permiso**|**Capacidad sobre el Objeto**|
|---|---|
|**Control Total**|El usuario/grupo puede hacer todo, incluso cambiar permisos a otros.|
|**Modificar**|Permite leer, escribir y eliminar el archivo o carpeta.|
|**Lectura y ejecución**|Permite ver el contenido y ejecutar programas.|
|**Escritura**|Permite crear archivos nuevos y guardar cambios en los existentes.|
|**Denegar**|Anula cualquier otro permiso que el usuario tenga por herencia.|