# Unidad 2 - Sistemas operativos

## 2.1 Evolución histórica y clasificación de los sistemas operativos

Los **sistemas operativos (SO)** constituyen el **software fundamental que gestiona los recursos del hardware** y proporciona servicios a los programas de aplicación. Su evolución está estrechamente vinculada al progreso del hardware y a las crecientes demandas de los usuarios y la industria.

### 2.1.1 Antecedentes históricos

En las décadas de **1940 y 1950, las computadoras electrónicas carecían de sistemas operativos.** Los operadores introducían instrucciones de manera manual utilizando tarjetas perforadas, una tarea complicada, secuencial y propensa a errores.

La **evolución hacia programas ubicados** permanentemente **en memoria** permitió automatizar la secuencia de ejecución de trabajos (procesamiento por lotes), mejorando la productividad.

En la **década de 1960**, la **llegada de grandes computadoras centrales**, conocidos también como **"mainframes"**,  impulsó el **nacimiento de sistemas avanzados como UNIX**, que introdujeron dos conceptos clave: la **multitarea**, permitiendo la ejecución simultánea de múltiples procesos, y el soporte **multiusuario**, con acceso concurrente mediante terminales remotas.

Durante los **años 80 y 90**, los **avances en microprocesadores** y la llegada de **computadoras personales** llevaron al **desarrollo comercial de sistemas** como MS-DOS, Windows y Mac OS. Más tarde, la aparición de Linux (1991), facilitó la expansión del software libre y el código abierto.
### 2.1.2 Generaciones de los sistemas

**Primera generación (1940–1955): Computación sin sistemas operativos**

Durante esta etapa inicial **no existían los sistemas operativos** tal como los conocemos hoy. Las computadoras eran enormes máquinas electrónicas basadas en **válvulas de vacío** y **tubos electrónicos**, como la **ENIAC** o la **EDVAC**, y solo podían ejecutar un programa a la vez.

La **programación se realizaba directamente en lenguaje máquina**, mediante interruptores, tarjetas perforadas o cinta perforada. Los programadores debían controlar manualmente cada aspecto del hardware: memoria, entrada/salida y ejecución de instrucciones. No había interfaz de usuario ni mecanismos automáticos de gestión de recursos.

Esta etapa representó los **primeros pasos hacia la automatización**, aunque con una eficiencia muy limitada y un uso exclusivo en entornos científicos o militares.

//Aquí insertar imagen de la ENIAC o de una computadora con tarjetas perforadas.

---

**Segunda generación (1955–1965): Procesamiento por lotes y monitores residentes**

Con la llegada de los **transistores** y la mejora de la capacidad de cálculo, surgieron los **primeros programas básicos** que permanecían cargados en memoria para controlar la secuencia de ejecución de tareas, llamados **monitores residentes**, 

También surgió el concepto de **procesamiento por lotes (batch processing)** permitiendo agrupar varios trabajos en un mismo lote que se ejecutaba de forma secuencial sin intervención directa de un humano. Esto optimizó el tiempo de uso del procesador y marcó el nacimiento de los **primeros sistemas operativos rudimentarios**.

Durante esta generación aparecieron sistemas como **IBM 7094** y **FMS (Fortran Monitor System)**, utilizados principalmente en laboratorios e instituciones científicas. Aunque todavía no existía la interacción directa con el usuario, se logró una **mayor automatización y aprovechamiento del hardware**.

//Aquí insertar imagen de una sala de computadoras IBM de los años 50 o de un sistema por lotes.

---

**Tercera generación (1965–1980): Multiprogramación y tiempo compartido**

Esta generación marcó un salto de calidad gracias a la introducción de la **multiprogramación**. La multiprogramación **permite alojar dos o más procesos en memoria**, es por eso que permitió mantener varios programas cargados y ejecutarlos de forma intercalada. Mientras un proceso esperaba por operaciones de entrada/salida, el procesador podía atender otro, **aumentando la eficiencia.**

También surgieron los **sistemas de tiempo compartido (Time-Sharing Systems, TSS)**, que posibilitaban que **varios usuarios trabajaran simultáneamente** en un mismo equipo a través de terminales. Esta innovación dio origen al concepto de **multiusuario**, base para los sistemas modernos.

Entre los sistemas más representativos se encuentran **MULTICS** (Multiplexed Information and Computing Service), que sirvió de inspiración directa para **UNIX**, y los sistemas operativos de IBM como **OS/360**.

Durante esta etapa también se desarrollaron los **lenguajes de alto nivel** y se generalizó el uso de **sistemas operativos modulares**, sentando las bases del software contemporáneo.

//Aquí insertar imagen de terminales conectados a un mainframe o del sistema MULTICS.

---

**Cuarta generación (1980–actualidad): Interactividad, redes y virtualización**

Con la llegada de los **microprocesadores** y la expansión de la **computadora personal (PC)**, los sistemas operativos se volvieron más **accesibles, interactivos y orientados al usuario** final. Surgieron las **interfaces gráficas (GUI)**, que reemplazaron las líneas de comandos por entornos visuales con ventanas, iconos y menús, facilitando la interacción.

Sistemas como **MS-DOS**, **Microsoft Windows**, **macOS** y las diversas distribuciones de **GNU/Linux** marcaron esta etapa. La integración de **redes locales (LAN)** y posteriormente **Internet** transformó el rol del sistema operativo, ya que pasó a gestionar también la comunicación y el acceso remoto.

En décadas recientes, han emergido conceptos como la **virtualización**, los **sistemas distribuidos**, la **computación en la nube** y la **movilidad**. Los sistemas modernos permiten ejecutar múltiples entornos virtuales, sincronizar datos en tiempo real y operar en arquitecturas interconectadas globalmente.

La cuarta generación sigue en evolución constante, con tendencias hacia la **inteligencia artificial integrada**, la **automatización del sistema** y la **seguridad avanzada** como pilares del futuro de los sistemas operativos.

//Aquí insertar imagen de interfaces modernas (Windows, macOS, Linux, Android).

---
### 2.1.3 Clasificación de los sistemas operativos

### 2.1.4 Sistemas operativos más utilizados

#### UNIX / Linux

**UNIX**, desarrollado en los años 70 por **AT&T Bell Labs**, se consolidó como uno de los s**istemas operativos más influyentes de la historia.** Su filosofía de **diseño modular y su estructura jerárquica sentaron las bases para muchos sistemas modernos. Linux**, inspirado en UNIX y considerado un sistema tipo UNIX, **mantiene esos principios y amplía sus capacidades** al ser de **código abierto**, lo que permite su libre distribución y adaptación.

