
# Unidad 1: Introduction to Databases (Introducción a Bases de Datos)

Esta unidad cubre los conceptos fundamentales de bases de datos, los sistemas de gestión (DBMS), la arquitectura estándar, el modelo relacional básico, y la introducción al lenguaje de consulta estándar (SQL).

## 1.1 Conceptos Fundamentales

### 1.1.1 Definición de Datos e Información

**Datos (hechos brutos, cifras).** 
Los **datos** se refieren a hechos brutos, cifras o piezas de información. Pueden ser símbolos como números, nombres o fechas. Por sí mismos, los datos pueden tener un significado limitado.

**Información (datos organizados y procesados).** 
La **información** es lo que se obtiene cuando los datos se procesan y se organizan de una manera significativa. Cuando los datos se transforman en información, apoyan la comprensión o la toma de decisiones.

### 1.1.2 Definición y Necesidad de Bases de Datos (DB)

**Base de datos (colección organizada de datos almacenados electrónicamente).** 
Una **base de datos (DB)** es fundamentalmente una colección de datos organizada, almacenada electrónicamente (por una computadora). Está diseñada para un **fácil acceso, gestión y actualización.** Se puede pensar en una base de datos como un sistema de archivo digital. 

**Propósito de las DB (almacenar, buscar, gestionar y proteger información).** 
Las bases de datos son la columna vertebral de casi todos los sistemas digitales modernos. Su importancia radica en su utilidad para **gestionar grandes cantidades de información de manera eficiente, confiable y segura**. Los sistemas de bases de datos proporcionan las herramientas necesarias para almacenar, buscar y gestionar esta información. El objetivo del sistema de bases de datos es almacenar, actualizar, recuperar, organizar y **proteger** los datos.
Aseguran consistencia, precision y reliability estructurando los datos y forzando reglas de validación para prevenir duplicados, omisiones o acceso no autorizado.

**Ventajas de usar DB: estructuración, búsqueda rápida, consistencia y seguridad.** 
Las bases de datos resuelven problemas críticos asociados con el almacenamiento manual o basado en archivos, siendo mucho más fiables:
- **Manejo masivo de información**: Proporcionan las herramientas necesarias para almacenar, buscar y manejar grandes cantidades de datos de forma rápida. 
- **Estructuración de datos:** Aseguran que la información se almacene en un formato uniforme (como filas y columnas).
- **Búsqueda rápida y recuperación:** Están diseñadas para consultar y encontrar información específica rápidamente. A database is a collection of data arranged for ease and speed of search and retrieval
- **Consistencia y seguridad:** Aplican reglas de validación y control de acceso, previniendo duplicados, omisiones o acceso no autorizado. Las DB imponen reglas de integridad (como unicidad) y control de acceso.
- **Acceso Multiusuario:** Permiten que múltiples usuarios accedan y actualicen datos simultáneamente de manera controlada sin conflictos.
- **Reducción de Redundancia:** Minimizan la redundancia al almacenar los datos en un solo lugar y referenciarlos en otros.
- **Respaldo y Recuperación:** El DBMS gestiona mecanismos de respaldo y recuperación para restaurar datos tras errores o fallos.

**Ejemplos de la vida real (Dispositivos personales, Servicios en línea, Negocios/Organizaciones).** Las bases de datos se utilizan en casi todos los aspectos de la vida digital moderna:
    - **Dispositivos personales:** La lista de contactos o galería de fotos de un smartphone.
    - **Servicios en línea:** Perfiles de usuario en redes sociales como Facebook, servicios de _streaming_ como Netflix, catálogos de productos y transacciones de comercio electrónico.
    - **Negocios y Organizaciones:** Registros médicos, cuentas bancarias, sistemas de control de inventario y personal, historiales de clientes, registros de estudiantes (matrículas, calificaciones) y horarios de transporte (trenes, aerolíneas).

### 1.1.3 Comparación con Sistemas Tradicionales

#### /// Convertir en tabla el siguiente punto /////

