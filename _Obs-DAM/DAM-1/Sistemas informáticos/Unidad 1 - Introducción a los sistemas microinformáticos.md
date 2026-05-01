


---
# UNIDAD 1 – ARQUITECTURA DE LOS ORDENADORES

---
El desarrollo de la arquitectura de los ordenadores —desde la teoría de Turing hasta los chips heterogéneos de 2025— demuestra una evolución continua hacia la **eficiencia, paralelismo y miniaturización**.  
Comprender estas bases es fundamental para entender los sistemas informáticos modernos, sus limitaciones físicas y las tendencias emergentes en computación cuántica y neuronal.

## 1.1 Introducción a la arquitectura computacional

La **arquitectura de los ordenadores** estudia la estructura, funcionamiento y organización de los sistemas que procesan información digital.  
Define **cómo se comunican y cooperan** los distintos componentes físicos del sistema informático (CPU, memoria, buses, dispositivos de E/S) para ejecutar instrucciones.

Desde los primeros modelos teóricos del siglo XX hasta los modernos microprocesadores multinúcleo, la evolución arquitectónica ha estado guiada por tres objetivos principales:

- **Eficiencia:** maximizar el rendimiento con el menor consumo energético.
- **Compatibilidad:** mantener la interoperabilidad entre generaciones y estándares.
- **Escalabilidad:** permitir la expansión de la capacidad de proceso sin rediseñar desde cero.

---

## 1.2 La Máquina de Turing

Desarrollada por **Alan Mathison Turing** entre 1935 y 1945, la Máquina de Turing (Logical Computing Machine) es un **modelo computacional teórico** que establece las bases de la informática moderna.

**Concepto clave:**  
Demuestra que cualquier problema matemático computable puede resolverse mediante un algoritmo, es decir, una secuencia finita y ordenada de pasos elementales.

### 1.2.1 Tesis de Church-Turing

La **tesis de Church-Turing** sostiene que cualquier problema que pueda resolverse mediante un método algorítmico puede ser ejecutado por una máquina de Turing, y que todo modelo computacional equivalente (por ejemplo, un ordenador moderno) puede reproducir su comportamiento.

### 1.2.2 Componentes de la Máquina de Turing

- **Memoria (cinta infinita):**  
    Una cinta ilimitada dividida en celdas que contienen símbolos binarios (0 y 1).  
    En ella se almacena la entrada, los cálculos intermedios y la salida final.  
    (_Figura 1.1 – Representación esquemática de la máquina de Turing_.)
    
- **Cabezal de lectura-escritura:**  
    Dispositivo que se desplaza por la cinta leyendo y escribiendo símbolos.  
    Puede moverse a la derecha, a la izquierda o mantenerse en la misma posición.
    
- **Procesador o unidad de control:**  
    Determina, en función del **estado actual** y del **símbolo leído**, la acción siguiente (escribir, mover el cabezal o cambiar de estado).  
    Este comportamiento se define en la **tabla de transición de estados**, que constituye el “programa” de la máquina.
    

**Importancia actual:**  
Aunque la Máquina de Turing es teórica, sus principios siguen siendo la base de la computación moderna: toda CPU actual ejecuta instrucciones secuenciales que transforman datos según un conjunto definido de reglas.

---

## 1.3 Arquitectura Harvard

La **arquitectura Harvard** se caracteriza por mantener **memorias separadas para instrucciones y datos**, conectadas a la CPU mediante buses independientes.  
Esto permite que el procesador lea una instrucción y un dato de forma simultánea, **eliminando los conflictos de acceso** típicos de la arquitectura Von Neumann.

(_Figura 1.2 – Representación esquemática de la arquitectura Harvard._)

### 1.3.1 Estructura general

- **Memoria de instrucciones:** almacena el código del programa.
- **Memoria de datos:** almacena los valores manipulados por el programa.
- **Buses independientes:** uno para instrucciones y otro para datos.
- **UAL (Unidad Aritmético-Lógica):** ejecuta las operaciones matemáticas y lógicas.
- **Unidad de Control (UC):** coordina el flujo entre memoria e instrucciones.
- **E/S:** gestiona los dispositivos de entrada y salida.

### 1.3.2 Ventajas

- Permite **acceso paralelo** a datos e instrucciones.
- Mejora el **rendimiento y la velocidad** de ejecución.
- Reduce el riesgo de cuellos de botella entre CPU y memoria.
- Ideal para **procesadores embebidos** y **sistemas de tiempo real**.

### 1.3.3 Aplicaciones actuales

Hoy en día, la arquitectura Harvard se usa principalmente en:

- **Microcontroladores** (Arduino, PIC, AVR, ARM Cortex-M).
- **Procesadores de señal digital (DSP):** empleados en audio, vídeo y comunicaciones.
- **Sistemas embebidos y IoT:** donde la eficiencia energética y la rapidez de respuesta son esenciales.

---

## 1.4 Arquitectura de Von Neumann

En 1944, el matemático **John von Neumann** propuso un diseño revolucionario para el computador **EDVAC**, conocido como **modelo de programa almacenado**.

Este modelo unificó el almacenamiento de **datos e instrucciones en la misma memoria**, permitiendo que el hardware ejecutara diferentes programas sin modificar su estructura física.  
(_Figura 1.3 – Esquema de la arquitectura Von Neumann._)

### 1.4.1 Componentes principales

1. **Unidad Aritmético-Lógica (ALU):**  
    Realiza operaciones matemáticas (suma, resta, multiplicación, división) y lógicas (AND, OR, NOT).  
    Se fundamenta en el **Álgebra de Boole**, desarrollada por **George Boole** en 1854.
    
2. **Unidad de Control (UC):**  
    Interpreta las instrucciones del programa, genera las señales de control y coordina el resto de componentes.
    
3. **Memoria principal:**  
    Almacena datos e instrucciones. Suele dividirse en:
    
    - **Memoria de programa.**
    - **Memoria de trabajo.**
    - **Registros internos** para operaciones temporales.
4. **Sistemas de Entrada/Salida (E/S):**  
    Permiten la comunicación con el entorno: teclado, pantalla, red, almacenamiento, etc.
    
5. **Unidad Central de Proceso (CPU):**  
    Integra ALU, UC y registros.  
    En los sistemas modernos, está implementada en un **microprocesador de silicio** que puede contener miles de millones de transistores.
    

### 1.4.2 Características destacadas

- **Programa almacenado:** instrucciones y datos comparten el mismo espacio de memoria.
- **Ejecución secuencial:** las instrucciones se procesan una tras otra según el contador de programa.
- **Buses compartidos:** el mismo bus se usa para datos e instrucciones (lo que puede generar el “cuello de botella de Von Neumann”).
- **Flexibilidad:** un mismo hardware puede ejecutar programas distintos sin modificaciones físicas.

### 1.4.3 Limitaciones y evolución moderna

El principal inconveniente es el **“Von Neumann bottleneck”**: la CPU debe esperar a que la memoria entregue datos o instrucciones a través del mismo bus.  
Para mitigar este problema, las arquitecturas actuales utilizan:

- **Jerarquías de memoria:** cachés L1/L2/L3, RAM rápida, almacenamiento SSD/NVMe.
- **Procesamiento paralelo:** múltiples núcleos y subprocesos.
- **Prefetching e instrucciones pipelined.**
- **Computación heterogénea:** combinación de CPU, GPU y NPU (Neural Processing Units).
- **Computación cercana a la memoria (Near Memory Computing):** reduce la latencia al acercar el procesamiento a los datos.

### 1.4.4 Ejemplos históricos y actuales

- **EDVAC (1949):** primer computador basado en esta arquitectura.
- **IBM 701 (1952):** uno de los primeros equipos comerciales.
- **x86 y ARM (actualidad):** mantienen el modelo Von Neumann con optimizaciones internas (micro-operaciones, predicción de saltos, ejecución fuera de orden, etc.).

---

## 1.5 Arquitecturas según el repertorio de instrucciones

La forma en que un procesador ejecuta instrucciones define dos grandes familias arquitectónicas: **RISC** y **CISC**.

### 1.5.1 RISC (Reduced Instruction Set Computing)

- Introducida en los años 80 por IBM y Berkeley.
- Utiliza un **conjunto reducido de instrucciones simples**, todas de tamaño uniforme y ejecutables en un solo ciclo de reloj.
- Facilita el paralelismo (pipelining) y la optimización del compilador.
- Ejemplos: **SPARC**, **MIPS**, **PowerPC**, **ARM**, **RISC-V**.
    

**Ventajas:**
- Mayor velocidad de ejecución por instrucción.
- Menor complejidad del hardware.
- Bajo consumo energético.
- Ideal para dispositivos móviles y sistemas embebidos.

**Desventajas:**

- Los programas pueden requerir más instrucciones para tareas complejas.
- Depende fuertemente del rendimiento del compilador.

**Evolución 2025:**  
La arquitectura **RISC-V**, de código abierto y modular, está siendo adoptada masivamente en microcontroladores, servidores y dispositivos IoT. Su flexibilidad permite diseñar procesadores específicos de propósito, reduciendo costes y consumo.

---

### 1.5.2 CISC (Complex Instruction Set Computing)

