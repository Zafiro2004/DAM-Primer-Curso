## 1. EL EXPLORADOR DE ARCHIVOS EN UBUNTU (NAUTILUS)

Nautilus es el administrador de archivos oficial del entorno de escritorio GNOME. Su diseño prioriza la simplicidad y la integración con el sistema de permisos de Linux.

### 1.1. Interfaz y Navegación

La ventana de Archivos se organiza en componentes clave para agilizar la gestión de datos:

- **Barra Lateral:** Contiene los accesos directos a las carpetas personales (`Carpeta personal`, `Documentos`, `Descargas`) y las unidades de almacenamiento conectadas (puntos de montaje).
    
- **Barra de Rutas (Breadcrumbs):** Muestra la ubicación actual de forma jerárquica. Al pulsar $Ctrl + L$, la barra se transforma en una entrada de texto para escribir rutas absolutas (ej. `/home/usuario/Documentos`).
    
- **Área de Contenido:** Espacio central donde se visualizan los iconos o la lista de archivos.
    
- **Menú de Ver:** Permite alternar entre la vista de rejilla y la vista de lista, además de controlar el zoom y los criterios de ordenación (Nombre, Tamaño, Tipo o Fecha de modificación).
    

### 1.2. Gestión de Elementos y Menú Contextual

El manejo de archivos en Ubuntu se basa en el sistema de clics y atajos de teclado estándar, con algunas particularidades:

- **Creación de carpetas:** Acceso mediante clic derecho en un área vacía y selección de **Carpeta nueva**.
    
- **Documentos nuevos:** A diferencia de otros sistemas, Ubuntu requiere que existan plantillas en la carpeta `Plantillas` para que aparezca la opción "Documento nuevo" en el menú contextual.
    
- **Papelera y borrado:** El borrado simple mueve el archivo a la Papelera. Para una eliminación permanente sin pasar por la papelera, se utiliza la combinación $Mayús + Supr$.
    

### 1.3. Visibilidad de Archivos y Carpetas Ocultas

En Linux, la visibilidad de un archivo no depende de un atributo complejo, sino de su nombre:

- **Archivos Ocultos:** Cualquier archivo o carpeta cuyo nombre comience por un punto (ej. `.bashrc` o `.config`) será invisible por defecto.
    
- **Activación de la vista:** Para alternar la visibilidad de estos elementos, se utiliza el atajo de teclado $Ctrl + H$.
    
- **Utilidad:** Estos archivos suelen contener configuraciones personalizadas de las aplicaciones y el entorno de usuario.
    

### 1.4. Propiedades y Permisos de Archivo

Al acceder a las **Propiedades** de un elemento (clic derecho > Propiedades), Ubuntu presenta pestañas críticas para la administración:

- **General:** Muestra el tipo de archivo, el tamaño y la ruta de ubicación.
    
- **Permisos (Crucial en Linux):** Define quién puede **Leer**, **Escribir** o **Ejecutar** el archivo. Se dividen en tres categorías: Propietario, Grupo y Otros.
    
- **Abrir con:** Permite definir la aplicación predeterminada para ese tipo de extensión específica.