- **DB vs. Hojas de Cálculo (diferencias en escalabilidad, concurrencia y manejo multiusuario).** | Característica | Bases de Datos (Gestionadas por un DBMS) | Hojas de Cálculo (ej. Excel) | | :--- | :--- | :--- | | **Propósito Principal** | Almacenamiento y recuperación eficiente, seguro y fiable de datos. | Manipulación, análisis y modelado simple de datos. | | **Escala** | Diseñadas para manejar conjuntos de datos **masivos** y crecientes. | Adecuadas para conjuntos de datos **pequeños o simples**. | | **Integridad de Datos** | Alta; se imponen esquemas y restricciones estrictas (claves, tipos de datos). | Baja; la estructura de datos y las reglas de validación se gestionan manualmente. | | **Acceso Multiusuario** | Diseñadas para acceso **concurrente** controlado por muchos usuarios. | Limitado; difícil controlar la edición simultánea sin conflictos. | | **Relaciones** | Soporta relaciones complejas entre múltiples tablas vinculadas (PK/FK). | Típicamente funciona como un único archivo (plano); carece de mecanismos para relaciones impuestas. |

- **DB vs. Sistemas basados en Archivos Tradicionales:** Los sistemas basados en archivos carecían de estándares y tenían problemas de dependencia de datos, duplicación y no ofrecían mecanismos para seguridad, concurrencia o recuperación.
    - **Interrelaciones.** El sistema basado en archivos **no interrelaciona** los archivos, mientras que el sistema de bases de datos tiene previstas herramientas para interrelacionar archivos.
    - **Redundancia e Inconsistencia.** En sistemas de archivos, es necesario crear archivos a medida, lo que conlleva la **redundancia** de datos. Si los datos no se actualizan debidamente en todos los archivos, existe el riesgo de **inconsistencia**. Las BD evitan la redundancia (almacenando los datos una sola vez) y, por lo tanto, no presentan riesgo de inconsistencia si el diseño es correcto.
    - **Integridad de Datos (restricciones implementadas por la DB).** En los sistemas de archivos, los programas deben **implementar todas las restricciones** sobre los datos, lo que complica el mantenimiento. La BD se encarga **directamente de implementar las restricciones**, liberando a los programas de tener que incorporar código fuente adicional para garantizarlas.
    - **Atomicidad (transacciones).** En los sistemas de archivos, es muy difícil garantizar que algunos conjuntos de operaciones se ejecuten de manera **atómica** (o todo o nada) ante fallos del sistema. Las BD incorporan la técnica de las **transacciones** para asegurar fácilmente esta ejecución atómica.
    - **Acceso Concurrente y Consistencia.** Las BD garantizan automáticamente la consistencia de los datos mediante la técnica de **bloqueo**, incluso cuando múltiples usuarios intentan actualizarlos simultáneamente.
    - **Seguridad y Vistas (perfiles y permisos).** Las BD pueden ser compartidas por muchos usuarios de diferentes tipos simultáneamente. Los usuarios pueden tener diferentes **vistas** del mundo real según su perfil y los permisos concedidos, lo que proporciona control de acceso y seguridad. En contraste, un archivo habitualmente sirve para un solo usuario y ofrece una visión única.
- **Usos posibles de archivos hoy en día (configuración, logs).** En algunos casos, puede ser preferible seguir utilizando archivos en lugar de una BD, como cuando el volumen de datos es muy pequeño o solo se trabaja con una entidad instancia sin interrelaciones. Algunas utilizaciones actuales posibles son:
    - **Archivos de configuración** de aplicaciones o sistemas.
    - **Archivos de registros de eventos (logs).**

---
## 1.2 Tipos de Datos y Bases de Datos

La elección del sistema de base de datos adecuado depende enteramente de la **naturaleza de los datos** que se vayan a manejar.

### 1.2.1 Tipos de Datos

Existen tres tipos principales de datos identificados según su formato y estructura:

