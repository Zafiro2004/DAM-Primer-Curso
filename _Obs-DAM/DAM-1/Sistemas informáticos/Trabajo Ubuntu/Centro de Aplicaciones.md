## 2. GESTIÓN DE SOFTWARE: CENTRO DE APLICACIONES

El Centro de Aplicaciones funciona como una interfaz amigable para interactuar con los repositorios oficiales de Ubuntu y la tienda de paquetes Snap.

### 2.1. Funciones Principales de Gestión

La administración de programas a través de esta interfaz se divide en tres acciones operativas:

- **Exploración y Búsqueda:** Clasificación del software por categorías (Productividad, Juegos, Desarrollo) y localización de aplicaciones específicas mediante un motor de búsqueda indexado.
    
- **Instalación Segura:** Descarga e integración de software desde fuentes verificadas. Al iniciar una instalación, el sistema requiere la **autenticación del administrador** (sudo) para garantizar la integridad del sistema operativo.
    
- **Desinstalación:** Eliminación de paquetes de software de forma limpia, liberando espacio en el almacenamiento y eliminando las dependencias que ya no sean necesarias.
    

### 2.2. Formatos de Paquetes: Snap y DEB

Ubuntu utiliza principalmente dos tecnologías para la distribución de aplicaciones en su centro de software:

- **Paquetes Snap:** Contenedores que incluyen la aplicación y todas sus dependencias. Su principal ventaja es la **actualización automática** y la ejecución en un entorno aislado (sandboxing) para mayor seguridad.
    
- **Paquetes DEB:** El formato tradicional de las distribuciones basadas en Debian. Estos paquetes dependen de las librerías compartidas del sistema operativo.
    

### 2.3. Gestión de Repositorios (Software y Actualizaciones)

El origen del software que muestra el centro de aplicaciones se configura en la utilidad **"Software y actualizaciones"**. Los repositorios se dividen en cuatro áreas principales:

1. **Main:** Software libre y de código abierto soportado oficialmente por Canonical.
    
2. **Restricted:** Controladores (drivers) propietarios para dispositivos específicos (como tarjetas gráficas NVIDIA).
    
3. **Universe:** Software libre mantenido por la comunidad de usuarios.
    
4. **Multiverse:** Software con restricciones legales o de copyright (codecs de vídeo, fuentes privativas).
    

### 2.4. Actualización del Sistema

La seguridad y estabilidad del sistema dependen de la **Actualización de software**:

- **Parches de Seguridad:** Correcciones críticas que el sistema suele aplicar de forma prioritaria.
    
- **Actualizaciones de Aplicaciones:** Nuevas versiones de los programas instalados que añaden funcionalidades o corrigen errores.
    
- **Actualizaciones del Kernel:** Mejoras en el núcleo del sistema para el soporte de nuevo hardware y optimización del rendimiento.