- Emplea un **conjunto extenso de instrucciones**, algunas capaces de ejecutar operaciones complejas con una sola instrucción.
- Ejemplo representativo: **familia Intel x86/x86-64** (Pentium, Core, Ryzen, etc.).
- Las instrucciones pueden tener longitudes variables y acceder directamente a memoria.

**Ventajas:**

- Alta densidad de código (menos instrucciones necesarias).
- Compatibilidad hacia atrás (legacy software).
- Programación en ensamblador más sencilla.

**Desventajas:**

- Arquitectura más compleja.
- Dificultad para optimizar el pipeline.
- Consumo energético mayor.

**Actualización 2025:**  
Los procesadores modernos combinan lo mejor de ambos mundos: internamente **traducen instrucciones CISC** a micro-operaciones RISC.  
Esto optimiza la ejecución sin perder compatibilidad con software existente.  
Ejemplo: Intel Core Ultra y AMD Ryzen 7000 integran núcleos híbridos (rendimiento y eficiencia) similares a los modelos RISC de ARM.

---

## 1.6 Arquitecturas modernas y tendencias (2025)

### 1.6.1 Arquitecturas multinúcleo y heterogéneas

Los procesadores actuales integran múltiples núcleos, cada uno con caché propia y compartida. Además, se combinan **núcleos de alto rendimiento (P-cores)** y **núcleos de eficiencia (E-cores)** para optimizar consumo y multitarea.

### 1.6.2 Computación en GPU y paralela

Las **GPU (Graphic Processing Units)** evolucionaron para tareas de cálculo general (GPGPU).  
Se utilizan en inteligencia artificial, big data, simulaciones científicas y entornos 3D.  
Lenguajes como **CUDA** y **OpenCL** permiten aprovechar su arquitectura masivamente paralela.

### 1.6.3 Procesamiento neuronal y AI Accelerators

Surgen nuevas unidades denominadas **TPU (Tensor Processing Units)** o **NPU (Neural Processing Units)**, optimizadas para inferencia y entrenamiento de modelos IA.  
Están presentes en dispositivos móviles, portátiles y servidores.

### 1.6.4 Computación cuántica y más allá

Aunque aún experimental, la **computación cuántica** utiliza qubits que pueden representar simultáneamente 0 y 1, lo que permite resolver ciertos problemas exponenciales con una eficiencia inalcanzable para las arquitecturas clásicas.  
Empresas como IBM, Google y D-Wave han desarrollado procesadores cuánticos de más de 100 qubits, y se investiga su integración híbrida con sistemas clásicos.

---

## 1.7 Resumen de la arquitectura computacional

|**Arquitectura**|**Memoria**|**Buses**|**Ventajas**|**Ejemplos**|
|---|---|---|---|---|
|**Turing**|Cinta infinita teórica|No aplica|Base teórica de la computación|Modelos formales|
|**Harvard**|Separada para datos e instrucciones|Independientes|Acceso simultáneo, mayor velocidad|DSP, microcontroladores|
|**Von Neumann**|Unificada|Compartidos|Flexibilidad, programación sencilla|PCs, servidores|
|**RISC**|Uniforme|Simplificados|Ejecución rápida, eficiencia|ARM, RISC-V|
|**CISC**|Compleja|Variable|Compatibilidad, código compacto|Intel x86/x64|

---
# UNIDAD 2 – EL SISTEMA INFORMÁTICO

---
El sistema informático es un ecosistema donde el hardware actúa como el cuerpo, el software como el cerebro y el factor humano como la voluntad que les da propósito.  
La convergencia entre virtualización, nube, IA y conectividad define la era de la **computación ubicua**, donde los sistemas informáticos son invisibles pero omnipresentes.
## 2.1 Definición general

Un **sistema informático** es un **conjunto organizado de elementos interrelacionados** —hardware, software y componente humano— destinado a **capturar, procesar, almacenar y comunicar información digital**.

Estos sistemas pueden variar desde un microcontrolador embebido hasta un clúster de supercomputación, pero todos comparten una característica esencial:

> La cooperación coordinada entre dispositivos físicos, programas y personas para transformar datos en información útil.

(_Figura 2.1 – Estructura general de un sistema informático._)

---

## 2.2 Elementos de un sistema informático

Todo sistema informático se compone de tres **subsistemas básicos**:

1. **Componente físico (hardware)**
2. **Componente lógico (software)**
3. **Componente humano**

---

### 2.2.1 Hardware – Componente físico

El **hardware** comprende todos los **elementos tangibles** de un sistema informático: desde los microchips hasta las interfaces externas.

#### a) Clasificación funcional

|**Tipo de hardware**|**Función principal**|**Ejemplos**|
|---|---|---|
|**Unidad central**|Procesamiento y control|CPU, GPU, NPU|
|**Memoria**|Almacenamiento temporal o permanente|RAM, ROM, SSD, HDD|
|**Periféricos de entrada**|Introducir datos|Teclado, ratón, escáner|
|**Periféricos de salida**|Mostrar resultados|Monitor, impresora, altavoces|
|**Periféricos mixtos (E/S)**|Entrada y salida simultánea|Pantalla táctil, módem|
|**Red y comunicación**|Interconexión entre equipos|Tarjeta de red, router, switch|

#### b) Componentes esenciales

- **Placa base (mainboard):** soporte donde se interconectan todos los componentes.
- **CPU:** interpreta y ejecuta instrucciones.
- **Memoria RAM:** almacén temporal de datos e instrucciones.
- **Almacenamiento secundario:** guarda datos de forma permanente (SSD, HDD, NVMe).
- **Fuente de alimentación:** suministra energía eléctrica estable.
- **Sistema de refrigeración:** mantiene las temperaturas operativas.
- **Periféricos y buses:** proporcionan conectividad con el entorno.

(_Figura 2.2 – Diagrama general del hardware de un sistema informático._)

---

### 2.2.2 Software – Componente lógico

El **software** es el conjunto de **instrucciones y programas** que dirigen la operación del hardware.  
Constituye la parte **lógica y abstracta** del sistema, permitiendo ejecutar tareas específicas.

#### a) Clasificación del software

|**Categoría**|**Descripción**|**Ejemplos actuales (2025)**|
|---|---|---|
|**Software de base o sistema**|Gestiona el hardware y los recursos del sistema.|Sistemas operativos (Windows 11, macOS Sonoma, Linux 6.x, Android 15, iOS 19), firmware UEFI.|
|**Software de aplicación**|Ejecuta funciones específicas para el usuario.|Suites ofimáticas, navegadores web, editores multimedia, bases de datos, IA generativa.|
|**Software de desarrollo**|Permite crear otros programas.|Compiladores, IDEs (VS Code, Eclipse, PyCharm), SDKs, intérpretes.|
|**Software de red y comunicaciones**|Facilita el intercambio de información.|Servidores web, DNS, FTP, protocolos TCP/IP.|
|**Software de seguridad**|Protege el sistema ante amenazas.|Antimalware, cortafuegos, cifrado, autenticación biométrica.|

#### b) Software de sistema y sistema operativo

El **sistema operativo (SO)** es el intermediario entre el hardware y el usuario.  
Administra recursos, coordina procesos y ofrece una interfaz coherente para las aplicaciones.

**Funciones esenciales del SO:**

- Gestión de procesos y multitarea.
- Administración de memoria y almacenamiento.
- Control de dispositivos y controladores (drivers).
- Seguridad y control de acceso.
- Interfaces de usuario (CLI, GUI o híbridas).
- Administración de red y servicios.

(_Figura 2.3 – Estructura en capas del software del sistema._)

#### c) Software de aplicación

Diseñado para resolver tareas específicas: edición de documentos, diseño 3D, análisis de datos, IA, simulación, etc.  
La tendencia actual es la **computación en la nube (Cloud Computing)**, que permite ejecutar aplicaciones desde servidores remotos con independencia del hardware local.  
Ejemplo: Microsoft 365 Online, Google Workspace, Autodesk Cloud, ChatGPT Enterprise.

---

### 2.2.3 Componente humano

El **factor humano** constituye el tercer elemento esencial del sistema informático.  
Incluye a todas las personas que **diseñan, desarrollan, mantienen y utilizan** los sistemas.

**Roles principales:**

- **Usuarios finales:** operan aplicaciones y servicios.
- **Administradores de sistemas:** configuran y gestionan infraestructura.
- **Desarrolladores:** crean software y mantienen aplicaciones.
- **Técnicos de hardware:** ensamblan, reparan y diagnostican equipos.
- **Analistas de sistemas:** definen requerimientos funcionales y flujos de información.
- **Especialistas en ciberseguridad:** protegen los activos digitales y redes.

(_Figura 2.4 – Interacción entre hardware, software y factor humano en un sistema informático._)

---

## 2.3 Interacción entre componentes del sistema

El funcionamiento coordinado del sistema informático se basa en la **interacción entre los tres componentes**:

1. El **usuario (humano)** introduce datos o instrucciones.
2. El **software** traduce esas instrucciones en órdenes comprensibles para el **hardware**.
3. El **hardware** ejecuta las órdenes y devuelve los resultados a través del software.

Este ciclo se conoce como **ciclo de procesamiento de datos (IPOS)**:  
**Input → Process → Output → Storage**

(_Figura 2.5 – Ciclo IPOS del sistema informático._)

---

## 2.4 Clasificación de los sistemas informáticos