Estos sistemas son **plenamente multitarea y multiusuario**, destacan por su **gran estabilidad y seguridad**, y están orientados principalmente a **entornos de red y servidor.** Aunque tradicionalmente su interfaz se basa en líneas de comandos, e**xisten entornos gráficos como GNOME o KDE** que facilitan su uso. Generalmente se emplean en s**ervidores, supercomputadoras, estaciones de trabajo y sistemas embebidos.**

#### MacOS

El sistema operativo **MacOS**, desarrollado por **Apple Inc.**, está **basado en UNIX BSD** y diseñado exclusivamente para computadoras Mac. Su estructura combina **rendimiento, estética y estabilidad**, ofreciendo una **experiencia de usuario optimizada y coherente.**

Está diseñado como un sistema **multiusuario y multitarea, con una interfaz gráfica elegante y cuidadosamente integrada**. Su funcionamiento se encuentra **estrechamente ligado al hardware Apple**, garantizando **eficacia y seguridad**. Se **orienta principalmente al diseño, la creatividad y la producción multimedia.** 

Entre sus ventajas sobresalen la **excelente integración entre el software y el hardware,** así como la e**stabilidad y el bajo índice de fallos**. No obstante, posee desventajas como la **escasa compatibilidad** con hardware de otros fabricantes, su **alto costo y las limitaciones** en cuanto a personalización.

####  Windows

Desarrollado por **Microsoft**, **Windows** es el sistema operativo **más extendido** tanto en el ámbito doméstico como en el empresarial. Su historia **comienza con MS-DOS** y evoluciona a través de versiones icónicas como **Windows 95, XP, 7, 10 y 11**, adaptándose a las nuevas necesidades tecnológicas y de usuario.

Cuenta con una **interfaz gráfica de usuario intuitiva, multitarea preemptiva, soporte multiusuario y amplias compatibilidades** con hardware y software diverso. Su diseño se centra en la **productividad, la ofimática y la conectividad.** 

Entre sus principales ventajas se encuentra el **gran soporte técnico** disponible, la **extensa comunidad** de usuarios y la abundancia de **programas compatibles**. Sin embargo, presenta desventajas como una **mayor vulnerabilidad a virus** y el hecho de que **requiere licencia para su uso.**

#### iOS y Android

**Android y iOS** son los **sistemas operativos móviles predominantes** en la actualidad. A**ndroid, desarrollado por Google, está basado en Linux** y se distribuye bajo un **enfoque de código abierto.** En contraste, **iOS, desarrollado por Apple, deriva de UNIX BSD y es de carácter propietario.**

Ambos están **diseñados para funcionar en dispositivos móviles** como teléfonos inteligentes, tabletas o relojes inteligentes. Ofrecen **capacidades multitarea, optimización para la eficiencia energética y una interfaz basada en la interacción táctil.** Además, permiten acceder a miles de aplicaciones a través de plataformas como Google Play y App Store.

Entre sus ventajas destacan la **portabilidad, la facilidad de uso y la integración con servicios en la nube** que facilitan la sincronización entre dispositivos. Sin embargo, presentan **limitaciones específicas**: **Android sufre de fragmentación** debido a la diversidad de versiones y fabricantes, mientras que **iOS restringe notablemente la personalización del sistema.**

## 2.2 Funciones de un sistema operativo

Una de las funciones principales del sistema operativo es la de actuar como **intermediario entre el usuario, las aplicaciones y el hardware del equipo.** Su principal objetivo es **gestionar de manera eficiente los recursos físicos y lógicos del sistema**, garantizando que los procesos se ejecuten de forma segura, ordenada y óptima.** Además, proporciona una interfaz que **facilita la comunicación entre el ser humano y la máquina**, ocultando la complejidad técnica del hardware.

#### 2.2.1 Administración del procesador

El sistema operativo **controla la asignación y el uso del procesador** entre los distintos procesos en ejecución. Dado que la CPU solo puede ejecutar una instrucción a la vez, el SO distribuye el tiempo de procesamiento mediante algoritmos de planificación que determinan el orden y la prioridad con que se atienden los procesos.

Entre los más utilizados destacan:

- **Round Robin**: Reparte el tiempo del procesador de manera equitativa entre todos los procesos activos.
- **Por prioridad**: Asigna más tiempo a las tareas con mayor importancia o urgencia.
- **FIFO (First In, First Out)**: Atiende los procesos según su orden de llegada.

Esta gestión busca **maximizar el rendimiento, reducir los tiempos de espera y garantizar la equidad en la ejecución de tareas.**

#### 2.2.2 Administración de la memoria

La memoria principal (RAM) es un recurso limitado que el sistema operativo debe gestionar cuidadosamente. Su función consiste en **asignar, supervisar y liberar espacios de memoria para cada proceso en ejecución**, evitando interferencias entre ellos y asegurando un uso eficiente.

Para ello, se aplican diversas técnicas como:

- **Memoria virtual**: Permite simular más memoria de la disponible físicamente utilizando el almacenamiento secundario.
- **Paginación**: Divide la memoria en bloques o páginas del mismo tamaño para facilitar la gestión.
- **Segmentación**: Organiza la memoria según las necesidades lógicas de los programas (código, datos, pila, etc.).

El objetivo final es **optimizar el rendimiento del sistema y garantizar la estabilidad** de los procesos.

#### 2.2.3 Administración de archivos

También **proporciona una estructura lógica para almacenar y organizar la información** en los dispositivos de almacenamiento. **Define cómo se crean, leen, escriben y eliminan los archivos**, así como la manera en que se agrupan dentro de directorios o carpetas jerárquicas.

Otra de sus funciones en cuanto a la administración de archivos se refiere es **establecer sistemas de permisos y control de acceso** que determinan quién puede leer, modificar o ejecutar un archivo. Esta función resulta esencial para preservar la integridad y la seguridad de los datos.

Ejemplos de sistemas de archivos son **NTFS** (Windows), **ext4** (Linux) y **APFS** (macOS).

#### 2.2.4 Administración de dispositivos

El sistema operativo se encarga de **controlar y coordinar la interacción con los periféricos**, tanto internos (disco duro, tarjeta de video, memoria) como externos (impresoras, ratones, unidades USB).