- **Datos Estructurados** (fácilmente buscables, formato rígido: filas/columnas)
    
    - Son datos altamente organizados y formateados para ser fácilmente **buscables** dentro de una base de datos.
    - Se almacenan típicamente en un **formato tabular** con filas y columnas predefinidas, donde cada dato encaja en una categoría predefinida (columna).
    - Ejemplo: una tabla de empleados con columnas definidas para ID, nombre y fecha de contratación.
    - Generalmente son gestionados por **bases de datos relacionales (SQL)** debido a su esquema rígido.
- **Datos No Estructurados** (sin formato predefinido: emails, imágenes, videos)
    
    - **Carecen de un formato o modelo predefinido** y no encajan limpiamente en filas y columnas.
    - Ejemplos comunes incluyen texto de forma libre (como el cuerpo de un correo electrónico), imágenes, videos o publicaciones en redes sociales.
    - Este tipo de datos suele ser almacenado en **bases de datos NoSQL** o sistemas de almacenamiento especializados.
- **Datos Semi-estructurados** (JSON, XML)
    
    - Se sitúan entre los otros dos tipos.
    - Poseen **marcadores o etiquetas de organización** (como JSON o XML), pero no son tan rígidos como el formato de tabla estricto de los datos estructurados.
    - Al igual que los no estructurados, se manejan a menudo con **bases de datos NoSQL**.

### 1.2.2 Tipos Comunes de Bases de Datos

Las fuentes categorizan las bases de datos principalmente por su modelo de datos subyacente y su entorno de _hosting_.

- **Bases de Datos Relacionales (SQL Databases): organización en tablas, esquema estricto, uso de SQL.**
    
    - Son el tipo de base de datos **más prevalente**.
    - El modelo fue introducido por E. F. Codd en 1970.
    - Los datos se organizan en una o más **tablas** (relaciones), que representan una entidad o concepto, y se definen relaciones entre ellas.
    - Imponen un **esquema estricto** donde cada columna se define con tipos de datos específicos, haciéndolas ideales para datos estructurados.
    - Utilizan **SQL** (Structured Query Language) para consultas y modificaciones.
    - Son la opción preferida cuando se requiere **estricta consistencia** e integridad de datos (como en transacciones bancarias o registros de estudiantes).
    - Ejemplos: MySQL, PostgreSQL, Oracle, Microsoft SQL Server.
    
- **Bases de Datos NoSQL (Non-relational): usadas para datos no estructurados o semi-estructurados.**
    
    - Engloban varios tipos de bases de datos que **no utilizan el modelo relacional tradicional** basado en tablas.
    - Se usan para escenarios que exigen **alta escalabilidad y flexibilidad** y son adecuadas para datos no estructurados o semi-estructurados.
    - A menudo sacrifican algunas garantías de consistencia estricta a favor de la flexibilidad y el rendimiento con grandes volúmenes de datos distribuidos.
    - Tipos:
        - **Bases de Documentos:** Almacenan datos en formatos flexibles, como documentos JSON o XML. Ejemplo: **MongoDB**.
        - **Almacenes Clave-Valor (Key-Value stores):** Contienen datos simples estructurados como pares `clave=valor`, ideales para _caching_ y búsquedas rápidas. Ejemplo: **Redis**.
        - **Almacenes de Columna Ancha (Wide-column stores):** Permiten un conjunto flexible y disperso de columnas por fila. Ejemplo: **Cassandra**.
        - **Bases de Gráfos (Graph databases):** Diseñadas para gestionar datos **altamente interconectados** (como las relaciones en redes sociales). Ejemplo: **Neo4j**.
    
- **Bases de Archivo Plano (Flat-file Databases).**
    
    - Representan la **forma más simple** de base de datos.
    - Consisten esencialmente en un **único archivo de texto plano** (como un archivo CSV o Excel) que contiene registros.
    - **No tienen mecanismos para relaciones** entre datos; toda la información reside en una gran tabla. Son adecuadas solo para almacenamiento de datos muy pequeños y simples o para transferencia de datos.
    