|**Tipo de sistema**|**Descripción**|**Ejemplos (2025)**|
|---|---|---|
|**Sistemas personales**|Equipos domésticos o portátiles.|PC, laptops, tablets.|
|**Sistemas embebidos**|Integrados en dispositivos electrónicos.|Microcontroladores ARM Cortex-M, Raspberry Pi 5.|
|**Sistemas distribuidos**|Computación en red con recursos compartidos.|Clústeres, servicios en la nube.|
|**Sistemas de tiempo real**|Respuesta instantánea ante eventos.|Control industrial, aeronáutica, automoción.|
|**Sistemas de propósito específico**|Diseñados para tareas concretas.|Consolas, routers, dispositivos IoT.|
|**Sistemas de propósito general**|Ejecutan múltiples aplicaciones simultáneas.|Servidores, estaciones de trabajo.|

---

## 2.5 Evolución de los sistemas informáticos

|**Generación**|**Periodo**|**Tecnología base**|**Características principales**|
|---|---|---|---|
|**1ª Generación (1940-1956)**|Válvulas de vacío|Lenguaje máquina, gran tamaño, alto consumo.||
|**2ª Generación (1956-1963)**|Transistores|Menor tamaño y calor, aparición de ensamblador.||
|**3ª Generación (1964-1971)**|Circuitos integrados|SO multiprogramación, terminales interactivos.||
|**4ª Generación (1971-1989)**|Microprocesadores|PC, interfaces gráficas, redes locales.||
|**5ª Generación (1990-actualidad)**|VLSI, IA, computación cuántica|Internet, IA, sistemas distribuidos y en la nube.||

**Evolución reciente (2020-2025):**

- Transición hacia la **computación híbrida** (local + cloud).
- **Virtualización y contenedores (Docker, Kubernetes)** para despliegue eficiente.
- **Ciberseguridad avanzada** basada en IA.
- **Computación verde (Green IT)**: eficiencia energética, reciclaje y optimización de recursos.

---

## 2.6 El sistema operativo y su papel integrador

El **sistema operativo** es el **núcleo (kernel)** que coordina hardware, software y usuarios.  
Funciona como **intermediario** entre los recursos físicos y los programas que los solicitan.

(_Figura 2.6 – Diagrama de interacción del sistema operativo._)

**Funciones detalladas:**

1. **Gestión de procesos:** planificación, sincronización, prioridad y bloqueo.
2. **Gestión de memoria:** asignación dinámica, paginación y protección.
3. **Gestión de archivos:** creación, borrado, acceso y permisos.
4. **Gestión de dispositivos:** drivers, interrupciones, E/S asincrónica.
5. **Seguridad y auditoría:** control de usuarios, cifrado y bitácoras.
6. **Interfaces de usuario:** CLI (línea de comandos), GUI (gráfica) o API.

**Tipos de sistemas operativos (2025):**

- Monousuario / multiusuario.
- Monotarea / multitarea.
- Sistemas de red, distribuidos y virtualizados.
- Sistemas embebidos y de tiempo real (RTOS).
- SO móviles (Android, iOS).
- SO de servidores (Linux, Windows Server, FreeBSD).

---
## 2.7 Virtualización y computación en la nube

En la actualidad, la **virtualización** y el **cloud computing** son pilares del sistema informático moderno.

### 2.7.1 Virtualización

Consiste en crear **entornos virtuales** (máquinas virtuales o contenedores) que simulan hardware físico.  
Permite ejecutar varios sistemas operativos en un mismo host.

**Tipos:**

- Virtualización completa (hipervisores Tipo 1: VMware ESXi, Hyper-V, KVM).
- Virtualización de sistema operativo (contenedores Docker, LXC).
- Paravirtualización (Xen, OpenVZ).

**Ventajas:**

- Aislamiento, seguridad, ahorro energético.
- Despliegue rápido y portabilidad de entornos.

### 2.7.2 Computación en la nube (Cloud Computing)

Modelo que ofrece **recursos informáticos como servicios** (IaaS, PaaS, SaaS).  
Permite escalar aplicaciones bajo demanda sin infraestructura propia.

|**Modelo**|**Descripción**|**Ejemplo (2025)**|
|---|---|---|
|**IaaS (Infrastructure as a Service)**|Provisión de hardware virtual.|AWS EC2, Azure VMs, Google Compute Engine.|
|**PaaS (Platform as a Service)**|Entornos de desarrollo preconfigurados.|Heroku, Vercel, Azure App Service.|
|**SaaS (Software as a Service)**|Aplicaciones listas para el usuario final.|Microsoft 365, Google Workspace, Figma Cloud.|

**Ventajas clave:**

- Elasticidad y escalabilidad.
- Pago por uso.
- Redundancia y disponibilidad 24/7.
- Integración con IA y análisis de datos.

(_Figura 2.7 – Niveles de servicio en la computación en la nube._)

---

## 2.8 Tendencias emergentes (2025)

- **Edge Computing:** procesamiento en el borde de la red, reduciendo latencia.
- **Fog Computing:** capa intermedia entre la nube y el dispositivo.
- **Quantum Cloud:** acceso remoto a procesadores cuánticos.
- **IA integrada en sistemas operativos** para optimización y autodiagnóstico.
- **Zero Trust Security:** enfoque moderno de seguridad sin confianza predeterminada.

---

## 2.9 Resumen de la Unidad 2

|**Elemento**|**Función principal**|**Ejemplo**|
|---|---|---|
|**Hardware**|Proporciona los medios físicos.|CPU, RAM, GPU, SSD|
|**Software**|Gestiona y ejecuta instrucciones.|Sistema Operativo, Aplicaciones|
|**Humano**|Diseña, configura y utiliza.|Administrador, Usuario|

---

# ⚙️ UNIDAD 3 – COMPONENTES FÍSICOS (HARDWARE)

---

El conocimiento profundo de los componentes físicos permite comprender **cómo las decisiones de diseño influyen directamente en el rendimiento, estabilidad y vida útil** del sistema.

> En un ordenador moderno, cada componente —desde la CPU hasta los conectores del panel trasero— participa en un delicado equilibrio de **velocidad, compatibilidad, energía y disipación térmica.**

(_Figura 3.9 – Interrelación entre CPU, RAM, GPU, chipset y almacenamiento._)

## 3.1 Introducción al hardware

El **hardware** es el conjunto de **elementos electrónicos, mecánicos y electromecánicos** que conforman la estructura física de un sistema informático.  
Permite ejecutar las operaciones lógicas y matemáticas definidas por el software y garantizar la interacción con el usuario.

Un ordenador moderno se organiza en **módulos funcionales**:

1. **Unidad central de proceso (CPU)**
2. **Memoria principal y caché**
3. **Sistemas de almacenamiento**
4. **Placa base y chipset**
5. **Fuente de alimentación y refrigeración**
6. **Buses de comunicación y ranuras de expansión**
7. **Periféricos y dispositivos externos**

(_Figura 3.1 – Esquema general de los componentes internos de un sistema informático._)

---

## 3.2 La placa base (mainboard o motherboard)

La **placa base** es el **núcleo integrador del sistema**. En ella se conectan todos los componentes: procesador, memoria, buses, controladores, puertos y chips auxiliares.  
Su diseño determina la **capacidad de expansión, compatibilidad y rendimiento global** del equipo.

(_Figura 3.2 – Partes principales de una placa base ATX._)

### 3.2.1 Elementos principales

- **Circuito impreso (PCB):** base física multicapa que conecta los componentes mediante pistas de cobre.
    
- **Socket del procesador:** zócalo donde se inserta la CPU. Existen formatos diferentes según el fabricante y generación (por ejemplo, **LGA 1700** para Intel o **AM5** para AMD).
    
- **Slots de memoria:** ranuras donde se instalan los módulos RAM (DIMM/SO-DIMM).
    
- **Slots de expansión:** ranuras **PCI-Express (x1, x4, x8, x16)** para tarjetas gráficas, de red o sonido.
    
- **Conectores de almacenamiento:** **SATA III (6 Gb/s)**, **M.2 NVMe PCIe 4.0/5.0**, o puertos **U.2**.
    
- **Conectores de corriente:**
    - **ATX 24 pines:** alimentación principal.
    - **CPU 4/8 pines (EPS):** potencia dedicada al procesador.
        
- **Chipset o PCH (Platform Controller Hub):**
    - Coordina la comunicación entre CPU, memoria, GPU y periféricos.
    - Sustituye a los antiguos NorthBridge y SouthBridge.
        
- **BIOS/UEFI:** firmware que inicializa el sistema. Se almacena en memoria EEPROM o flash y se puede actualizar.
    
- **Batería CMOS:** mantiene la configuración del reloj y parámetros del firmware.
    
- **Puertos traseros y conectores internos:** USB 2.0/3.0/3.2/4.0, HDMI, DisplayPort, Ethernet 2.5 G/10 G, audio S/PDIF, Wi-Fi 6E/7, etc.
    

---

### 3.2.2 Tipos y formatos de placa

|**Formato**|**Dimensiones (mm)**|**Uso habitual**|
|---|---|---|
|**ATX**|305 × 244|Sobremesa estándar, alto rendimiento.|
|**Micro-ATX**|244 × 244|Equipos compactos.|
|**Mini-ITX**|170 × 170|Mini-PCs, HTPC, sistemas embebidos.|
|**E-ATX**|305 × 330|Estaciones de trabajo y gaming.|