Para lograrlo, utiliza programas especializados denominados **controladores o drivers**, que **actúan como traductores entre el hardware y el software.**

Gracias a esta función, los dispositivos pueden comunicarse de manera estandarizada y eficiente con el sistema, independientemente del fabricante o del tipo de hardware.

#### 2.2.5 Interfaz con el usuario

La **interfaz de usuario** es el medio por el cual l**os usuarios interactúan con el sistema operativo.** Existen principalmente dos tipos:

- **CLI** (Command Line Interface): **Interfaz basada en texto** donde las instrucciones se introducen mediante comandos escritos. Ejemplo: UNIX, MS-DOS, PowerShell.
- **GUI** (Graphical User Interface): **Interfaz gráfica** que permite la interacción a través de elementos visuales como ventanas, iconos, menús y punteros. Ejemplo: Windows, macOS, GNOME, KDE.

El sistema operativo puede integrar ambos tipos de interfaz, ofreciendo flexibilidad y accesibilidad según las necesidades del usuario.

#### 2.2.6 Seguridad y control de acceso

Una de las funciones más críticas del sistema operativo es **proteger los recursos del sistema y los datos** de los usuarios frente a accesos no autorizados o fallos del sistema.

Para ello, implementa mecanismos como:

- **Autenticación de usuarios** mediante contraseñas, biometría o claves criptográficas.
- **Gestión de permisos y privilegios** que define qué acciones puede realizar cada usuario o proceso.
- **Cifrado de datos** para resguardar la información confidencial.
- **Auditoría y monitoreo de actividades** con el fin de detectar anomalías y garantizar la trazabilidad de los eventos.

Estos mecanismos aseguran la confidencialidad, integridad y disponibilidad de la información, pilares fundamentales de la seguridad informática.

## 2.3 Clasificación de sistemas operativos

Los sistemas se pueden **clasificar** de diversas maneras **dependiendo del número de usuarios** que pueden acceder a él, la **cantidad de tareas** que son capaces de ejecutar simultáneamente y el **propósito o aplicación** para la que han sido diseñados. 
Estas clasificaciones **ayudan a entender cómo están estructurados**, qué tipo de **hardware** requieren y en qué **contextos** son más adecuados:

- Clasificación por **usuarios**
- Clasificación por **tareas**
- Clasificación por **propósito**

Cada tipo de sistema operativo responde a necesidades específicas: desde la gestión de múltiples usuarios en un servidor hasta el control preciso en un robot industrial o la portabilidad en un dispositivo móvil.

### 2.3.1. Sistemas Operativos Monousuario y Multiusuario

#### **Sistemas operativos monousuario**

Los sistemas operativos **monousuario** están diseñados para permitir la **interacción de un único usuario** activo en un momento dado. Esto significa que **solo una persona puede utilizar el sistema directamente**, aunque este sea capaz de ejecutar múltiples procesos de forma simultánea. Se caracterizan por su **sencillez** y por estar **enfocados** en cubrir las **necesidades básicas** de un solo usuario.

Entre sus rasgos principales destacan la existencia de u**n único perfil o sesión activa**, una **gestión simple de recursos y permisos** y una **menor exigencia** en cuanto a **seguridad** se refiere. Son comunes en **equipos personales** o entornos **domésticos** donde **no se requiere la participación de varios usuarios simultáneamente.**
Ejemplos representativos de sistemas monousuario son **MS-DOS** y **Windows 95/98**, que, aunque incorporaban funciones multitarea, estaban concebidos para un único usuario activo.

En cuanto a sus ventajas incluyen f**acilidad de uso, bajo consumo de recursos y administración sencilla.** No obstante, su principal **limitación** radica en la **imposibilidad de compartir recursos entre múltiples usuarios**, lo que reduce su utilidad en entornos colaborativos o empresariales.

//Aquí insertar captura de pantalla de MS-DOS o Windows 98

#### **Sistemas operativos multiusuario**

Un sistema operativo **multiusuario** permite que **varias personas utilicen los recursos de una misma computadora de forma simultánea o remota.** Esta capacidad se logra mediante una gestión eficiente del tiempo y de los recursos del sistema, de manera que cada usuario dispone de un entorno propio y seguro.

Estos sistemas ofrecen **soporte para múltiples cuentas activas, controles avanzados de permisos y mecanismos de seguridad que protegen la integridad de los datos.** Además, implementan políticas de planificación del procesador y gestión de memoria que evitan conflictos entre tareas concurrentes.

Se utilizan **principalmente en servidores, mainframes y redes empresariales**, donde la disponibilidad y la estabilidad son esenciales. Ejemplos representativos son **UNIX, Linux, Windows Server y macOS** en su modo multiusuario.

Entre sus ventajas destacan el **aprovechamiento eficiente de los recursos** compartidos y la **seguridad reforzada,** aunque **requieren una administración más compleja y una correcta configuración** para evitar sobrecargas.

//Aquí insertar captura de pantalla de un servidor Linux (ej. Ubuntu Server con terminal SSH)

### 2.3.2. Sistemas Monotarea y Multitarea

#### **Sistemas operativos monotareas**

Un sistema operativo **monotarea** solo puede ejecutar **una tarea o proceso a la vez**. Mientras una aplicación está en funcionamiento, el sistema no puede realizar otra operación hasta que la anterior haya finalizado.

Estos sistemas **operan de manera secuencial**, ofreciendo un comportamiento simple y predecible, por lo que son **adecuados para equipos antiguos o sistemas embebidos con recursos limitados.** El ejemplo más emblemático es **MS-DOS**, que dependía por completo de que un proceso terminara antes de iniciar otro.

Sus ventajas incluyen **simplicidad, estabilidad y bajo consumo de recursos**, aunque presentan desventajas notables como la **ineficiencia** al no aprovechar el procesador al máximo y su **escasa adaptación** a los entornos modernos.

//Aquí insertar esquema de un procesador único ejecutando un solo hilo de proceso

#### **Sistemas operativos multitarea**

Los sistemas operativos **multitarea** permiten la **ejecución simultánea** **de varios procesos** mediante técnicas de planificación del procesador. Esta organización **distribuye el tiempo de CPU entre las tareas activas**, creando la sensación de ejecución paralela.

Emplean un **planificador de tareas** (scheduler) que **reparte el uso del procesador según prioridades** o turnos. Pueden ser:

- **Preemptivos**: el sistema **interrumpe una tarea** para dar paso a otra **según la planificación.**
- **Cooperativos**: las tareas **ceden voluntariamente** el control del procesador.

Cada **proceso** se ejecuta **en su propio espacio de memoria,** lo que **previene interferencias** y **mejora la estabilidad** general.
Ejemplos de sistemas multitarea son Windows 10/11, macOS, Linux, Android e iOS.

Sus ventajas incluyen **mayor productividad y eficiencia**, al permitir ejecutar tareas en primer y segundo plano. En contrapartida, su **complejidad es mayor, demandando más recursos y una gestión de memoria avanzada** para evitar bloqueos o sobrecargas.

 //Aquí insertar captura de pantalla del “Administrador de tareas” de Windows mostrando varios núcleos activos

---
### 2.3.3. Sistemas Distribuidos

Los sistemas operativos distribuidos **coordinan múltiples equipos conectados** en red para trabajar como un solo sistema lógico, **compartiendo recursos y tareas** con el fin de **incrementar el rendimiento, la disponibilidad y la tolerancia frente a posibles fallos.** Su estructura permite distribuir trabajos, procesos y datos entre los distintos nodos de la red, de modo que los usuarios pueden acceder a los recursos remotos de forma transparente, percibiendo el conjunto como si fuera un único sistema independiente del hardware o la localización física de cada equipo.

Una característica esencial de estos sistemas es la **cooperación en tiempo real entre las computadoras conectadas**, así como la transparencia que ofrecen al usuario, quien interactúa con aplicaciones y servicios sin notar la distribución subyacente. Además, **proporcionan una alta disponibilidad y redundancia**, ya que el sistema se mantiene operativo aunque uno de sus componentes falle; otros nodos pueden tomar el relevo y garantizar la continuidad del servicio. Su arquitectura facilita también la escalabilidad horizontal, permitiendo la incorporación de nuevos nodos para mejorar la capacidad y el desempeño sin interrumpir el funcionamiento.

Ejemplos actuales de sistemas operativos distribuidos y plataformas asociadas incluyen **Google Cloud OS, Amoeba, Plan 9 from Bell Labs, Hadoop y Kubernetes** en Linux, todos ellos **utilizados tanto en servicios empresariales** como en aplicaciones científicas y tecnológicas avanzadas.

Entre sus ventajas más destacadas figuran la **eficiencia para gestionar grandes volúmenes de trabajo**, la **confiabilidad** que proporciona la redundancia, y la **posibilidad de escalar los servicios** según las necesidades. No obstante, enfrentan **problemas** como la complejidad en la **sincronización** de procesos y en la **seguridad** de la comunicación y el **almacenamiento** entre los diferentes nodos de la red, lo que exige medidas técnicas avanzadas para garantizar la integridad y protección de los datos.

//Aquí insertar diagrama de arquitectura de un sistema distribuido (varios nodos conectados en red)

---

### 2.3.4. Sistemas Operativos en Tiempo Real (RTOS)

Un sistema operativo **en tiempo real (Real-Time Operating System, RTOS)** está concebido para **procesar datos y generar respuestas dentro de plazos estrictamente definidos**, lo que lo convierte en una pieza clave en aplicaciones críticas donde la puntualidad es tan relevante como la corrección del resultado. Estos sistemas resultan **indispensables en ámbitos como la automoción, la medicina, la aeronáutica y el control industrial**, ya que cada acción debe ejecutarse en instantes concretos y nunca sufrir retrasos significativos que puedan comprometer la seguridad o la eficiencia.

Las características principales de los sistemas operativos en tiempo real incluyen la c**apacidad de proporcionar respuestas deterministas ante la ocurrencia de eventos**, una **alta fiabilidad y disponibilidad** frente a fallos y una **latencia mínima en la gestión de interrupciones**. Estas cualidades garantizan que las operaciones más importantes se completen dentro del margen temporal exigido, independientemente de la carga de trabajo o la complejidad del sistema. En estos entornos, el sistema está preparado para reaccionar a eventos inesperados y reiniciar automáticamente procesos en caso de error para mantener siempre disponible el servicio.

​Ejemplos conocidos de sistemas operativos en tiempo real son V**xWorks, QNX, RTLinux, FreeRTOS e Integrity**, empleados en aplicaciones industriales, en el control de vuelo y en dispositivos médicos, donde la fiabilidad y la estabilidad son aspectos prioritarios. Además, estos sistemas **pueden clasificarse en dos tipos:** los **duros o hard real-time**, donde no se permiten retrasos de ningún tipo, como ocurre en sistemas de control de vuelo, **y los blandos o soft real-time**, en los que pequeños retrasos están permitidos, como sucede en la transmisión de audio o vídeo.

Entre sus **ventajas** más representativas sobresalen la **precisión y la estabilidad** en la gestión de operaciones críticas, así como la **seguridad** que aportan en entornos donde no se admiten fallos. No obstante, su especialización genera algunas **desventajas**, ya que tienden a ser **menos flexibles y su implementación puede suponer un elevado coste** económico y técnico.

//Aquí insertar imagen de un sistema de control industrial con FreeRTOS o QNX

---
### 2.3.5. Sistemas Operativos Móviles

Los sistemas operativos móviles están **diseñados específicamente para dispositivos portátiles** como teléfonos inteligentes, tabletas o relojes inteligentes, con un enfoque principal en la **eficiencia energética, la conectividad constante y la interacción táctil**, aspectos fundamentales para garantizar una experiencia fluida y segura en movilidad.

​En cuanto a sus características, estos sistemas **ofrecen una interfaz gráfica intuitiva y optimizada para el uso en pantallas táctiles**, una **gestión dinámica de la batería y la memoria** que permite maximizar la autonomía de los dispositivos y evitar ralentizaciones, así como una alta **integración con sensores, cámaras y redes móviles.** El acceso a tiendas de aplicaciones y la pertenencia a un ecosistema conectado de servicios permiten a los usuarios personalizar y ampliar las capacidades de sus dispositivos mediante la descarga de apps, herramientas y funciones especializadas.

​Ejemplos destacados de sistemas operativos móviles incluyen los vistos anteriormente, **Android**, basado en el kernel de Linux, **iOS** de Apple, fundamentado en UNIX y también **HarmonyOS** de Huawei y **KaiOS**, que se emplea principalmente en teléfonos inteligentes básicos y dispositivos de bajo costo.

