# El Modelo de Capas en un Sistema Operativo

![[Capas UBUNTU.png|500]]
La imagen muestra la arquitectura de un sistema operativo en forma de capas concéntricas, donde cada capa interactúa directamente con la que tiene inmediatamente debajo o encima.

- **Hardware (Capa Central):** Son los componentes físicos de la computadora: procesador (CPU), memoria RAM, disco duro, tarjeta gráfica, etc. Es la base sobre la que funciona todo el software.
    
- **Kernel/Núcleo:** Es el corazón del sistema operativo. Actúa como el **intermediario fundamental entre el hardware y el software**. Sus funciones principales incluyen:
    
    - Gestión de la memoria y los procesos.
        
    - Control de los dispositivos de hardware a través de controladores (drivers).
        
    - Gestión del sistema de archivos.
        
- **Shell:** Es la **interfaz de usuario** del sistema operativo. Su función es interpretar los comandos que introduce el usuario y comunicarlos al kernel. Puede ser:
    
    - **Gráfica (GUI):** Como el escritorio que usas a diario (ventanas, iconos, menús).
        
    - **De línea de comandos (CLI):** Como la terminal, donde se introducen órdenes de texto.
        
- **Aplicaciones (Capa Externa):** Son los programas que utilizamos los usuarios para realizar tareas específicas (navegador web, editor de texto, juegos, etc.). Estas aplicaciones no interactúan directamente con el hardware, sino que hacen peticiones al shell y al kernel para funcionar.
# Diferencias Clave entre Windows y Ubuntu (Linux)
Aunque ambos comparten esta estructura básica de capas, la forma en que la implementan y gestionan es muy diferente:

| Característica                | Windows                                                                                                                                                            | Ubuntu (Linux)                                                                                                                                                                                                                                                 |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Kernel                        | **Kernel NT (Código Cerrado):** Es propiedad de Microsoft y su funcionamiento interno no es público.                                                               | **Kernel Linux (Código Abierto):** Es desarrollado por una comunidad global y su código es accesible para cualquiera.                                                                                                                                          |
| Shell (Entorno de Escritorio) | **Integrado y Difícil de Cambiar:** El entorno gráfico (Explorador) es parte integral del sistema y no se puede sustituir fácilmente por otro.                     | **Modular y Fácilmente Intercambiable:** El entorno gráfico (por defecto, GNOME en Ubuntu) es solo un programa más. Puedes instalar y usar muchos otros (KDE Plasma, Xfce, MATE, etc.) sin problemas. |
| Gestión de Software           | **Instaladores Individuales (.exe, .msi):** Se descargan desde diversas fuentes en internet, lo que puede ser menos seguro y más complejo de mantener actualizado. | **Gestores de Paquetes (APT):** El software se obtiene de repositorios oficiales y seguros, y se instala, actualiza y elimina de forma centralizada con un solo comando o herramienta gráfica.                                                                 |
| Personalización                              |   **Limitada:** Microsoft define en gran medida la apariencia y el funcionamiento del sistema.                                                                                                                                                                 |   **Extrema:** Puedes cambiar prácticamente cualquier aspecto del sistema, desde el entorno de escritorio hasta el núcleo mismo.                                                                                                                                                                                                                                                             |

# Instalación de Shells Gráficos (Entornos de Escritorio) en Ubuntu
En Ubuntu, puedes tener varios entornos de escritorio instalados a la vez y elegir cuál usar al iniciar sesión.
## A. Desde la Consola (Terminal) con `apt`
Es el método más directo y común. Se utiliza el gestor de paquetes `apt` para instalar un "metapaquete" que contiene todo el entorno de escritorio.
1. Abre una terminal (Ctrl + Alt + T).
    
2. Ejecuta el siguiente comando para actualizar la lista de paquetes: `sudo apt update`
    
3. Instala el metapaquete del entorno deseado. Para Kubuntu (KDE Plasma), el comando es: `sudo apt install kubuntu-desktop` _(Otros ejemplos: `xubuntu-desktop` para Xfce, `lubuntu-desktop` para LXQt)_.
    
4. Confirma la instalación y espera a que termine. Durante el proceso, es posible que se te pregunte qué **gestor de pantalla (display manager)** quieres usar por defecto (por ejemplo, `gdm3` o `sddm`). Puedes elegir el que prefieras, aunque el recomendado para KDE es `sddm`.
## B. Desde la Consola (Terminal) con `tasksel`
`tasksel` es una herramienta que facilita la instalación de grupos de software predefinidos.
1. Abre una terminal.
    
2. Instala `tasksel` si no lo tienes: `sudo apt install tasksel`
    
3. Ejecuta `tasksel` con permisos de superusuario: `sudo tasksel`
    
4. Se abrirá una interfaz de texto. Usa las flechas para navegar y la barra espaciadora para marcar el entorno que deseas instalar (por ejemplo, `[ * ] Kubuntu desktop`).
    
5. Pulsa `Tab` para ir a `<Aceptar>` y luego `Enter`. `tasksel` se encargará de descargar e instalar todo lo necesario.
## C. De Forma Gráfica con Synaptic
Synaptic es un potente gestor de paquetes gráfico.

1. Si no lo tienes, instálalo desde la terminal: `sudo apt install synaptic`
    
2. Abre "Gestor de paquetes Synaptic" desde el menú de aplicaciones.
    
3. Haz clic en el botón **Buscar** y escribe el nombre del metapaquete (por ejemplo, `kubuntu-desktop`).
    
4. En los resultados, haz clic derecho sobre el paquete `kubuntu-desktop` y selecciona **Marcar para instalar**.
    
5. Aparecerá una ventana con todas las dependencias que se instalarán. Haz clic en **Marcar**.
    
6. Finalmente, haz clic en el botón **Aplicar** en la barra de herramientas de Synaptic para comenzar la descarga e instalación.