**Tendencias 2025:**  
Placas base con **soporte PCIe 5.0/6.0**, **DDR5**, **almacenamiento M.2 NVMe Gen 5**, **conectividad Thunderbolt 5** y sistemas de refrigeración integrados para VRM y SSD.

---

### 3.2.3 Firmware: BIOS y UEFI

El **firmware** es el software embebido en la placa base que permite inicializar el hardware y cargar el sistema operativo.

- **BIOS (Basic Input Output System):** sistema básico de arranque tradicional, implementado en ROM/EEPROM.
    
- **UEFI (Unified Extensible Firmware Interface):** reemplazo moderno de la BIOS con interfaz gráfica, soporte para discos **GPT**, arranque seguro (Secure Boot) y actualizaciones automáticas.
    

> ⚠️ **Actualización de firmware:**  
> El proceso de actualización (“flasheo”) debe realizarse con energía estable y sin interrupciones, ya que un fallo puede inutilizar la placa.  
> Muchos fabricantes ofrecen sistemas de recuperación (Dual BIOS o Flashback).

---

## 3.3 El microprocesador (CPU)

La **CPU (Central Processing Unit)** es el **cerebro del ordenador**.  
Ejecuta instrucciones, realiza cálculos aritméticos y controla el flujo del programa.

(_Figura 3.3 – Estructura funcional de una CPU moderna._)

### 3.3.1 Estructura interna

- **Núcleos (cores):** cada núcleo puede ejecutar hilos independientes. Los procesadores actuales cuentan con entre **4 y 32 núcleos** (hasta cientos en servidores).
    
- **Subprocesos (threads):** algunos núcleos gestionan dos hilos simultáneamente mediante **multithreading** (p. ej. Hyper-Threading de Intel o SMT de AMD).
    
- **Unidad aritmético-lógica (ALU):** realiza operaciones matemáticas y lógicas.
    
- **Unidad de control (UC):** decodifica instrucciones y coordina las demás unidades.
    
- **Cachés internas:**
    
    - **L1:** dentro del núcleo, altísima velocidad.
    - **L2:** intermedia.
    - **L3:** compartida entre núcleos.
        
- **Bus interno y externo:** conecta con memoria y chipset.
    
- **Unidad de predicción de saltos, ejecución fuera de orden y pipelines** que mejoran el rendimiento.
    
- **IGPU (Gráfica integrada):** presente en muchas CPU modernas (Intel Xe, AMD Radeon Graphics).
    

---

### 3.3.2 Parámetros fundamentales

|**Parámetro**|**Descripción y relevancia (2025)**|
|---|---|
|**Frecuencia de reloj**|Ritmo de trabajo medido en GHz. Aunque sigue siendo importante, el rendimiento depende también de la arquitectura y del número de núcleos.|
|**IPC (Instrucciones por ciclo)**|Cuantas más instrucciones ejecuta por ciclo, mayor eficiencia. Arquitecturas como Intel Core Ultra y AMD Zen 5 han incrementado el IPC > 10 %.|
|**TDP (Thermal Design Power)**|Potencia térmica máxima. Indica las necesidades de refrigeración (entre 15 W en portátiles y 170 W en desktop extremo).|
|**Caché L3/L4**|Crucial para reducir la latencia entre CPU y memoria.|
|**Socket**|Define la compatibilidad física y eléctrica con la placa base.|
|**Proceso de fabricación**|Tamaño de transistor en nanómetros (nm). Menor tamaño ⇒ menor consumo y mayor densidad. Ej.: TSMC 3 nm, Intel 4 nm.|

**Ejemplos actuales (2025):**

- **Intel Core Ultra 200 (Arrow Lake)**
- **AMD Ryzen 9000 (Zen 5)**
- **Apple M3 (ARM 64 bits, 3 nm)**
- **Qualcomm Snapdragon X Elite (ARM-based SoC)**

---

### 3.3.3 Consideraciones térmicas y de montaje

- Aplicar **pasta térmica** entre CPU y disipador para mejorar la conducción del calor.
- Utilizar **sistemas de refrigeración activos** (ventiladores, heatpipes) o **líquidos AIO**.
- Verificar compatibilidad de **TDP y socket** antes del montaje.
- Monitorizar temperaturas con herramientas (BIOS/UEFI Hardware Monitor, HWInfo, CoreTemp).
- Un sobrecalentamiento superior a 90 °C reduce la vida útil del chip.
    

---

## 3.4 Memoria principal (RAM)

La **RAM (Random Access Memory)** es una memoria **volátil** de acceso directo utilizada para almacenar temporalmente datos e instrucciones durante la ejecución.

(_Figura 3.4 – Módulos DIMM DDR5._)

### 3.4.1 Tipos de módulos

|**Tipo**|**Uso y descripción**|
|---|---|
|**DIMM (Dual In-line Memory Module)**|Estándar en equipos de sobremesa. 288 contactos (DDR4/DDR5).|
|**SO-DIMM**|Módulo compacto usado en portátiles.|
|**Micro-DIMM**|Formato aún más pequeño para mini-PCs.|
|**DDR (Double Data Rate)**|Transfiere datos en flanco ascendente y descendente del reloj. Generaciones actuales: **DDR4 → DDR5 → DDR5X/DDR6**.|

### 3.4.2 Parámetros principales

|**Parámetro**|**Descripción**|
|---|---|
|**Capacidad**|Desde 4 GB hasta 128 GB por módulo.|
|**Frecuencia**|3200 → 8400 MHz (DDR5); cuanto mayor, más rápida la transferencia.|
|**Latencia CAS**|Tiempo entre la orden y la entrega del dato. Menor = mejor.|
|**Voltaje**|DDR4 (1.2 V) → DDR5 (1.1 V). Menor voltaje = menor consumo.|
|**Canales de memoria**|**Single**, **Dual**, **Quad Channel**; duplican o cuadruplican el ancho de banda.|

### 3.4.3 Tecnologías modernas

- **ECC (Error Correction Code):** corrige errores en entornos críticos (servidores).
- **XMP / EXPO:** perfiles de overclocking automáticos.
- **3D Stacked RAM / HBM:** memorias apiladas de alto rendimiento (GPUs y AI Accelerators).
- **LPDDR5X:** para dispositivos móviles y ultrabooks de bajo consumo.

---

## 3.5 Memoria de vídeo (VRAM) y GPU

La **GPU (Graphics Processing Unit)** es un procesador especializado en el cálculo de operaciones gráficas y paralelas.  
La **VRAM** es su memoria dedicada.

### 3.5.1 Tipos de VRAM

|**Tipo**|**Aplicación actual (2025)**|
|---|---|
|**GDDR6 / GDDR6X**|Estándar de alto rendimiento en gráficas NVIDIA RTX 40 y AMD Radeon RX 7000.|
|**GDDR7**|Nueva generación con velocidades > 32 Gb/s por pin.|
|**HBM3 / HBM3e (High Bandwidth Memory)**|Utilizada en GPUs profesionales y aceleradores AI (NVIDIA H100, AMD MI300).|

### 3.5.2 Parámetros clave

- **Ancho de banda (GB/s):** depende del bus y frecuencia de VRAM.
- **Cantidad de memoria:** 4 – 48 GB en GPUs de consumo; hasta 192 GB en profesionales.
- **Bus de memoria:** 128, 192, 256, 384 bits.
- **Refrigeración:** activa, híbrida o líquida.
- **Compatibilidad:** PCIe 4.0/5.0 x16.

---

## 3.6 Almacenamiento secundario

El **almacenamiento secundario** conserva los datos de forma **no volátil**.  
Incluye discos duros magnéticos (HDD), unidades de estado sólido (SSD), memorias flash y medios ópticos.

(_Figura 3.5 – Comparativa entre HDD, SSD SATA y SSD NVMe._)

### 3.6.1 Discos duros (HDD)

- **Tecnología magnética:** grabación sobre platos giratorios.
- **Velocidades comunes:** 5400 / 7200 rpm (desktop), 10 000 rpm en gama alta.
- **Capacidades:** hasta 24 TB por unidad (2025).
- **Ventajas:** gran capacidad y bajo coste.
- **Desventajas:** ruido, consumo y latencia mecánica.

**Estructura física:** platos, cabezas, pistas, cilindros y sectores (normalmente 512 bytes o 4 KB).  
**Estructura lógica:** MBR o GPT con particiones primarias, extendidas y lógicas.  
**Sistemas de archivos comunes:** FAT32, NTFS, exFAT, EXT4, ReFS, Btrfs.

### 3.6.2 Unidades SSD

Los **SSD (Solid State Drives)** utilizan chips de memoria flash NAND.

|**Tipo**|**Interfaz**|**Velocidad (2025)**|
|---|---|---|
|**SATA III**|6 Gb/s|550 MB/s máx.|
|**M.2 NVMe PCIe 3.0/4.0/5.0**|PCI Express x4|3500 – 14 000 MB/s|
|**U.2 / PCIe AIC**|Servidores|10 000 MB/s +|