- **Bases de Datos en la Nube (Cloud Databases).**
    
    - Bases de datos que están **alojadas remotamente en la nube** (en servicios como AWS, Google Cloud o Azure).
    - Esta categoría se refiere al entorno de _hosting_, no al modelo de datos; tanto las bases de datos relacionales tradicionales como las NoSQL pueden ofrecerse como servicios en la nube.
    - La principal ventaja es la **fácil escalabilidad y el mantenimiento gestionado** por el proveedor de la nube.
    
- **Otras (Orientadas a objetos, Almacenes de datos, Distribuidas).**
    
    - Existen otras bases de datos especializadas.
    - **Bases de datos orientadas a objetos**.
    - **Almacenes de datos (Data warehouses)**: grandes repositorios para consultas analíticas.
    - **Bases de datos distribuidas**: distribuyen datos en múltiples ubicaciones o servidores para mejorar la fiabilidad y el rendimiento.
    - **Bases de datos de series temporales (Time-series databases)**.

---
## 1.3. Sistemas de Gestión de Bases de Datos (DBMS)

### 1.3.1 Rol del DBMS

- **Definición (software que gestiona la DB).** Un **Sistema de Gestión de Bases de Datos (DBMS)** es la capa de _software_ que administra el almacenamiento, la organización y la manipulación de los datos. Actúa como una interfaz o mediador entre los datos brutos almacenados y los usuarios o aplicaciones que necesitan acceder a esa información.
    
- **Funciones Centrales: Almacenamiento, Recuperación y Actualización de datos.** El DBMS es responsable de cómo se almacenan, organizan, actualizan y recuperan los datos del disco de manera eficiente.
    
- **Definición del Esquema (estructura de datos).** El DBMS permite **definir la estructura (esquema)** de los datos (por ejemplo, creando tablas, especificando tipos de datos para las columnas, etc.).
    
- **Control de Concurrencia y Acceso Multiusuario.** En un entorno multiusuario, el DBMS asegura que las operaciones concurrentes de múltiples usuarios o aplicaciones **no interfieran** entre sí de manera perjudicial. Utiliza técnicas como las **transacciones** para asegurar la **ejecución atómica** de las operaciones (o se completan todas o ninguna) ante fallos del sistema. El DBMS provee la funcionalidad de **concurrencia**.
    
- **Seguridad y Control de Acceso.** El DBMS ofrece mecanismos de **seguridad** para controlar quién puede acceder o modificar los datos. Los usuarios pueden tener **diferentes vistas** de la información según su perfil y los permisos que se les concedan.
    
- **Copia de Seguridad y Recuperación.** El sistema gestiona regularmente los **respaldos y los mecanismos de recuperación** para restaurar los datos tras errores o caídas, lo cual es crucial para mantener la alta fiabilidad.
    
- **Mantenimiento de la Integridad de Datos y Reducción de Redundancia.** Un DBMS minimiza la **redundancia** al permitir que los datos se almacenen en un solo lugar y sean referenciados desde otros. Además, **aplica y mantiene las restricciones de integridad** (como la unicidad o la no nulidad) directamente sobre los datos, sin requerir código adicional en los programas de aplicación.
    
- **Diccionario de Datos (Metadata).** El DBMS mantiene un **Diccionario de Datos** (también conocido como _catálogo_) que almacena información sobre la base de datos misma, lo que se denomina **metadata** (_datos sobre los datos_). El diccionario contiene descripciones de objetos de la base de datos como tablas, columnas, usuarios, reglas y vistas.
    

### 1.3.2 Tipos de Usuarios DB

Un sistema de bases de datos se compone de cuatro partes interconectadas: Datos, _Software_ (DBMS), _Hardware_ y **Usuarios**. Los usuarios se clasifican en:

- **Usuarios Finales (End Users).** Son el tipo de usuario más común. Usan el sistema de bases de datos para lograr algún objetivo, por ejemplo, consultando o ingresando datos (como un empleado que consulta registros de clientes).
    
