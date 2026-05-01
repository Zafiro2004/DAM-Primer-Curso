# 5. HERRAMIENTAS DE MONITORIZACIÓN Y REGISTRO (LOGS)
Cuando un usuario alcanza su nivel de advertencia o supera su cuota de disco, el sistema no siempre muestra un mensaje emergente gigante en la pantalla del administrador. Para visualizar estos avisos y controlar el rendimiento de los usuarios, utilizamos tres herramientas clave:

## 5.1. Visor de Eventos (Event Viewer)

Es la consola donde Windows guarda el historial de todo lo que ocurre en el sistema (Logs).

- **Uso con Cuotas:** Si hemos marcado las casillas de "Registrar un evento", debemos ir a **Registros de Windows > Sistema**. Allí aparecerán alertas (generalmente de tipo "Advertencia" o "Error" originadas por el origen _Ntfs_) indicando qué usuario específico ha llegado a su límite de espacio.
    

## 5.2. Administrador de Tareas (Taskmgr)

Herramienta fundamental para ver el consumo de recursos en tiempo real.

- **Pestaña Detalles:** A diferencia de la pestaña "Procesos", la pestaña "Detalles" nos muestra una lista exhaustiva de todos los ejecutables en funcionamiento. Aquí podemos filtrar por la columna **"Nombre de usuario"** para identificar exactamente qué procesos está corriendo un usuario específico, qué PID (Identificador de Proceso) tienen y cuánta RAM o CPU están consumiendo en ese momento.
    

## 5.3. Editor del Registro (Regedit)

El Registro de Windows es una base de datos jerárquica central que almacena la configuración del sistema operativo, el hardware y las aplicaciones.

- **Utilidad:** Aunque es una herramienta delicada, a través del `regedit` un administrador avanzado puede forzar políticas, modificar el comportamiento del sistema de cuotas, o revisar claves del sistema que determinan cómo se comportan los servicios y usuarios en el entorno local.