**Ventajas:** sin partes móviles, bajo consumo, alta fiabilidad, latencias < 0.1 ms.  
**Tecnologías:** TLC, QLC, SLC, DRAM cache, controladoras Phison/E18, SandForce, Samsung Pablo.

**Tendencias:**

- SSD PCIe 5.0 NVMe Gen 5 con velocidades > 13 GB/s.
- Memoria 3D NAND de más de 200 capas.
- Sustitución progresiva de HDD en equipos personales.

---

## 3.7 Buses y ranuras de expansión

Los **buses** son canales que permiten la **transferencia de datos, direcciones y señales de control** entre los distintos componentes.

### 3.7.1 Tipos de bus

|**Tipo de bus**|**Función principal**|**Ejemplo actual**|
|---|---|---|
|**Bus de datos**|Transfiere información entre CPU, memoria y periféricos.|64 bits.|
|**Bus de direcciones**|Indica la ubicación de datos en memoria.|48-64 bits.|
|**Bus de control**|Coordina las operaciones (lectura/escritura).|Señales R/W, IRQ.|

### 3.7.2 Estándares modernos

- **PCI (Peripheral Component Interconnect):** histórico, 133 MB/s.
    
- **AGP (Accelerated Graphics Port):** obsoleto.
    
- **PCI-Express (PCIe):** actual estándar serie, con enlaces x1 a x16.
    
    - **PCIe 4.0:** 16 GT/s por carril.
        
    - **PCIe 5.0:** 32 GT/s.
        
    - **PCIe 6.0:** 64 GT/s con PAM4 (128 GB/s x16).
        
- **USB 4 / Thunderbolt 5:** hasta 120 Gb/s.
    

---

## 3.8 Fuente de alimentación (PSU) y refrigeración

### 3.8.1 Fuente de alimentación (PSU)

- **Función:** convierte la corriente alterna (CA) en continua (CC).
- **Formatos:** ATX, SFX, TFX.
- **Eficiencia:** certificaciones **80 PLUS (White → Titanium)**.
- **Potencia:** entre 400 y 1600 W según uso.
- **Protecciones:** OVP, OCP, UVP, SCP, OTP.
- **Tendencia:** fuentes **modulares** con conectores 12VHPWR (para GPUs PCIe 5.0).

### 3.8.2 Sistemas de refrigeración

|**Tipo**|**Características**|
|---|---|
|**Disipador pasivo**|Sin ventilador, uso en equipos silenciosos.|
|**Ventiladores activos**|Controlados por PWM, con sensores térmicos.|
|**Refrigeración líquida (AIO o custom)**|Máxima eficiencia para CPUs/GPU de alto TDP.|
|**Heatpipes y cámaras de vapor**|Transferencia térmica avanzada en portátiles y GPUs.|

**Consejos:** limpiar filtros de aire, usar pasta térmica de calidad y mantener una buena ventilación interna para evitar puntos calientes.

---

## 3.9 Tarjetas de expansión y periféricos

Las **tarjetas de expansión** amplían las funciones del sistema mediante los slots PCIe.

**Ejemplos comunes (2025):**

- Tarjeta gráfica dedicada (GPU).
- Tarjeta de sonido o interfaz DAC.
- Tarjeta de red Ethernet 10 Gb / Wi-Fi 7.
- Tarjeta de captura 4

K/8K o streaming.

- Aceleradores de IA (TPU/NPU PCIe).

### 3.9.1 Periféricos

**Clasificación:**

- **Entrada:** teclado, ratón, escáner, cámara, micrófono.
- **Salida:** monitor, impresora, altavoces.
- **Mixtos (E/S):** pantalla táctil, impresora multifunción.
- **Comunicación:** router, módem, switch, punto de acceso.
- **Almacenamiento externo:** discos USB 3.2, SSD portátiles, tarjetas SD.

**Protocolos modernos:** USB4, Thunderbolt 5, DisplayPort 2.1, HDMI 2.1, Bluetooth 5.4, Wi-Fi 7.

---
#  UNIDAD 4 – DIAGNÓSTICO, MANTENIMIENTO Y MONITORIZACIÓN DE SISTEMAS INFORMÁTICOS

---
## 4.1 Introducción

El **mantenimiento informático** consiste en el conjunto de **acciones preventivas, correctivas y predictivas** destinadas a garantizar el correcto funcionamiento, estabilidad y seguridad de los sistemas de hardware y software.

Una gestión eficiente permite **reducir fallos, prolongar la vida útil de los componentes y evitar pérdidas de datos o tiempo de servicio**.

(_Figura 4.1 – Flujo de mantenimiento del sistema informático._)

---

## 4.2 Tipos de mantenimiento

|**Tipo**|**Objetivo**|**Ejemplo de acción**|
|---|---|---|
|**Preventivo**|Evitar fallos antes de que ocurran.|Limpieza interna, actualización de drivers y firmware, revisión térmica.|
|**Correctivo**|Reparar fallos detectados.|Sustitución de fuente, reinstalación del sistema operativo.|
|**Predictivo**|Anticipar averías mediante monitorización.|Análisis SMART en discos, control de voltajes y temperaturas.|
|**Evolutivo**|Mejorar prestaciones.|Ampliación de RAM, cambio de SSD o GPU.|

---

## 4.3 Proceso de arranque y diagnóstico inicial

Al encender el sistema, se ejecuta una secuencia conocida como **POST (Power-On Self Test)**, controlada por el firmware BIOS/UEFI.

**Etapas:**

1. Comprobación de energía y CPU.
2. Verificación de RAM y periféricos.
3. Inicialización de dispositivos.
4. Detección de almacenamiento y carga del sistema operativo.

**Códigos de error o pitidos:** indican fallos detectados durante el POST.  
Cada fabricante tiene su propia tabla de códigos (AMI, Phoenix, Award).

Ejemplo:

- 1 pitido corto → sistema correcto.
- 3 pitidos largos → error de memoria.
- Pitido continuo → fallo en fuente o CPU.

---

## 4.4 Fallos comunes por componente

|**Componente**|**Síntoma**|**Causa probable / Solución**|
|---|---|---|
|**Fuente de alimentación (PSU)**|No arranca o se apaga al instante|PSU defectuosa o conexión ATX floja.|
|**Placa base**|Sin imagen o reinicios aleatorios|Fallo de chipset o BIOS dañada.|
|**CPU**|Sobrecalentamiento o bloqueos|Pasta térmica seca o disipador mal colocado.|
|**RAM**|Pantallazos azules, reinicios|Módulo dañado o incompatibilidad.|
|**Disco duro/SSD**|Lentitud, errores de lectura|Sectores defectuosos, revisar SMART.|
|**Tarjeta gráfica (GPU)**|Artefactos visuales, cuelgues en juegos|Temperatura alta o driver inestable.|

(_Figura 4.2 – Diagnóstico básico de componentes críticos._)

---

## 4.5 Herramientas de monitorización y diagnóstico

### 4.5.1 Herramientas de firmware

- **BIOS/UEFI Hardware Monitor:** muestra voltajes, temperaturas y velocidades de ventiladores.
    
- **Self-Test SMART:** analiza el estado de los discos.
    

### 4.5.2 Herramientas de software

- **CPU-Z / GPU-Z:** información detallada de CPU, GPU y memoria.
- **HWInfo / AIDA64:** monitorización completa de sensores.
- **CrystalDiskInfo / HD Sentinel:** estado de discos.
- **MemTest86+:** prueba exhaustiva de memoria RAM.
- **OCCT / Prime95:** test de estabilidad de CPU y fuente.

(_Figura 4.3 – Ejemplo de panel de monitorización con HWInfo._)

---

## 4.6 Buenas prácticas de mantenimiento

1. **Limpieza interna cada 6-12 meses:** eliminación de polvo, revisión de ventiladores y filtros.
2. **Gestión térmica:** uso de pasta térmica de calidad y ventilación equilibrada.
3. **Actualizaciones regulares:** firmware, BIOS/UEFI, drivers y sistema operativo.
4. **Copias de seguridad:** emplear herramientas automáticas (Backup, Cloud Sync).
5. **Uso de SAI (Sistema de Alimentación Ininterrumpida):** evita daños por cortes eléctricos.
6. **Documentación:** registrar hardware, versiones y fechas de mantenimiento.

---

## 4.7 Diagnóstico remoto y predictivo

En entornos empresariales, el mantenimiento se apoya en **monitorización remota** y sistemas de alerta temprana:

- **SNMP (Simple Network Management Protocol)** para redes.
- **Sistemas de gestión unificada (UEM)**.
- **Plataformas de IA predictiva** que detectan patrones de fallo (por ejemplo, aumento gradual de temperatura o ruido de ventiladores).
- **Alertas automáticas** por correo o dashboards.

(_Figura 4.4 – Diagrama de monitorización remota de equipos en red._)

---

## 4.8 Seguridad en el mantenimiento

Durante las tareas de mantenimiento deben seguirse normas de **seguridad eléctrica y electrostática (ESD):**

- Usar pulseras antiestáticas conectadas a tierra.
- Manipular los componentes por los bordes.
- Desconectar la corriente antes de abrir el chasis.
- Evitar superficies metálicas o cargadas de electricidad estática.
- Mantener orden y limpieza en el área de trabajo.

---
## 4.9 Resumen de la Unidad 4