​Sus principales **ventajas residen en la portabilidad, la facilidad de uso y la gran conectividad** que ofrecen, facilitando el acceso a servicios y sincronización en la nube. Sin embargo, suelen **presentar desventajas como un control más limitado del usuario sobre el sistema y ciertas restricciones a la personalización**, especialmente en plataformas más cerradas como iOS.

//Aquí insertar captura de pantalla del escritorio de Android o iOS

---
### 2.3.6. Sistemas Operativos de Red

Los sistemas operativos de servidor están **diseñados para gestionar y coordinar equipos conectados en red**, facilitando el intercambio de archivos, impresoras, aplicaciones y otros recursos compartidos. Su función principal es permitir que **múltiples usuarios accedan simultáneamente** a servicios centralizados, **garantizando la seguridad, el control y la eficiencia** en el uso de los recursos, ya sea dentro de redes locales (LAN) o a través de redes más amplias (WAN).

Entre sus características principales destacan la **administración avanzada de usuarios y permisos en red**, el **soporte para servicios de comunicación** como correo electrónico y bases de datos, y la capacidad de **mantener un control centralizado sobre la seguridad y los recursos compartidos.** Estos sistemas operativos están diseñados para ser escalables y adaptarse a redes que pueden crecer en tamaño y complejidad sin perder rendimiento o estabilidad.

Ejemplos representativos incluyen **Novell NetWare, Windows Server**, varias distribuciones orientadas a servidor de Linux, y FreeBSD Server, todos ellos ampliamente utilizados en entornos empresariales, educativos y de infraestructuras de red complejas.

Entre las ventajas que ofrecen se encuentran la **mejora en la colaboración entre usuarios, altos niveles de seguridad y la posibilidad de administrar centralizadamente los recursos**, optimizando la gestión y el mantenimiento. Por otro lado, su **implementación requiere configuración experta y hardware adecuado** para garantizar un funcionamiento óptimo, lo que puede **aumentar los costos y la necesidad de personal cualificado.**

//Aquí insertar captura del panel de administración de Windows Server o Ubuntu Server (modo red)

---
### 2.3.7. Sistemas Embebidos

Los sistemas embebidos son sistemas operativos **desarrollados para integrarse dentro de un dispositivo específico,** ejecutando funciones limitadas y precisas **vinculadas a la finalidad concreta del hardware.** Se emplean habitualmente en electrodomésticos, automóviles, cajeros automáticos, sistemas de control industrial y dispositivos del Internet de las Cosas (IoT), donde la fiabilidad y el rendimiento son factores clave.

En términos de características, estos sistemas destacan por su t**amaño reducido y rapidez en el arranque**, facilitando respuestas inmediatas incluso en equipos con recursos limitados. Mantienen un **bajo consumo de energía**, condición fundamental para trabajar en dispositivos que deben conservar autonomía durante largos periodos. La **interacción con el usuario suele ser mínima o indirecta;** su funcionamiento es altamente automatizado y su estabilidad resulta crítica cuando se emplean en entornos donde un error podría afectar la seguridad o el desempeño del dispositivo.

Ejemplos populares incluyen **FreeRTOS**, **Embedded Linux**, **QNX Neutrino y TinyOS**, elegidos por su capacidad para cumplir tareas específicas en ámbitos industriales, médicos y de consumo. 

La principal ventaja de los sistemas embebidos reside en su **estabilidad, eficiencia y control exacto del hardware**, ya que aprovechan al máximo los recursos disponibles sin incurrir en el sobreconsumo característico de los sistemas de propósito general. Por otro lado, **su actualización puede ser compleja y su adaptabilidad limitada**, ya que están diseñados para cumplir una función concreta y no suelen permitir la incorporación de nuevas prestaciones o cambios relevantes una vez implementados en el dispositivo final.

//Aquí insertar foto de un dispositivo IoT o panel de control de automóvil con sistema embebido

---
## 2.4 Tipos de Aplicaciones

Las aplicaciones informáticas son **programas diseñados para ejecutar tareas específicas aprovechando los recursos y servicios que ofrece el sistema operativo.** Constituyen la capa de interacción más directa entre el usuario y el equipo, ya que permiten realizar desde operaciones básicas de mantenimiento hasta procesos complejos de análisis, diseño o gestión. Estas herramientas abarcan un amplio espectro funcional, desde utilidades esenciales para el correcto funcionamiento del sistema hasta plataformas avanzadas que transforman los entornos profesionales, educativos y de ocio.

//Aquí insertar imagen ilustrativa general — escritorio con varias aplicaciones abiertas (Office, navegador, reproductor multimedia, etc.)

---
### 2.4.1. Aplicaciones de Sistema

Las aplicaciones de sistema cumplen una **función esencial en la estabilidad y seguridad del entorno operativo.** Están orientadas a **mantener el correcto funcionamiento del equipo, reforzar la protección ante amenazas y optimizar el uso de los recursos.** Ejemplos representativos son los antivirus como Windows Defender o Avast, los gestores de archivos como el Explorador de Windows o Finder en macOS, y las herramientas de limpieza o diagnóstico como CCleaner o BleachBit.

Estas aplicaciones **suelen ejecutarse en segundo plano, monitorizando el rendimiento del procesador, la memoria y el almacenamiento.** Gracias a ello, contribuyen a prolongar la vida útil del sistema y garantizar su eficiencia operativa. No obstante, algunas pueden consumir recursos de manera excesiva si se ejecutan simultáneamente o si no están bien configuradas.

//Aquí insertar captura del “Administrador de tareas” o del “Panel de control” mostrando utilidades del sistema.

---
### 2.4.2. Aplicaciones de Productividad

Las aplicaciones de productividad se enfocan en **aumentar la eficiencia en el ámbito laboral, académico o personal.** Facilitan la **creación, organización y gestión de información** mediante herramientas como procesadores de texto, hojas de cálculo, presentaciones, calendarios y bases de datos. Ejemplos ampliamente utilizados son **Microsoft Office, Google Workspace o la suite libre LibreOffice.**

En los últimos años, se han incorporado **soluciones más colaborativas y en la nube, como Notion, Trello, Asana o Evernote,** que permiten coordinar tareas y proyectos en tiempo real. Estas aplicaciones destacan por su **facilidad de uso, sincronización entre dispositivos y capacidad para integrar múltiples funciones** en una misma interfaz. Su principal ventaja radica en la **mejora de la organización y la productividad**, aunque dependen en gran medida de la conexión a internet y pueden presentar problemas de compatibilidad entre formatos.