- **Desarrolladores de Aplicaciones (Application Developers).** Escriben el _software_ que permite a los usuarios finales interactuar con el sistema de bases de datos.
    
- **Administrador de Base de Datos (DBA).** Diseña y gestiona el sistema de bases de datos en su totalidad. El DBA controla el sistema, gestiona nuevos usuarios, realiza copias de seguridad y asegura la protección de los datos.
    
- **Programador de Sistemas de Bases de Datos (Database system programmer).** Escribe o mantiene el _software_ del DBMS en sí.
    

### 1.3.3 Ejemplos de DBMS Populares

El campo de los DBMS es amplio. Las fuentes mencionan ejemplos basados en los dos modelos principales:

- **Relacionales (SQL Databases):** Utilizan el modelo de tablas y el lenguaje SQL.
    
    - **MySQL**.
    - **PostgreSQL**.
    - **Oracle** (a menudo el más potente y usado).
    - **Microsoft SQL Server**.
    - **SQLite** (ligero, basado en archivos, incrustado en aplicaciones).
    - **Microsoft Access** (sistema de escritorio más simple).
- **NoSQL (Non-relational):** Adecuados para datos no estructurados y flexibilidad.
    
    - **MongoDB** (base de datos de documentos).
    - **Firebase Realtime Database / Firestore** (servicios basados en la nube de Google para sincronización en tiempo real).

### 1.3.4 Arquitectura ANSI/SPARC (Modelo de Tres Niveles)

La arquitectura ANSI/SPARC, propuesta en 1975, es un marco que define una **estructura de tres niveles de abstracción** para las bases de datos. Este modelo tiene como objetivo separar el almacenamiento físico de cómo los usuarios ven e interactúan con los datos.

- **Nivel Interno (Internal Level):**
    
    - Se ocupa del **almacenamiento físico de los datos**.
    - Incluye la estructura de los registros en el disco (archivos, páginas, bloques) y los índices y la ordenación de los registros.
    - Es de interés para los programadores de sistemas de bases de datos.
- **Nivel Conceptual (Conceptual Level):**
    
    - Se ocupa de la **organización lógica de los datos como un todo**.
    - Utiliza abstracciones para eliminar detalles innecesarios sobre el almacenamiento interno.
    - Es de interés para los Administradores de Bases de Datos (DBA) y los programadores de aplicaciones.
- **Nivel Externo (External Level):**
    
    - Proporciona una **vista de la base de datos adaptada al usuario**.
    - Se pueden **ocultar partes de los datos** (vistas), y los datos se presentan en un formato útil para el usuario.
    - Es de interés para los usuarios finales y los programadores de aplicaciones.
- **Mapeos (traducción entre niveles).** Los **mapeos** traducen la información de un nivel al siguiente (Mapeo Externo/Conceptual y Mapeo Conceptual/Interno).
    
- **Independencia de Datos (Física y Lógica).** Estos mapeos proporcionan **independencia de datos**.
    
    - La **independencia física de los datos** significa que los cambios en el nivel interno (almacenamiento) no deberían afectar al nivel conceptual.
    - La **independencia lógica de los datos** significa que los cambios en el nivel conceptual (diseño lógico) no deberían afectar a los niveles externos (aplicaciones de usuario).

---

El modelo ANSI/SPARC es como un edificio de tres pisos: el sótano (Nivel Interno) gestiona cómo se almacenan físicamente los ladrillos y el cemento; el plano principal (Nivel Conceptual) muestra la estructura completa del edificio (las habitaciones y las paredes, independientemente de cómo se construyeron); y los apartamentos individuales (Nivel Externo) son las vistas personalizadas que cada inquilino tiene de la estructura, sin preocuparse por los cimientos ni por los planos completos del edificio.

---
## 1.4 El Modelo Relacional Básico y SQL

Esta sección aborda la estructura fundamental del modelo de datos predominante en las bases de datos actuales y el lenguaje estándar utilizado para interactuar con él.