El mantenimiento informático combina **técnica, prevención y diagnóstico**.  
Un sistema bien mantenido se traduce en:

- Mayor fiabilidad y duración de los componentes.
- Menor coste de reparación.
- Operatividad continua sin interrupciones.

> “No hay hardware perfecto, pero sí hardware bien mantenido.”

(_Figura 4.5 – Relación entre mantenimiento preventivo y vida útil del equipo._)

---
#  UNIDAD 5 – REDES DE COMUNICACIÓN

---

## 5.1 Concepto y función de una red informática

Una **red de comunicación** es un **conjunto de dispositivos interconectados** que comparten recursos, servicios y datos mediante un sistema de transmisión física o inalámbrica.

El objetivo principal de una red informática es **permitir la comunicación eficiente entre equipos**, ya sea localmente o a escala global (Internet).

(_Figura 5.1 – Esquema básico de una red de computadoras._)

---

## 5.2 Elementos básicos de una red

|**Elemento**|**Función**|
|---|---|
|**Nodos**|Dispositivos que participan en la red (PC, servidor, router, etc.).|
|**Medio de transmisión**|Canal físico o inalámbrico por el que circulan los datos.|
|**Tarjeta de red (NIC)**|Interfaz que conecta el dispositivo al medio.|
|**Protocolos de comunicación**|Conjunto de reglas que regulan el intercambio de información (por ejemplo, TCP/IP).|
|**Recursos compartidos**|Datos, impresoras, almacenamiento, servicios de red.|

---

## 5.3 Tipos de redes según su alcance

|**Tipo**|**Ámbito de cobertura**|**Ejemplos**|
|---|---|---|
|**PAN (Personal Area Network)**|Dispositivos personales (≤ 10 m).|Bluetooth, NFC, Wi-Fi Direct.|
|**LAN (Local Area Network)**|Red local dentro de un edificio.|Oficina, aula, hogar.|
|**CAN (Campus Area Network)**|Conexión de múltiples LAN en un campus.|Universidad o empresa con varios edificios.|
|**MAN (Metropolitan Area Network)**|Cobertura a nivel de ciudad.|Red de fibra de un operador.|
|**WAN (Wide Area Network)**|Red de ámbito nacional o global.|Internet.|
|**SAN (Storage Area Network)**|Red especializada para almacenamiento.|Centros de datos.|

(_Figura 5.2 – Clasificación de redes por extensión geográfica._)

---

## 5.4 Ventajas y objetivos de una red

- **Compartición de recursos:** impresoras, servidores, almacenamiento.
- **Comunicación instantánea:** correo, chat, VoIP, videoconferencia.
- **Centralización de información:** bases de datos y copias de seguridad.
- **Escalabilidad:** permite añadir nuevos nodos sin rediseñar toda la red.
- **Colaboración:** trabajo en grupo, entornos virtuales y cloud computing.
- **Eficiencia y reducción de costes:** aprovechamiento de infraestructura común.

---

## 5.5 Arquitecturas de red

### 5.5.1 Modelo cliente-servidor

Estructura jerárquica donde **un servidor central** proporciona servicios y recursos a múltiples **clientes**.

|**Tipo de servidor**|**Función principal**|**Ejemplo actual (2025)**|
|---|---|---|
|Servidor de archivos|Almacena y comparte datos.|NAS Synology, Windows Server, TrueNAS.|
|Servidor de impresión|Gestiona colas de impresión compartidas.|CUPS, PrintServer.|
|Servidor de correo|Envío y recepción de mensajes.|Postfix, Microsoft Exchange.|
|Servidor web|Aloja sitios y APIs.|Apache, Nginx, IIS.|
|Servidor proxy|Filtra tráfico y mejora la seguridad.|Squid, Cloudflare Gateway.|
|Servidor DNS|Traduce nombres a direcciones IP.|BIND, PowerDNS.|

### 5.5.2 Modelo peer-to-peer (P2P)

Cada equipo actúa simultáneamente como cliente y servidor.  
Ejemplo: redes de compartición de archivos (BitTorrent), blockchain, sistemas descentralizados.

**Ventajas:**

- Alta resiliencia.
- Sin dependencia de un servidor central.  

**Desventajas:**
- Menor control y seguridad.
- Riesgo de duplicidad o pérdida de datos.

(_Figura 5.3 – Comparativa entre arquitectura cliente-servidor y P2P._)

---

## 5.6 Medios de transmisión

Los **medios de transmisión** son los canales físicos o inalámbricos que transportan la señal digital entre dispositivos.

(_Figura 5.4 – Tipos de medios de transmisión guiados e inalámbricos._)

### 5.6.1 Medios guiados (cableados)

#### a) Cable de par trenzado (Twisted Pair)

- El más utilizado en redes **LAN Ethernet**.
- Compuesto por pares de hilos de cobre trenzados para reducir interferencias.

|**Tipo**|**Apantallamiento**|**Velocidad máx. (2025)**|
|---|---|---|
|**UTP (Unshielded Twisted Pair)**|Sin protección.|Hasta 10 Gb/s (Cat 6A).|
|**STP / FTP / S/FTP**|Apantallamiento individual o global.|Hasta 40 Gb/s (Cat 8).|

**Categorías de cable Ethernet (ISO/IEC 11801):**

- **Cat 5e:** hasta 1 Gb/s
- **Cat 6 / 6A:** hasta 10 Gb/s
- **Cat 7 / 7A:** hasta 25 Gb/s
- **Cat 8:** hasta 40 Gb/s

#### b) Cable coaxial

- Utilizado en redes antiguas y sistemas de televisión.
- Alta inmunidad a interferencias, pero baja flexibilidad.

#### c) Fibra óptica

- Medio más rápido y seguro.
- Transmite datos mediante **impulsos de luz** en lugar de corriente eléctrica.

|**Tipo**|**Núcleo**|**Distancia típica**|**Velocidad**|
|---|---|---|---|
|**Monomodo (SMF)**|~9 µm|Hasta 100 km|100 Gb/s +|
|**Multimodo (MMF)**|50–62,5 µm|Hasta 2 km|10–40 Gb/s|

**Ventajas:**

- Inmunidad total al ruido electromagnético.
- Alta seguridad y ancho de banda.
- Ligereza y durabilidad.

**Desventajas:**

- Instalación y terminación más costosa.

---

### 5.6.2 Medios no guiados (inalámbricos)

#### a) Ondas de radio

- Usadas por **Wi-Fi, Bluetooth, LTE, 5G, Wi-Fi 6/7**.
- Alcance variable y sensibles a obstáculos y saturación.

#### b) Microondas

- Enlaces punto a punto (WAN, redes metropolitanas).
- Requieren **línea de visión directa**.

#### c) Infrarrojos (IR)

- Comunicación a corta distancia sin interferencias electromagnéticas.
- Obsoletos frente a Bluetooth o NFC.

---

## 5.7 Modos de transmisión de datos

|**Modo**|**Dirección del flujo**|**Ejemplo**|
|---|---|---|
|**Símplex**|Un solo sentido.|Teclado → CPU.|
|**Semidúplex**|Ambos sentidos, no simultáneo.|Walkie-talkie.|
|**Dúplex completo**|Ambos sentidos simultáneos.|Comunicación Ethernet.|

(_Figura 5.5 – Modos de transmisión de datos._)

---

## 5.8 Dispositivos de interconexión

Los dispositivos de red permiten **enrutar, filtrar y distribuir** el tráfico según la topología y protocolos utilizados.

|**Dispositivo**|**Función principal**|**Nivel OSI**|
|---|---|---|
|**Hub (concentrador)**|Repite la señal a todos los puertos.|Capa 1 – Física|
|**Bridge (puente)**|Segmenta redes LAN filtrando tráfico.|Capa 2 – Enlace|
|**Switch (conmutador)**|Envía datos solo al destino correcto.|Capa 2 / 3|
|**Router (encaminador)**|Conecta redes distintas mediante IP.|Capa 3 – Red|
|**Gateway (pasarela)**|Traduce protocolos entre redes.|Capa 4–7|
|**Firewall (cortafuegos)**|Filtra y protege contra accesos no autorizados.|Capa 3–7|
|**Access Point (AP)**|Permite conexión inalámbrica Wi-Fi.|Capa 2|
|**Modem**|Modula/demodula señal digital-analógica.|Capa 1|

**Tendencias 2025:**

- **Routers Wi-Fi 7 (IEEE 802.11be)** con velocidades > 40 Gb/s.
- **Switches multigigabit (2.5G/10G)** para redes domésticas avanzadas.
- **Firewalls inteligentes con IA** para análisis de tráfico en tiempo real.

(_Figura 5.6 – Dispositivos de interconexión en una red local._)

---

## 5.9 Topologías de red

La **topología** define la forma en que los dispositivos se interconectan física y lógicamente.

|**Tipo**|**Descripción**|**Ventajas**|**Desventajas**|
|---|---|---|---|
|**Bus**|Todos los nodos comparten un único canal.|Económica, fácil instalación.|Un fallo en el cable afecta a toda la red.|
|**Anillo**|Cada nodo se conecta con dos vecinos.|Rendimiento predecible.|Un fallo rompe el anillo.|
|**Estrella**|Todos los nodos conectados a un hub/switch central.|Alta fiabilidad y control.|Si falla el nodo central, la red cae.|
|**Malla**|Todos los nodos están interconectados.|Máxima redundancia.|Costosa y compleja.|
|**Árbol / Jerárquica**|Combinación de estrella y bus.|Escalable.|Dependencia del nodo raíz.|