//Aquí insertar captura de un procesador de texto o una hoja de cálculo (por ejemplo, Microsoft Word o Google Sheets).

---
### 2.4.3. Aplicaciones Empresariales

Las aplicaciones empresariales están **orientadas a la administración integral de los recursos y procesos de una organización.** A través de ellas, las empresas pueden **centralizar información, automatizar tareas y mejorar la comunicación entre departamentos.** Los sistemas **ERP** (Enterprise Resource Planning), como **SAP, Odoo u Oracle ERP**, integran áreas como producción, contabilidad y logística; mientras que los **CRM** (Customer Relationship Management), como **Salesforce o HubSpot**, se especializan en la gestión de clientes y ventas.

Asimismo, las plataformas de **Business Intelligence como Power BI o Tableau** permiten **analizar grandes volúmenes de datos y generar informes estratégicos** para la toma de decisiones. Estas herramientas se caracterizan por su capacidad de integración, escalabilidad y orientación a la eficiencia organizacional. Su principal f**ortaleza radica en la automatización de procesos y el acceso en tiempo real a la información**, aunque suelen **requerir inversión económica, formación técnica y una adecuada implementación** para aprovechar todo su potencial.

//Aquí insertar captura de una interfaz de ERP o panel de análisis empresarial (por ejemplo, SAP o Power BI).

---
### 2.4.4. Aplicaciones Educativas

Las aplicaciones educativas aprovechan la tecnología para mejorar los procesos de enseñanza y aprendizaje, tanto en entornos formales como en el autoaprendizaje. Plataformas como **Moodle, Google Classroom o Edmodo** permiten impartir **clases virtuales, gestionar contenidos y realizar evaluaciones en línea.** Otras aplicaciones, como **Duolingo, Khan Academy o los simuladores PhET**, p**roporcionan experiencias interactivas** que refuerzan la comprensión de conceptos mediante la práctica.

Este tipo de software se distingue por su carácter **accesible y adaptable, ofreciendo recursos multimedia, actividades gamificadas y herramientas de seguimiento del progreso** del estudiante. Gracias a su flexibilidad, los usuarios pueden aprender a su propio ritmo y desde cualquier lugar. Sin embargo, su efectividad puede verse limitada por la conectividad o la falta de interacción directa con el docente.

//Aquí insertar captura de Moodle o Google Classroom mostrando una clase virtual o actividad educativa.

---
### 2.4.5. Aplicaciones de Entretenimiento

Las aplicaciones de entretenimiento constituyen una de las categorías más populares del software actual, ya que **convierten los dispositivos digitales en centros de ocio interactivo.** A través de ellas, los usuarios acceden a música, series, películas, videojuegos y redes sociales. Ejemplos emblemáticos incluyen **Netflix y Disney+** en el ámbito del streaming audiovisual, Spotify en la reproducción musical, **Steam** como plataforma de videojuegos, y redes como **TikTok, Instagram o YouTube,** que integran contenido generado por los propios usuarios.

Estas aplicaciones destacan por su **diseño visual atractivo, la personalización de la experiencia y la integración con servicios en la nube.** Han transformado la forma en que se consume el entretenimiento, permitiendo el **acceso instantáneo a contenidos desde múltiples dispositivos.** A pesar de sus ventajas, pueden generar dependencia digital y un consumo elevado de datos o energía.

//Aquí insertar captura del catálogo de Netflix o de la interfaz de Spotify.

---
### 2.4.6. Aplicaciones Web y Móviles

Las aplicaciones web y móviles representan la evolución más reciente en el desarrollo de software, caracterizándose por su **accesibilidad, portabilidad y capacidad de actualización continua.** Las aplicaciones web se **ejecutan directamente desde el navegador** sin necesidad de instalación, mientras que las móviles se diseñan para dispositivos portátiles con sistemas operativos como Android o iOS.

Ejemplos destacados **incluyen servicios de comunicación** como WhatsApp, Telegram o Zoom; **plataformas de correo y colaboración** como Gmail y Slack; y **herramientas creativas** como Canva o Figma. Todas ellas **aprovechan la conectividad a internet para sincronizar datos y ofrecer experiencias interactivas** en tiempo real.

Su principal fortaleza es la **disponibilidad inmediata** desde cualquier lugar y dispositivo, además de la i**ntegración con la nube y la facilidad para compartir información**. Sin embargo, **dependen de la conexión a la red** y pueden presentar riesgos de privacidad o seguridad si no se utilizan adecuadamente.

//Aquí insertar captura de una aplicación móvil popular (por ejemplo, WhatsApp o Canva).

---
### 2.4.7. Aplicaciones Especializadas

Finalmente, las aplicaciones **especializadas, técnicas o científicas** se orientan a **tareas de alta precisión en campos como la ingeniería, la investigación, la medicina o el diseño asistido por computadora.** Ejemplos representativos son **MATLAB** y **RStudio** en análisis numérico y estadístico, **AutoCAD y SolidWorks** en diseño industrial, o **Blender** y **Houdini** en modelado y simulación.

Su principal valor radica en la **exactitud, la potencia de cálculo y la posibilidad de trabajar con modelos complejos.** Aunque su implementación puede implicar **costos elevados y requerir conocimientos técnicos avanzados**, son herramientas indispensables para el desarrollo científico y tecnológico moderno.

//Aquí insertar captura de MATLAB o AutoCAD en funcionamiento.

---

## 2.5. Licencias y Tipos de Licencias de Software

### 2.5.1. Concepto

Una **licencia de software** es un acuerdo legal que define los **términos, condiciones y limitaciones** bajo los cuales un usuario puede **instalar, ejecutar, modificar o distribuir** un programa informático. Su propósito principal es **proteger los derechos de autor del desarrollador o empresa propietaria**, a la vez que regula el uso responsable del software por parte de los usuarios.

En función de los permisos otorgados, las licencias pueden variar desde modelos **completamente restrictivos** (como el software propietario) hasta esquemas **abiertos y colaborativos** (como el software libre o de código abierto). Además, algunas licencias establecen si el uso es **comercial, educativo, temporal o perpetuo**, y determinan las obligaciones del usuario, como la **prohibición de ingeniería inversa**, la **necesidad de atribución** o el **pago de regalías**.