### 1.4.1 Estructura del Modelo Relacional

1. **El Modelo Relacional de E.F. Codd (1970).**
    
    - El modelo relacional fue introducido por **E. F. Codd en 1970**.
    - Es el modelo de base de datos **más prevalente** en uso hoy en día.
    - El modelo se basa en una sólida **teoría matemática de relaciones** (teoría de conjuntos).
    - Cubre tres áreas principales: **estructura de datos**, **integridad de datos** y **manipulación de datos**.
2. **Componentes del Modelo (Tablas/Relaciones, Campos/Atributos, Registros/Tuplas).**
    
    - La información se almacena en **tablas** (también llamadas **relaciones**).
    - Una tabla es la unidad básica de almacenamiento, conceptualmente similar a una cuadrícula o matriz. Cada tabla representa una colección de entidades del mismo tipo.
    - Las tablas están formadas por **columnas** y **filas**.
3. **Columnas (Campos/Atributos): Tipos de datos, Restricciones (NOT NULL).**
    
    - Las **columnas** (campos o atributos) son las divisiones verticales que describen las propiedades de la entidad.
    - Cada columna debe tener un **tipo de dato definido** (ej. Texto, Número, Fecha), lo cual es crucial para mantener la integridad de los datos.
    - El modelo relacional impone un **esquema estricto**.
    - Los campos pueden tener **restricciones** (constraints), por ejemplo, la restricción **NOT NULL** especifica que un campo no puede estar vacío.
4. **Filas (Registros/Tuplas): Una instancia de la entidad.**
    
    - Las **filas** (registros o tuplas) son las entradas horizontales y representan una **instancia** o un objeto individual de la entidad.
    - El orden de las filas generalmente **no es significativo** en la base de datos.
    - Las filas pueden ser leídas, añadidas, modificadas o removidas a través de operaciones de bases de datos.

### 1.4.2 Claves Primarias y Foráneas (Introducción)

1. **Clave Primaria (Primary Key, PK): Identificador único, no NULL.**
    
    - Una **Clave Primaria (PK)** es uno o una combinación de campos que **identifica de forma única** cada registro en una tabla.
    - Dos filas no pueden tener el mismo valor de clave primaria.
    - Debe tener un valor (**no NULL**), garantizando así la **Integridad de Entidad**. Si una PK contiene NULLs, no puede identificar unívocamente la tupla.
    - Cualquier conjunto de atributos que podría ser una PK se denomina **clave candidata**.
2. **Clave Foránea (Foreign Key, FK): Campo que se refiere a la PK de otra tabla para establecer relaciones.**
    
    - Una **Clave Foránea (FK)** es un conjunto de atributos en una tabla (la referente o "hija") que se utiliza para **enlazar datos** al referenciar la **Clave Primaria (PK)** de otra tabla (la referenciada o "padre").
    - Las FK son esenciales para **establecer relaciones** entre tablas.
3. **Relaciones entre Tablas (ejemplo Clientes-Órdenes).**
    
    - La FK aplica la **Integridad Referencial**, un concepto vital para la consistencia.
    - El valor de una FK debe **coincidir con un valor de la PK** en la tabla referenciada o ser **completamente NULL** (si está permitido). Esto previene registros "huérfanos" (por ejemplo, una orden que no está vinculada a un cliente existente).
    - En el ejemplo **Clientes y Órdenes**, la tabla _Orders_ contiene la `CustomerID` como FK, la cual referencia la `CustomerID` (PK) en la tabla _Customers_.

### 1.4.3 Tipologías de Acceso a Datos

1. **Acceso Secuencial vs. Acceso Directo.**
    
    - El **acceso secuencial** a un registro implica acceder previamente a todos los registros anteriores.
    - El **acceso directo** a un registro implica la obtención directa de dicho registro.
2. **Acceso por Valor vs. Acceso por Posición.**
    
    - El **acceso por valor** obtiene un registro en función del valor de uno de sus campos, sin considerar la posición.
    - El **acceso por posición** obtiene un registro basándose en la posición determinada que ocupa, sin considerar su contenido.