(_Figura 5.7 – Ejemplos de topologías físicas y lógicas._)

---

## 5.10 Protocolos y arquitecturas de red

### 5.10.1 Concepto

Un **protocolo de red** es un conjunto de **reglas, formatos y procedimientos** que permiten la comunicación entre dispositivos.

### 5.10.2 Modelo OSI (Open Systems Interconnection)

Estandarizado por la **ISO (ISO/IEC 7498-1)**, divide la comunicación en 7 capas jerárquicas.

|**Capa (de 7 a 1)**|**Nombre**|**Ejemplo de protocolo**|
|---|---|---|
|7|Aplicación|HTTP, FTP, SMTP|
|6|Presentación|TLS/SSL, MPEG|
|5|Sesión|NetBIOS, RPC|
|4|Transporte|TCP, UDP|
|3|Red|IP, ICMP|
|2|Enlace|Ethernet, Wi-Fi|
|1|Física|RJ-45, fibra óptica|

(_Figura 5.8 – Modelo OSI de referencia._)

### 5.10.3 Modelo TCP/IP

Base de Internet actual, desarrollado por DARPA (EE. UU.) en los años 70.  
Agrupa las capas en cuatro niveles: **Aplicación, Transporte, Internet y Acceso**.

|**Capa TCP/IP**|**Protocolos comunes**|**Función**|
|---|---|---|
|**Aplicación**|HTTP, HTTPS, FTP, DNS, SSH|Interacción con el usuario.|
|**Transporte**|TCP, UDP|Control del flujo y errores.|
|**Internet**|IP, ICMP, ARP|Enrutamiento de paquetes.|
|**Acceso a red**|Ethernet, Wi-Fi|Transmisión física.|

---

## 5.11 Tecnologías Ethernet y Wi-Fi (2025)

|**Tecnología**|**Estándar IEEE**|**Velocidad**|**Medio**|
|---|---|---|---|
|**Fast Ethernet**|802.3u|100 Mb/s|Par trenzado|
|**Gigabit Ethernet**|802.3ab|1 Gb/s|Cat 5e o superior|
|**10 Gigabit Ethernet**|802.3ae|10 Gb/s|Fibra / Cat 6A|
|**40/100 Gigabit Ethernet**|802.3ba|40–100 Gb/s|Fibra óptica|
|**Wi-Fi 6 (802.11ax)**|—|Hasta 9.6 Gb/s|2.4 / 5 GHz|
|**Wi-Fi 7 (802.11be)**|—|Hasta 46 Gb/s|2.4 / 5 / 6 GHz|

(_Figura 5.9 – Evolución de las velocidades Ethernet y Wi-Fi._)

---

## 5.12 Seguridad en redes

### 5.12.1 Amenazas comunes

- **Intrusiones y accesos no autorizados.**
- **Ataques DDoS y suplantación (spoofing).**
- **Malware y ransomware en redes corporativas.**
- **Intercepción de tráfico (sniffing).**

### 5.12.2 Medidas preventivas

- Uso de **firewalls y filtros perimetrales.**
- **VPNs (Virtual Private Networks)** para conexiones seguras.
- **Autenticación multifactor (MFA).**
- **Cifrado TLS 1.3 / IPsec.**
- Políticas de **Zero Trust** y segmentación de red.
- Actualización y gestión centralizada de dispositivos de red.

(_Figura 5.10 – Capa de seguridad perimetral con firewall y VPN._)

---
## 5.13 Resumen de la Unidad 5

|**Concepto clave**|**Descripción**|
|---|---|
|**Red**|Conjunto de dispositivos interconectados para compartir información.|
|**Medios de transmisión**|Físicos (cobre, fibra) e inalámbricos (radio, Wi-Fi, 5G).|
|**Topologías**|Bus, anillo, estrella, malla.|
|**Dispositivos**|Hub, switch, router, gateway, firewall.|
|**Protocolos**|Reglas de comunicación (TCP/IP, OSI).|
|**Seguridad**|Medidas para proteger integridad, confidencialidad y disponibilidad.|

---

> Las redes modernas son el sistema circulatorio de la información.  
> Sin ellas, ningún sistema informático puede existir de forma colaborativa ni escalable.

(_Figura 5.11 – Esquema general de infraestructura de red moderna._)

---
# UNIDAD 6 – SEGURIDAD INFORMÁTICA Y PREVENCIÓN DE RIESGOS LABORALES

---

## 6.1 Seguridad en sistemas informáticos

La **seguridad informática** busca **proteger la información y los recursos digitales** frente a accesos no autorizados, daños o pérdida.

(_Figura 6.1 – Triángulo de la seguridad: confidencialidad, integridad, disponibilidad._)

### 6.1.1 Principios fundamentales

1. **Confidencialidad:** la información solo es accesible para usuarios autorizados.
2. **Integridad:** los datos no deben ser alterados de forma no controlada.
3. **Disponibilidad:** los servicios deben permanecer operativos cuando se necesiten.

---

## 6.2 Amenazas y vulnerabilidades comunes

|**Tipo de amenaza**|**Descripción**|**Ejemplo**|
|---|---|---|
|**Malware**|Programas dañinos (virus, troyanos, ransomware).|WannaCry, Emotet.|
|**Phishing**|Engaño mediante correos o webs falsas.|Suplantación bancaria.|
|**Ataques DDoS**|Saturación de un servidor mediante peticiones masivas.|Bloqueo de páginas web.|
|**Ingeniería social**|Manipulación psicológica de usuarios.|Llamadas o mensajes falsos.|
|**Robo físico**|Sustracción de equipos o dispositivos de almacenamiento.|Portátiles, USBs sin cifrar.|

---

## 6.3 Medidas de protección

### 6.3.1 A nivel físico

- Mantener equipos en entornos ventilados y seguros.
- Control de acceso a salas técnicas y servidores.
- Uso de SAI (alimentación ininterrumpida) y extintores específicos.

### 6.3.2 A nivel lógico

- Contraseñas robustas y autenticación multifactor (MFA).
- Cifrado de discos y datos sensibles (BitLocker, VeraCrypt, LUKS).
- Copias de seguridad periódicas (local y cloud).
- Firewalls, antivirus y políticas de actualización.
- Principio de **menor privilegio**: cada usuario accede solo a lo necesario.
- Implementación de arquitecturas **Zero Trust**.

(_Figura 6.2 – Ejemplo de esquema de seguridad multicapa._)

---

## 6.4 Seguridad en redes

- Configuración de **firewalls perimetrales y segmentación VLAN**.
- Uso de **VPNs seguras (IPsec, SSL-VPN)**.
- Monitorización del tráfico con **IDS/IPS**.
- Mantenimiento de firmware y contraseñas en routers/switches.
- Políticas claras de acceso remoto y Wi-Fi protegido (WPA3).

---

## 6.5 Prevención de riesgos laborales en informática

El trabajo con equipos informáticos conlleva **riesgos físicos y ergonómicos** que deben prevenirse.

### 6.5.1 Condiciones ambientales

- **Temperatura:** entre 21 °C y 24 °C.
- **Humedad relativa:** 40–70 %.
- **Ruido ambiental:** inferior a 55 dB.
- **Iluminación adecuada:** sin reflejos ni deslumbramientos.

### 6.5.2 Ergonomía del puesto de trabajo

1. **Postura:** espalda recta, apoyada, pies en el suelo.
2. **Pantalla:** borde superior a la altura de los ojos (40–70 cm de distancia).
3. **Teclado y ratón:** alineados con el antebrazo, apoyo de muñecas opcional.
4. **Silla:** regulable, con soporte lumbar.
5. **Descansos visuales:** cada 45–60 min mirar a lo lejos 20 s (“20-20-20 rule”).
6. **Evitar fatiga mental:** alternar tareas y mantener pausas regulares.

(_Figura 6.3 – Postura ergonómica frente al ordenador._)

---

## 6.6 Buenas prácticas generales

- Mantener el software actualizado y evitar descargas no verificadas.
- No conectar dispositivos desconocidos (USB, HDD externos).
- Usar gestores de contraseñas y doble factor de autenticación.
- Revisar permisos de aplicaciones y redes sociales.
- Sensibilizar a los usuarios mediante formación continua.
- Aplicar políticas de **backup 3-2-1:** tres copias, en dos soportes, una externa.
---

## 6.7 Normas de comportamiento digital (ciberhigiene)

1. **No reutilizar contraseñas.**
2. **Verificar remitentes** antes de abrir archivos o enlaces.
3. **Bloquear la sesión** al ausentarse.
4. **Usar redes seguras** (evitar Wi-Fi público para datos sensibles).
5. **Reportar incidentes** inmediatamente al responsable TIC.

(_Figura 6.4 – Ciclo de ciberhigiene personal en el entorno laboral._)

---
## 6.8 Resumen de la Unidad 6