//Aquí insertar imagen o diagrama sobre los tipos de licencias (propietaria vs libre vs híbrida)

---

### 2.5.2. Licencias Propietarias

Las **licencias propietarias** son las más comunes en el mercado comercial. En este modelo, el **código fuente permanece cerrado** y **todos los derechos de propiedad intelectual pertenecen al fabricante o desarrollador**. El usuario adquiere únicamente un **derecho de uso limitado**, no la propiedad del software.

Estas licencias **restringen la redistribución, modificación y copia** del programa, y suelen implicar la **aceptación de un contrato de licencia de usuario final (EULA, End User License Agreement)**. Suelen incluir además medidas de protección técnica como claves de activación o verificaciones en línea.

Son características de las licencias propietarias:

- No permiten acceder ni modificar el código fuente.
    
- Su uso puede estar condicionado por tiempo, número de dispositivos o tipo de usuario.
    
- Requieren pago o suscripción periódica.
    
- Ofrecen soporte técnico oficial y actualizaciones reguladas.

**Ejemplos:** _Microsoft Windows_, _Adobe Photoshop_, _AutoCAD_, _macOS_.

//Aquí insertar captura del acuerdo de licencia de Microsoft Windows o pantalla de activación de software propietario.

---

### 2.5.3. Licencias Libres y de Código Abierto

Las **licencias libres** y las **de código abierto (Open Source)** promueven la libertad de uso, estudio, modificación y redistribución del software. Aunque a menudo se confunden, existen matices:

- El **software libre**, según la _Free Software Foundation (FSF)_, garantiza las **cuatro libertades fundamentales** del usuario: ejecutar, estudiar, modificar y compartir el programa.
    
- El **software de código abierto**, impulsado por la _Open Source Initiative (OSI)_, se centra en la **transparencia y colaboración en el desarrollo**, más que en una postura ética o social.
    

Ambos modelos fomentan la innovación, la seguridad (gracias a la revisión pública del código) y la independencia tecnológica. No obstante, la responsabilidad del soporte recae en la comunidad o en proveedores específicos.

**Ejemplos:** _GNU/Linux_, _LibreOffice_, _Mozilla Firefox_, _GIMP_, _VLC Media Player_.

//Aquí insertar captura de GNU/Linux o de un repositorio de código abierto (GitHub).

---

### 2.5.4. Licencias Mixtas o Híbridas

Las **licencias mixtas o híbridas** combinan elementos del software libre y del software propietario. Este modelo permite que parte del código sea **abierta y modificable**, mientras que otras secciones permanecen **cerradas o bajo derechos exclusivos**.

El objetivo de este enfoque es **mantener la apertura e innovación del código libre**, al tiempo que se **protegen los componentes comerciales o sensibles** del producto. Este tipo de licencias es habitual en grandes proyectos tecnológicos que integran componentes de diversas fuentes.

**Ejemplos:**

- _Android_: utiliza el núcleo Linux (libre) pero incluye capas y aplicaciones propietarias de Google.
    
- _macOS_: combina componentes de código abierto (_Darwin_) con una interfaz cerrada.
    
- _Oracle Java_: mezcla versiones libres (OpenJDK) y comerciales.

**Ventajas:** equilibrio entre apertura, compatibilidad y sostenibilidad comercial.  
**Desventajas:** riesgo de fragmentación y dependencia de políticas empresariales.

//Aquí insertar captura del sistema Android mostrando configuraciones o estructura de capas.

---

### 2.5.5. Ejemplos de Licencias Populares

Existen numerosos modelos de licencia reconocidos internacionalmente, cada uno con condiciones específicas que determinan cómo puede usarse o modificarse el software. Entre las más comunes destacan:

- **GPL (General Public License):** desarrollada por la _Free Software Foundation_, garantiza que cualquier software derivado mantenga las mismas libertades. Cualquier modificación o redistribución debe conservar el carácter libre del código.  
    _Ejemplo:_ GNU/Linux, WordPress.
    
- **MIT License:** muy permisiva y sencilla, permite usar, copiar, modificar y distribuir el software, incluso con fines comerciales, siempre que se incluya la atribución al autor original.  
    _Ejemplo:_ React, Node.js.
    
- **Apache License:** otorga amplios permisos para uso, modificación y distribución, incluyendo proyectos comerciales. Añade cláusulas de protección de patentes.  
    _Ejemplo:_ Apache HTTP Server, Android Open Source Project.
    
- **BSD (Berkeley Software Distribution):** similar a la MIT, permite la redistribución con o sin código fuente y con mínima restricción.  
    _Ejemplo:_ FreeBSD, OpenBSD.
    
- **Creative Commons (CC):** aunque no es exclusiva del software, se utiliza para obras digitales, documentos, recursos educativos o contenido multimedia. Sus variantes (CC BY, CC BY-SA, CC BY-NC, etc.) definen distintos niveles de libertad y atribución.
    

//Aquí insertar tabla comparativa o infografía de licencias GPL, MIT, Apache, BSD y CC.

--- 
# Virtualización de un sistema operativo

**1. Activar la virtualización**

- Entrar en la BIOS y habilitar la opción de virtualización.    

**2. Descargas necesarias**

- VirtualBox
- Extension Pack
- Imagen ISO del sistema operativo

**3. Máquina anfitriona**

- Es el equipo físico que aporta los recursos (RAM, CPU, disco, etc.) para crear máquinas virtuales.

**4. Requisitos de Windows 11**

- Verificar compatibilidad y requisitos mínimos.

**5. Creación de máquina virtual - En VirtualBox** 

- Crear nueva máquina.
- Asignar nombre (VM name).
- Seleccionar imagen ISO de instalación.

**6. Configuración básica  - En VirtualBox**

- Asignar memoria RAM (dividir entre anfitrión y máquina virtual).
- Activar EFI (requerido por Windows 11).
- Seleccionar disco con asignación dinámica (no reservar completamente).
- Configuración → Red → Habilitar una tarjeta y conectar a NAT.

**7. Instalación del sistema operativo**

- Instalar Windows desde la ISO.
- Instalar “Guest Additions” una vez completada la instalación.

**8. Configuración de particiones (Administración de discos)**

- Se observan las particiones principales:
    1. Sistema
    2. Activa y de arranque
    3. Reservada
    4. Espacio no asignado
- El disco crece hacia la derecha.
- Se pueden crear, reducir, expandir o eliminar volúmenes.