3. **Cuatro Tipologías (SP, DP, SV, DV).**
    
    - **SP (Secuencial por Posición):** Acceso al registro que sigue inmediatamente al que se acaba de acceder.
    - **DP (Directo por Posición):** Obtención directa de un registro por ocupar una posición determinada (ejemplo: uso de índices _hashing_).
    - **SV (Secuencial por Valor):** Acceso al registro posterior según una ordenación preestablecida basada en el valor de un campo (ejemplo: lista de alumnos ordenada alfabéticamente por apellido).
    - **DV (Directo por Valor):** Obtención directa de un registro por tener un valor específico en alguno de sus atributos (ejemplo: buscar un alumno por su nombre y apellidos).

### 1.4.4 SQL Básico (Structured Query Language)

1. **Definición (lenguaje estándar para DBMS relacionales).**
    
    - **SQL (Structured Query Language)** es el **lenguaje estándar** diseñado para gestionar y consultar datos en sistemas de gestión de bases de datos relacionales.
    - SQL es un lenguaje de **alto nivel y declarativo**; le describes al DBMS lo que quieres, y este se encarga de cómo obtenerlo.
2. **Tipos de Lenguajes: DML (Manipulación) y DDL (Definición).**
    
    - Los comandos SQL se dividen en categorías:
        - **DML (Data Manipulation Language):** Para consultar y modificar datos (incluye SELECT, INSERT, UPDATE, DELETE).
        - **DDL (Data Definition Language):** Para definir o alterar la estructura o esquema de la base de datos (CREATE TABLE, ALTER TABLE).
3. **Sentencia SELECT (Consultar datos): Sintaxis (SELECT, FROM, WHERE), uso de `*`.**
    
    - La sentencia **SELECT** se utiliza para recuperar datos de una o más tablas. Es una operación **no destructiva**.
    - La sintaxis básica es `SELECT <columnas> FROM <table> WHERE <condición(es)>;`.
    - El símbolo **`*`** (asterisco) se utiliza como un comodín para seleccionar **todas las columnas** de la tabla.
    - La cláusula **WHERE** (opcional) se utiliza para aplicar filtros y obtener solo las filas que cumplen una condición.
4. **Sentencia INSERT (Añadir datos): Sintaxis, Inserción de múltiples filas.**
    
    - La sentencia **INSERT** se usa para añadir nuevos registros (filas) a una tabla.
    - La sintaxis básica para añadir una sola fila es: `INSERT INTO <table> (<columna1>, ...) VALUES (<valor1>, ...);`.
    - Algunos dialectos SQL permiten la **inserción de múltiples filas** separando las tuplas de valores con comas.
5. **Consideraciones en la inserción (tipos de datos, NULL, violaciones de restricciones).**
    
    - Se debe asegurar que los **tipos de datos** de los valores coincidan con los tipos de las columnas.
    - Si la información falta o es desconocida, se puede usar **NULL** (si la columna lo permite).
    - Una inserción **no debe violar las restricciones** de la tabla, como la unicidad de la clave primaria o la integridad referencial de las claves foráneas.
6. **Mención de UPDATE y DELETE.**
    
    - El comando **UPDATE** se usa para **modificar** registros existentes.
    - El comando **DELETE** se usa para **eliminar** registros.
7. **Mención de JOINs (Consulta de Múltiples Tablas).**
    
    - Las operaciones **JOIN** se utilizan para **combinar datos de tablas relacionadas**.
    - El _join_ funciona haciendo coincidir las filas entre tablas utilizando la relación de clave foránea/clave primaria (por ejemplo, al unir las tablas _Orders_ y _Customers_ en el campo `CustomerID`). Estas operaciones demuestran el poder de las bases de datos relacionales.

---

---

**Fecha de modificación:** 06/11/2025
**Estado:** <font color="#00ff00">Actualizado</font>
#DAM 

---