|**Aspecto**|**Objetivo principal**|**Ejemplo**|
|---|---|---|
|**Seguridad informática**|Proteger datos y sistemas.|Cifrado, firewall, antivirus.|
|**Ergonomía**|Prevenir lesiones y fatiga.|Postura correcta, iluminación adecuada.|
|**Prevención laboral**|Mantener condiciones seguras y saludables.|Clima, ruido, pausas activas.|

---

> La seguridad y la salud son parte esencial del rendimiento.  
> Un entorno informático seguro y ergonómico garantiza eficiencia, productividad y bienestar.

(_Figura 6.5 – Integración entre ciberseguridad, ergonomía y bienestar laboral._)

---
# ✅ Erratas y ajustes técnicos recomendados

## 1) Tamaño de sector en discos duros

- **Dónde:** Parte 1 (1.3.6) y notas originales del alumno.
    
- **Qué puse / aparece:** “Sectores suelen dividirse en **512 KB**”.
    
- **Por qué no es correcto:** El tamaño clásico es **512 bytes**; hoy es frecuente **4 KiB** (“Advanced Format”). 512 KB es un error de tres órdenes de magnitud.
    
- **Corrección:**
    
    > “Los **sectores físicos** son típicamente de **512 bytes** o **4096 bytes (4 KiB, Advanced Format)**. El tamaño lógico puede emular 512 bytes por compatibilidad.”
    

---

## 2) Throughput de PCIe 6.0

- **Dónde:** Parte 3 (3.7.2).
    
- **Qué puse:** “PCIe 6.0: 64 GT/s con PAM4 (**128 GB/s x16**)”.
    
- **Matiz:** Conviene **aclarar por dirección** para evitar ambigüedad.
    
- **Corrección:**
    
    > “**PCIe 6.0 x16** alcanza **~128 GB/s por dirección** (≈256 GB/s bidireccional, bruto/teórico).”
    

---

## 3) Conector “CPI” de 4 pines

- **Dónde:** Parte 3 (3.2.x) y notas originales.
    
- **Qué aparece:** “Conector de corriente 4 pins (**CPI**).”
    
- **Por qué no es correcto:** No existe “CPI”. Se refiere a **ATX12V 4-pin** (antiguo) o **EPS12V 4+4/8-pin** para CPU. El **Molex de 4 pines** es otro conector (periféricos antiguos).
    
- **Corrección:**
    
    > “**Conector de CPU**: **ATX12V 4-pin** (antiguo) o **EPS12V 4+4 / 8-pin** (actual). Para periféricos antiguos: **Molex 4-pin**.”
    

---

## 4) Controladoras y terminología de SSD

- **Dónde:** Parte 3 (3.6.2).
    
- **Qué puse:** “Controladoras Phison/E18, SandForce, Samsung _Pablo_…”
    
- **Por qué pulir:** **SandForce** está obsoleta en consumo; “Samsung _Pablo_” no es denominación pública estándar. Mejor usar controladoras **vigentes** y **genéricas**.
    
- **Corrección (enfoque 2025):**
    
    > “Controladoras habituales: **Phison E26 (PCIe 5.0)**, **Silicon Motion SM2269/SM2508**, **In-house** (p. ej., Samsung / WD) y equivalentes.”
    

---

## 5) Wi-Fi 7: cifras teóricas vs reales

- **Dónde:** Parte 5 (5.11, tabla).
    
- **Qué puse:** “Wi-Fi 7 (802.11be) **hasta 46 Gb/s**”.
    
- **Matiz:** 46 Gb/s es **máximo teórico PHY** (ancho 320 MHz, MLO, 4096-QAM, múltiples streams). Déjalo claro.
    
- **Corrección:**
    
    > “**Wi-Fi 7 (802.11be)**: **hasta ~46 Gb/s teóricos (PHY)**; **rendimientos reales** domésticos suelen estar muy por debajo (1–5+ Gb/s según condiciones).”
    

---

## 6) Regla 20-20-20 (ergonomía)

- **Dónde:** Parte 6 (6.5.2).
    
- **Qué puse:** “Descansos visuales cada **45–60 min**… ‘20-20-20’”.
    
- **Matiz:** La **regla 20-20-20** clásica es **cada 20 min** mirar a 20 pies durante 20 s.
    
- **Corrección:**
    
    > “Aplicar la **regla 20-20-20**: **cada 20 min**, mira a **20 pies (~6 m)** durante **20 s**. Además, pausas posturales más largas cada 45–60 min.”
    

---

## 7) Sistema de archivos y terminología

- **Dónde:** Parte 3 (3.6.1).
    
- **Qué puse:** Listado correcto (NTFS, exFAT, EXT4, Btrfs, ReFS…), pero conviene matizar compatibilidades.
    
- **Mejora recomendada:**
    
    > “**Windows**: NTFS (principal), exFAT (intercambio), ReFS (ediciones server/enterprise). **Linux**: EXT4 (predominante), **Btrfs/XFS** (servidores). **macOS**: **APFS** (moderno), HFS+ (legado).”
    

---

## 8) UEFI/BIOS y GPT

- **Dónde:** Parte 3 (3.2.3) y Parte 1 (1.3.6).
    
- **Qué puse:** Correcto, pero añade requisito común:
    
- **Mejora recomendada:**
    
    > “**UEFI + Secure Boot** recomienda **GPT**; **MBR** limita a **2 TB** y 4 particiones primarias.”
    

---

## 9) Nomenclatura de Ethernet y cables

- **Dónde:** Parte 5 (5.6.1 y 5.11).
    
- **Qué puse:** Categorías bien, pero añade **distancias** y matiz Cat 7.
    
- **Mejora recomendada:**
    
    > “**Cat 6A**: 10 GbE hasta **100 m**. **Cat 7/7A**: estándar ISO/IEC (no TIA), uso menos extendido; **Cat 8**: 25/40 GbE **hasta 30 m** (centros de datos).”
    

---

## 10) SO “actuales” listados

- **Dónde:** Parte 2 (2.2.2, tabla).
    
- **Qué puse:** “Windows 11, **macOS Sonoma**, **iOS 19**, Android 15…”
    
- **Matiz temporal:** Para evitar “versionitis”, mejor **generalizar** o citar **familia**.
    
- **Corrección:**
    
    > “**Windows 10/11**, **macOS 14+ (línea actual)**, **Linux 6.x**, **Android 14/15**, **iOS 17/18+**.”
    

---

## 11) VRAM y buses

- **Dónde:** Parte 3 (3.5).
    
- **Qué puse:** Correcto en general; añade **matiz de rendimiento**.
    
- **Mejora recomendada:**
    
    > “El **ancho de banda efectivo** depende de **tipo de VRAM (GDDR6/6X/7, HBM3e)**, **ancho de bus (128-384 bits)** y **frecuencia**; más bus ≠ siempre más rápido si la frecuencia o compresión varían.”
    

---

## 12) Notas sobre PCH / NorthBridge / SouthBridge

- **Dónde:** Parte 3 (3.2.1).
    
- **Qué puse:** Bien explicado; añade que **memoria y PCIe CPU-directos** reducen el papel del PCH.
    
- **Mejora recomendada:**
    
    > “En plataformas modernas, **controlador de memoria y algunas líneas PCIe** residen en la **CPU**, dejando al **PCH** puertos de E/S (USB, SATA, algunas PCIe adicionales).”
    

---

# 🧰 Textos corregidos (listas breves para reemplazar)

**Sectores HDD (sustituir en 1.3.6 y donde aparezca 512 KB):**

> “Los sectores físicos de un HDD son típicamente de **512 bytes** o **4096 bytes (4 KiB)**. Muchos discos 4 KiB emulan 512 B por compatibilidad (512e).”

**PCIe 6.0 (3.7.2):**

> “**PCIe 6.0**: **64 GT/s por carril con PAM4**. En configuración **x16**, ~**128 GB/s por dirección** (~**256 GB/s** bidireccional, teórico).”

**Conector CPU (3.2.x):**

> “Conector de alimentación CPU: **ATX12V 4-pin** (antiguo) o **EPS12V 4+4 / 8-pin** (actual). Para periféricos antiguos se usa **Molex 4-pin**.”

**Wi-Fi 7 (5.11):**

> “**Wi-Fi 7 (802.11be)**: **hasta ~46 Gb/s teóricos (PHY)** con 320 MHz, MLO y 4096-QAM; los **rendimientos reales** domésticos suelen ser muy inferiores.”

**Ergonomía (6.5.2):**

> “**Regla 20-20-20**: cada **20 min**, mirar a **20 pies (~6 m)** durante **20 s**; además, pausas posturales cada **45–60 min**.”

**SSD (3.6.2):**

> “Controladoras actuales típicas: **Phison E26 (PCIe 5.0)**, **Silicon Motion SM2269/SM2508** y **controladoras propietarias** (Samsung/WD).”

**Cables (5.6.1):**

> “**Cat 6A**: 10 GbE hasta **100 m**. **Cat 8**: 25/40 GbE **hasta 30 m** (CPD). **Cat 7/7A**: ISO/IEC (no TIA), uso menos común.”

**SO (2.2.2):**

> “Sistemas operativos actuales: **Windows 10/11**, **macOS (línea 14+)**, **Linux 6.x**, **Android 14/15**, **iOS 17/18+**.”

---

--- 
**Fecha de modificación:** 07/10/2025
**Estado:** <font color="#ff0000">No actualizado</font>
#DAM 

---