**9. Crear segundo disco**

- Apagar la máquina.
- Configuración → Almacenamiento → Crear disco duro (no óptico).
- Asignar tamaño.
- Inicializar y particionar (MBR o GPT; GPT recomendado para Windows 11).
- Distinguir entre discos físicos y particiones lógicas.

**10. Diagnóstico del sistema**

- Actualizar el sistema.
- Ejecutar **DXDIAG** para obtener información técnica detallada.
- Consultar **Información del sistema** para datos generales.

**11. Punto de restauración**

- Buscar “Punto de restauración”.
- Configurar y activar la protección del sistema.
- Crear punto de restauración (asignar nombre).
- Para restaurar: seleccionar punto, ver unidades afectadas, confirmar y reiniciar.

**12. Instalación de software**

- Ejecutar instaladores como administrador.
- Abrir configuración de aplicaciones para desinstalar

**13. Administrador de dispositivos**

- Revisar controladores.
- Si aparece un icono amarillo, el dispositivo no está correctamente instalado.

14. Compartir archivos 
Nueva Carpeta > Elegir ruta > Automontar


### Administrador de tareas

Es posible ver las tareas de nuestro sistema o de los clientes.
Aquí ha explicado que las tarea van como en cola y que no son multiprocesos, son un procesador con diferentes núcleos y se repartan las tareas.
Cambiando la política se puede reorganizar esta ejecución.

Al ejecutar un programa, entra una solicitud de usuario y lo mete en procesos
Finalizar tarea: Matar un proceso es eliminarlo de la lista para descargar el proceso

### Estructura de Windows

Administrador tiene libertad para instalar y ver todo. Cualquier acción que suponga gestión de la máquina solo se puede realizar si se es administrador

La estructura de windows es la unidad C, abrirlo y encontramos todas las carpeta
32 bits están en x86
de 64 en la otra carpeta de archivos de programas
Usuarios - > Todos los usuarios de la máquina
Contiene las carpetas típicas de usuario. Al ser administrador es posible acceder a todas las carpetas de usuario
Windows -> Aquí está todo windows
	Carpeta temp - Archivos temporales, carpeta de apoyo. Cada cierto tiempo se borra y es posible que algún archivo se quede porque se está utilizando.

Si se almacena una carpeta nueva en la unidad C, la seguridad base de windows no protege los datos, cualquier usuario puede acceder a esos datos. En cambio, si se intenta acceder a otro usuario sin ser administrador, esa carpeta no va a mostrar nada hasta que se introduzca la contraseña.

Panel de control > Sistema y seguridad> Copias de seguridad -- > Muestra copia de seguridad y restauración w7 ESTO NO ES UN PUNTO DE RESTAURACIÓN
Entro en configuración de copias de seguridad --> Las copias van de disco a disco, es necesario añadir un disco que soporte la copia de seguridad


## 2.X Procesos

//Política de procesos

Si en procesos se mata la herencia, el padre continúa. Pero si se borra el padre, el hijo continúa hasta que termina el proceso y luego detecta el error (no hay padre)

Funciones de un sistema operativo
	Gestión de procesos
		Procesos
		Servicios del sistema
		Algoritmos de planificación de procesos
		Transiciones de estado de los procesos
		Algoritmos
FIFO (First Input First Output) o FCFS (First Come First Served) .. 6







//En sucio ---------------

¿Cómo virtualizar? 
1. Entrar en la BIOS para activar la virtualización
2. Descargar e instalar
	1. Virtual Box
	2. Extension pack
	3. ISO

Anfrition --> El que pone la máquina
Se tiene una máquina física con prestaciones (qué prestaciones), las máquinas virtuales permiten aprovechar esos recursos para usarlos creando esas máquinas.

//Buscar los requisitos de un Windows 11

Pasos:
Máquina nueva
VM name - Poner nombre
ISO image - desde donde se instala el sistema operativo

Desatendida
- Interesa que sea paso a paso

Instalar additions - Si fuera datendida serviria

Memoria
- Poner la memoria RAM
- Divide la RAM entre el anfitrion y la máquina

EFI --> Formato nuevo que pide windows 11

Asignación dinámica --> Ocupación real, a medida que necesite disco los ocupará. Reservar completamente debe quedar desmarcado

CONFIGURACIÓN - Después podría retocar alguna memoria

Tarjeta de red solo habilitar uno y conectar a NAT --> Conectar al anfitrión


Configuración de particiones

Uso de --> Administración de discos

- Aparecen las 3 particiones principales de Windows
1-
2- Partición activa y de arranque
3- 
4- Espacio no configurado

El espacio no configurado se han creado nuevos volúmenes y se ha explicado cómo el disco siempre crece hacia la derecha, es por ello que se debe tener cuidado.
Se puede reducir volumen
Se puede expandir volumen
Se puede eliminar

App: Información del sistema

Crear segundo disco:
1. Se debe cerrar la máquina
2. Configuración > Almacenamiento > Crear disco > Disco duro (no óptico)
3. Crear - Elegir espacio
4. El disco no aparece, hay que configurarlo. No está particionado
5. Elegir entre MBR (Master Boot Record) y GPT --> Más grandes y W11

Diferencia entre lógico y físico (tengo dos discos pero tengo más lógicos por las particiones)

### Diagnóstico

Primero de todo actualizar sistema

Uso de --> DXDIAG --> Me permite ver todos los componentes y realizar diagnósticos. Información técnica más detallada que la información del sistema.

### Punto de restauración
¿Cómo crear un punto de restauración?
Permite restaurar la máquina en el punto que se encuentra actualmente, si lo tiene y el ordenador sufre algún problema, restauraría de ese checkpoint.

Se ha abierto las propiedades del sistema y te permiten crear un punto de restauración.
Buscar, punto de restauración

Se debe configurar, activar y luego crear, pedirá un nombre.
Luego aparecerá una opción que es restaurar sistema y una lista para elegir el punto de restauración.
Aparece una lista de cosas eliminadas o nuevas instalaciones si los seleccionas.
Darle a siguiente --> Te dice qué unidades de ven afectadas y luego confirmación

Se reinicia y luego aparece un diagnostico

//Es posible determinar el tamaño de las carpetas, en este ejemplo, la papelera

### Instalación de software
Ejecutar como administrador


### Administrador de dispositivos
Si sale una señal amarilla es que no está bien
