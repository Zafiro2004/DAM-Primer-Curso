
# Unidad 2: A Relational Model (Modelo Relacional y Diseño)

Esta unidad profundiza en el diseño de bases de datos (E-R Model) y las bases teóricas del modelo relacional (Integridad y Álgebra Relacional).

## 2.1 Diseño de Bases de Datos

El diseño de una base de datos requiere considerar qué **tablas**, **claves** y **restricciones** son necesarias, además de tener en cuenta el uso que se le dará a la base de datos. El proceso de diseño se estructura fundamentalmente en tres grandes etapas:

1. **Diseño Conceptual**.
2. **Diseño Lógico**.
3. **Diseño Físico**.

Estas fases siguen una secuencia lógica para la creación de un sistema de base de datos eficiente.

### 2.1.1 Fases del Diseño

#### **Diseño Conceptual (Modelo independiente de DBMS, E-R Model)**

El Diseño Conceptual es la primera fase del proceso de diseño.

- **Objetivo:** Construir un modelo que sea **independiente de la elección del DBMS** (Sistema de Gestión de Bases de Datos) y representar la realidad para capturar los requisitos de datos del negocio.
- **Modelo Utilizado:** Se utiliza el **Modelo Entidad-Relación (E-R Model)**. Este modelo de alto nivel, propuesto por **Dr. Peter Chen en 1976**, se utiliza para modelar estructuras del mundo real conceptualmente.
- **Resultado:** Consiste en construir un **Diagrama Entidad-Relación (ERD)** y asociar un **diccionario de datos**. El ERD proporciona una **vista conceptual** de la base de datos.
- **Elementos del Modelo E-R:** Los elementos principales que se especifican son:
    - **Entidades:** Objetos o conceptos del mundo real sobre los que se almacenan datos.
    - **Atributos:** Propiedades que describen a las entidades.
    - **Identificadores:** Atributos que identifican de forma única una instancia de entidad (Claves Primarias en el modelo relacional).
    - **Relaciones:** Describen los vínculos entre entidades.
- **Tipos de Atributos en el Modelo Conceptual:** A diferencia del modelo relacional, el modelo conceptual permite el uso de atributos complejos:
    - **Atributos Compuestos:** Atributos que pueden dividirse en más atributos (ej. Dirección se divide en Calle, Ciudad).
    - **Atributos de Múltiples Valores:** Atributos que permiten múltiples valores (ej. varios números de teléfono).
    - **Atributos Derivados:** Atributos que se pueden calcular (derivar) a partir de otros atributos (ej. la edad a partir de la fecha de nacimiento).

#### **Diseño Lógico (Traducción al modelo de datos del DBMS, típicamente Relacional)**

La fase de Diseño Lógico sigue al Diseño Conceptual.

- **Objetivo:** Trabajar con el modelo de datos abstracto (ERD) para traducirlo al **modelo de datos** utilizado por el Sistema de Gestión de Bases de Datos (**DBMS**) que se empleará para implementar y mantener la base de datos.
- **Traducción Común:** La práctica más habitual es transformar el **Diagrama E-R** en **tablas relacionales**, que es el modelo más común.
- **Implementación:** Esta fase consiste en crear el **esquema relacional** (la estructura de las tablas) con:
    - **Tablas** (o relaciones).
    - **Claves** (primarias y foráneas).
    - **Restricciones** de integridad.
- **Consideraciones:** Es necesario tomar en cuenta la tecnología específica que se utilizará, ya que el esquema conceptual puede adaptarse a diferentes modelos lógicos, como el Relacional, Jerárquico, Orientado a Objetos o Distribuido.

#### **Diseño Físico (Implementación a bajo nivel, índices, espacio, parámetros)**

El Diseño Físico es la fase final, donde el diseño se convierte en una base de datos operacional.

- **Objetivo:** Implementar el esquema lógico en un **DBMS específico** y definir las estructuras de implementación a **bajo nivel**.
- **Decisiones Clave:** Esta fase se caracteriza por decisiones relacionadas con aspectos de implementación física, las cuales están estrechamente ligadas al DBMS con el que se trabaja. Estas incluyen:
    - **Definición de índices:** Estructuras que permiten la búsqueda rápida y la optimización de consultas.
    - **Estrategias de optimización** y particiones.
    - **Asignación de espacio inicial** para las tablas y previsión de su crecimiento.
    - **Estructura de los registros en disco** (archivos, páginas, bloques).
    - **Selección del tamaño del búfer**.
    - **Parametrización del DBMS** según las opciones que ofrezca.
- **Contexto:** Para estas decisiones, se deben tener en cuenta las características de los procesos que operan con los datos, la frecuencia de ejecución de las consultas y el volumen de información a almacenar.

---

**Analogía:** Piense en el diseño de una base de datos como la **construcción de un edificio**:

- **Diseño Conceptual (ER Model):** Es el **boceto arquitectónico** inicial. Define las entidades (habitaciones), sus atributos (características) y cómo se relacionan (puertas y pasillos), sin preocuparse por los materiales exactos.
- **Diseño Lógico (Relacional):** Es la **conversión de esos bocetos a planos de ingeniería**, eligiendo el sistema de construcción (ej. marco de acero) y detallando las relaciones (claves primarias y foráneas) para asegurar la estructura.
- **Diseño Físico:** Es el **proceso de construcción real** en el sitio. Se decide el tipo de cimientos (índices), se planifica la distribución del cableado y el almacenamiento (espacio en disco) y se establecen los parámetros específicos del entorno (DBMS).

--- 
## 2.2 Modelado Entidad-Relación (E-R)

El **Modelado Entidad-Relación (E-R)** es la técnica principal utilizada durante la fase de **Diseño Conceptual** de una base de datos. Su objetivo es modelar la realidad y capturar los requisitos de datos del negocio.

### 2.2.1 Introducción al Modelo E-R

**Definición (Modelo conceptual de alto nivel)**

El Modelo Entidad-Relación (E-R) es un **modelo de datos conceptual de alto nivel** utilizado para el diseño de bases de datos. Fue propuesto por el **Dr. Peter Chen en 1976**.

El E-R Model fue desarrollado para facilitar el diseño de bases de datos al permitir la especificación de un esquema empresarial que representa la estructura lógica general de la base de datos. Se basa en la percepción del mundo real como una colección de objetos básicos (entidades) y las relaciones entre estos objetos.

**Componentes principales: Entidades, Atributos y Relaciones**

El modelo E-R se compone fundamentalmente de:

- **Entidades:** Objetos o conceptos sobre los que se almacena información.
- **Atributos:** Propiedades de las entidades o relaciones.
- **Relaciones:** Vínculos lógicos entre entidades.
- También incluye los **Identificadores** de las entidades y las **Entidades Asociativas**.

### 2.2.2 Entidades

**Definición (objeto o cosa distinguible)**

Una **Entidad** es una "cosa" u "objeto" en el mundo real que es **distinguible** de todos los demás objetos. Puede ser un objeto físico (ej. Empleado) o un concepto abstracto (ej. Curso).

**Clase/Conjunto de Entidades vs. Instancia/Ocurrencia**

- La **Clase de Entidad** o **Conjunto de Entidades** (_Entity set_) es la descripción estructural de cosas que comparten atributos comunes (ej. todos los Estudiantes). El término "Entidad" se utiliza a menudo para referirse a este grupo.
- La **Instancia de Entidad** u **Ocurrencia** (_Entity instance_) es la manifestación específica de una entidad particular (ej. el Estudiante #123).

**Notación (Rectángulo)**

Las entidades tipo se representan en los diagramas E-R mediante un **rectángulo** etiquetado con el nombre de la entidad.

- Una convención habitual es que el nombre de la entidad se escriba en **mayúsculas y en singular** dentro del rectángulo.

**Entidades Fuertes y Débiles**

- Una **Entidad Fuerte** es aquella que no depende de otra entidad para existir (ej. `ESTUDIANTE`).
- Una **Entidad Débil** necesita que otra entidad fuerte exista para poder existir (ej. `CALIFICACIÓN` necesita a `ESTUDIANTE`). Las entidades débiles se relacionan con la entidad fuerte con una relación uno a muchos (1:N).

### 2.2.3 Atributos

**Propiedades que describen una entidad**

Los atributos son las **propiedades, aspectos, hechos o detalles** que describen una entidad. Son los datos que se necesitan guardar de cada entidad o entidad asociativa. Todas las instancias de una entidad tienen los mismos atributos, pero varían en los valores de esos atributos.

**Tipos de Atributos**

A diferencia del modelo relacional, el modelo conceptual E-R permite el uso de atributos complejos.

- **Simple:** Es un atributo que no puede dividirse en partes más pequeñas sin que esto implique la pérdida de su significado.
- **Compuesto (se divide en partes más pequeñas, ej. Dirección):** Un atributo que puede dividirse en otros atributos más pequeños. Ejemplos incluyen `Nombre` o `Dirección`.
- **Multivalor (permite múltiples valores, ej. Teléfonos):** Un atributo que permite múltiples valores para una sola instancia de entidad (ej. varios números de teléfono o habilidades).
- **Derivado (se puede calcular, ej. Edad):** Atributos cuyo valor puede ser calculado (_derived_) a partir de otros atributos o entidades interrelacionadas. Ejemplo: la edad (calculada a partir de la fecha de nacimiento) o el total de una compra.

**Atributo NULL (valor desconocido o faltante)**

Un atributo puede tener un **valor nulo (NULL)** cuando la información está ausente o es desconocida.

**Notación (Óvalo)**

En los diagramas E-R, los atributos se representan típicamente como **óvalos** (_ellipses_) conectados a la entidad por una línea.

### 2.2.4 Relaciones

**Definición (Asociación entre dos o más entidades)**

Una **Relación** es una **asociación** o vínculo lógico entre dos o más entidades.

- Las relaciones tienen un **nombre**, a menudo un verbo, que describe el vínculo lógico entre las entidades.
- La relación representa algo que debe ser recordado en el sistema y que no puede ser calculado o derivado de otros datos.
- Una relación no puede existir por sí misma; requiere las entidades para tener sentido.

**Notación (Rombo/Diamante)**

Las relaciones se representan en los diagramas E-R mediante un **rombo** o **diamante** (_diamond_).

**Atributos de una Relación**

Las relaciones pueden tener **atributos** si es necesario reflejar ciertas características de la interrelación (ej. la fecha en que se realizó la asociación).

**Relaciones Múltiples (entre las mismas entidades)**

Pueden existir **múltiples relaciones** entre las mismas entidades, siempre que estas sean independientes o diferentes.

**Relaciones Transitivas y Redundantes**

- Una **Relación Transitiva** ocurre cuando las entidades pueden estar relacionadas indirectamente a través de dos relaciones.
- Una relación es **Redundante** si puede ser representada completamente por relaciones transitivas alternativas.
- En el caso de relaciones 1:1 redundantes, se puede considerar fusionar las dos entidades en una sola.

**Entidad Asociativa (funciona como entidad y relación, típicamente para M:N)**

Una **Entidad Asociativa** (_Associative entity_) es un concepto que representa algo que funciona como **entidad** y como **relación** al mismo tiempo. Se utiliza a menudo para representar una relación que tiene información propia que necesita ser mantenida (atributos) y que conecta a otras entidades. Las relaciones pueden ser promovidas a entidades, especialmente si tienen atributos.

### 2.2.5 Cardinalidad y Grado de una Relación

**Cardinalidad (participación mínima y máxima de instancias)**

La **Cardinalidad** indica la interrelación de correspondencia entre las ocurrencias de las entidades. Describe cuántas instancias de entidad pueden participar en la relación.

**Cardinalidad Máxima (Tipo de Relación)**

La cardinalidad máxima describe el número máximo de instancias de entidad que participan en una relación. Para relaciones binarias, existen tres tipos:

- **Uno a Uno (1:1):** Una instancia de una entidad se relaciona con exactamente una instancia de otra entidad (ej. un gobernador y un estado).
- **Uno a Muchos (1:N):** Una instancia de una entidad "padre" se relaciona con múltiples instancias de una entidad "hija". Este es el tipo de relación más común.
- **Muchos a Muchos (N:M):** Cada instancia de una entidad se relaciona con múltiples instancias de la otra entidad, y viceversa.

**Cardinalidad Mínima: Opcional (0) vs. Obligatoria (1)**

La cardinalidad mínima describe el número mínimo de instancias que **deben** participar en una relación. Los mínimos se expresan generalmente como cero o uno:

- **0 (Opcional):** La participación de la entidad en la relación es opcional.
- **1 (Obligatoria/Mandatoria):** La participación de la entidad en la relación es obligatoria.

**Grado de la Relación (número de entidades involucradas)**

El **Grado de la Relación** describe el número de entidades que participan en una relación:

- **Binaria:** Involucra dos entidades. Es el tipo más común.
- **Unaria/Recursiva:** Solo una entidad participa en la relación, relacionándose consigo misma (ej. un empleado supervisa a otro). Se dice que es de grado 2 si solo una entidad participa en ella, relacionándose consigo misma.
- **Ternaria:** Involucra tres entidades.
- **N-aria:** Involucra más de tres entidades.

**Manejo de M:M (División en dos 1:N mediante una tabla de unión/entidad asociativa)**

Las relaciones Muchos a Muchos (M:M) son difíciles de representar en la implementación relacional. Se resuelven típicamente creando una **Entidad Asociativa** (o **Tabla de Unión/Junction table**) que divide la relación M:M en **dos relaciones Uno a Muchos (1:N)**. Esta tabla intermedia contiene claves foráneas que referencian a ambas entidades originales.

### 2.2.6 Identificadores (Claves en E-R)

**Definición (uno o más atributos que identifican una ocurrencia de entidad de forma única)**

Un **Identificador** es uno o más atributos en una entidad que **identifica de forma única** una ocurrencia de entidad. El valor del identificador es único para cada instancia de entidad.

- El E-R Model debe indicar un atributo o conjunto de atributos que permita identificar de forma única a cualquier tipo de entidad.
- Un conjunto de atributos que puede servir como clave primaria se denomina **Clave Candidata**.

**Clave Primaria (Identifier). Notación (subrayado)**

- El identificador se conoce como **Clave Primaria (PK)** en el modelo relacional.
- Para que un atributo sea una clave primaria, debe tener un **valor no nulo** para cada instancia de la entidad (_Entity Integrity_).
- Si un único atributo no es suficiente para identificar la instancia, se utiliza una **Clave Compuesta** (_Composite key_), formada por más de un atributo.
- En la notación E-R, los atributos clave se representan generalmente con un **subrayado**.

--- 
## 2.3 Integridad de Datos en el Modelo Relacional

La **integridad de datos** es un componente esencial del **Modelo Relacional** que busca asegurar la exactitud, consistencia y fiabilidad de la información almacenada. Las bases de datos relacionales garantizan la integridad de los datos mediante la aplicación de reglas (o restricciones de integridad).

### 2.3.1 Dominios y Atributos

La integridad de los datos comienza a nivel del atributo mediante la restricción de los valores posibles a través de los dominios.

- **Dominios (restricción de posibles valores para un atributo):** Un **dominio** es el rango o conjunto de todos los posibles valores para un atributo determinado.
    - El dominio restringe los posibles valores que una tupla puede asignar a cada atributo.
    - Cada tupla asigna un valor a cada atributo tomado de su dominio.
    - Por ejemplo, un atributo de 'edad' podría estar restringido a valores enteros entre 0 y 150, o un campo de 'departamento' podría limitarse a una lista dada de cadenas de texto.

### 2.3.2 Claves Candidatas, Primarias y Foráneas (en detalle)

Las claves son mecanismos fundamentales que controlan qué datos pueden existir en una relación y cómo se interconectan las relaciones.

**Clave Candidata:**

- Una **Clave Candidata** es un conjunto de atributos en una relación que podría servir como clave primaria.
- Para ser una clave candidata, debe cumplir dos propiedades esenciales:
    - **Unicidad (**_**Uniqueness**_**):** Cada tupla debe tener un valor único para ese conjunto de atributos.
    - **Minimalidad (**_**Minimality**_**):** Ningún subconjunto propio de ese conjunto de atributos posee la propiedad de unicidad.
- Para seleccionar una clave candidata, se debe utilizar el conocimiento del mundo real y no solo los datos contenidos actualmente en la tabla, asegurando que la clave seguirá siendo única en el futuro. Las claves candidatas que no se eligen como Clave Primaria se conocen como **claves alternativas** (_alternate keys_).

**Clave Primaria (PK):**

- La **Clave Primaria** es una clave candidata que se elige para **identificar de forma única** las tuplas (filas) dentro de una relación.
- El valor de la PK debe ser único para cada instancia de la entidad.
- **Integridad de Entidad:** La PK es el identificador único de cada registro. Por lo tanto, el valor de la Clave Primaria **no puede contener valores NULL**. Si la PK contuviera valores NULL (valor desconocido o faltante), no podría identificar la tupla de forma única.
- **Claves Compuestas:** En ocasiones, un único atributo no es suficiente para identificar de forma única una entidad, por lo que se utiliza una combinación de dos o más atributos; esta combinación se conoce como **Clave Compuesta**.
- **Claves Artificiales:** Son claves que no tienen ningún significado para el negocio u organización. Se permiten cuando ningún atributo existente posee todas las propiedades de la clave primaria o cuando la clave primaria natural es demasiado grande y compleja.

**Clave Foránea (FK):**

- Las **Claves Foráneas** son conjuntos de atributos en una relación (la relación referenciadora o "hija") utilizados para **enlazar dos relaciones**.
- Una FK referencia la Clave Primaria (o una Clave Candidata) de otra relación (la relación referenciada o "padre"), estableciendo una relación entre ambas.
- **Integridad Referencial:** Este concepto de integridad asegura que la referencia de la FK sea válida. El valor de una Clave Foránea debe cumplir con una de dos condiciones:
    1. Debe **coincidir** con un valor de la Clave Primaria en la tabla referenciada.
    2. Debe ser **completamente NULL**. La integridad referencial evita la existencia de registros "huérfanos" (por ejemplo, una orden que haga referencia a un cliente inexistente). Si la FK es NULL, significa que la tupla no se refiere a ninguna entidad en particular.
- **Migración de Claves:** Para establecer una relación, la clave foránea se forma al **migrar la clave primaria completa** de la entidad padre a la entidad hija.
- **Dependencia de Identificador:**
    - Si la clave primaria de la entidad hija incluye **todos los atributos** de la clave foránea, se dice que la entidad hija es **dependiente de identificador** (_identifier dependent_) de la entidad padre, y la relación se denomina **relación identificadora**.
    - Si la clave foránea contiene atributos que **no pertenecen** a la clave primaria de la entidad hija, la relación se considera **no identificadora**.

### 2.3.3 Acciones ante Violación de la Integridad Referencial

La **Integridad Referencial** puede ser violada cuando se actualizan o eliminan tuplas en la relación padre que están siendo referenciadas por la relación hija. Los sistemas gestores de bases de datos (DBMS) ofrecen varias opciones para manejar estas situaciones:

- **RESTRICT (Restringir/Restricción):**
    - Esta opción **detiene la acción** (actualización o eliminación) que viola la integridad referencial.
    - Si se intenta borrar una tupla que está siendo referenciada por otra tabla a través de una FK, la operación de borrado es denegada.
- **CASCADE (Cascada):**
    - Esta opción **permite que los cambios fluyan** a través de la relación.
    - Si se actualiza o elimina una tupla referenciada en la tabla padre, la misma acción se aplica automáticamente a todas las tuplas referenciadoras en la tabla hija. Por ejemplo, si se elimina un registro de Departamento, todos los registros de Empleados que referencian ese Departamento también se eliminan.
- **NULLIFY (Anular/Poner a NULL):**
    - Esta opción **establece los valores de la Clave Foránea a NULL** en las tuplas de la relación referenciadora.
    - Si una tupla referenciada es eliminada o actualizada, los valores problemáticos de la FK en la tabla hija se establecen en NULL. (Esta opción solo es posible si el atributo de la FK no tiene una restricción `NOT NULL`).

---
## 2.4 Álgebra Relacional (Manipulación de Datos)

### 2.4.1 Introducción al Álgebra Relacional

- **Definición (sistema matemático cuyos operandos son relaciones):** El Álgebra Relacional es un **sistema matemático**. Sus operandos son relaciones o variables que representan relaciones.
- **Lenguaje procedural para operaciones de bases de datos:** Es un lenguaje de consulta **procedural** que define las operaciones de la base de datos en términos de expresiones algebraicas. Los operadores están diseñados para realizar las tareas más comunes que se necesitan en una base de datos.
- **Resultados de las operaciones son siempre relaciones:** El resultado de cualquier operación algebraica relacional es siempre una **nueva relación**. Esto permite que las operaciones se puedan **encadenar**.

### 2.4.2 Terminología Relacional

- **Relaciones (conjunto de tuplas):** La información en el modelo relacional se almacena como **tuplas** (filas/registros) en **relaciones** (tablas). Una relación matemática se define como un **conjunto de tuplas**, donde cada tupla es una secuencia de valores que corresponde a una fila en una tabla.
- **Grado (número de columnas):** El grado de una relación es la longitud de las tuplas, o el **número de columnas** que tiene la tabla. Las relaciones de grado 2 se denominan binarias, y las de grado 3, ternarias.
- **Cardinalidad (número de tuplas/filas):** Es el **número de tuplas diferentes** que existen en la relación.

### 2.4.3 Operadores del Álgebra de Conjuntos (Set-Theoretic)

Estos son operadores de conjuntos comunes que se aplican a las relaciones. Son **operaciones parciales**.

- **Requisito de Compatibilidad de Unión:** Dos relaciones ($R$ y $S$) deben ser **compatibles con la unión** (_union-compatible_). Esto requiere que tengan el **mismo número de columnas** y que las columnas correspondientes tengan los **mismos dominios**.
- **Unión ($\cup$):** Combina las tuplas de ambas relaciones. El resultado contiene las tuplas que están en $R$ **o** en $S$. $$\mathbf{R \cup S = { x : x \in R \text{ or } x \in S }}$$
- **Intersección ($\cap$):** Resulta en las tuplas que están **en ambas** relaciones $R$ y $S$. $$\mathbf{R \cap S = { x : x \in R \text{ and } x \in S }}$$
- **Diferencia ($-$ o $\setminus$):** El resultado contiene las tuplas que están en $R$ **pero no en** $S$. $$\mathbf{R - S = { x : x \in R \text{ and } x \notin S }}$$

### 2.4.4 Operadores Unarios

- **Selección ($\sigma$):** Se utiliza para **filtrar filas** que satisfacen una **condición** $C$. La condición $C$ es una propiedad booleana que se aplica a los atributos. $$\mathbf{R_1 := \sigma_C (R_2)}$$
    - El resultado tiene el mismo esquema que el operando.
- **Proyección ($\pi$):** Se utiliza para **seleccionar un subconjunto de columnas** (atributos). $L$ es una lista de atributos a incluir. $$\mathbf{R_1 := \pi_L (R_2)}$$
    - En el álgebra basada en conjuntos, se **eliminan las tuplas duplicadas** en el resultado.
    - **Proyección Extendida:** Permite que la lista $L$ contenga expresiones arbitrarias, como operaciones **aritméticas** ($A+B \rightarrow C$) o la repetición de atributos.
- **Renombrar ($\rho$):** Se denota $\rho$ y es un operador unario. Asigna un nuevo esquema o **cambia el nombre** de los atributos de una relación. Es esencial para realizar uniones entre tablas que tienen atributos con el mismo significado pero nombres diferentes, o para realizar **auto-uniones** (_self-joins_). $$\mathbf{R_1 := \rho_{R_1(A_1, \dots, A_n)}(R_2)}$$

### 2.4.5 Operadores de Unión (Joins y Productos)

- **Producto Cartesiano ($\times$):** Es una operación total. Combina **cada tupla** de la relación $R_1$ con **cada tupla** de $R_2$. $$\mathbf{R_3 := R_1 \times R_2}$$
    - El esquema resultante es la concatenación de los atributos de $R_1$ y $R_2$. Si hay nombres de atributos en común, se distinguen usando el prefijo de la relación (ej. $R_1.A$, $R_2.A$).
- **Theta-Join ($\bowtie_C$):** Es un operador derivado. Se calcula como el **Producto Cartesiano** $R_1 \times R_2$ seguido de una operación de **Selección** $\sigma_C$. $$\mathbf{R_3 := R_1 \bowtie_C R_2 = \sigma_C (R_1 \times R_2)}$$
    - El término _Equi-join_ se usa cuando la condición $C$ es una conjunción de igualdades.
- **Unión Natural ($\bowtie$):** Conecta dos relaciones encontrando tuplas que tienen **valores iguales en los atributos con el mismo nombre**. $$\mathbf{R_3 := R_1 \bowtie R_2}$$
    - El resultado proyecta (elimina) las columnas duplicadas que se usaron para la condición de igualdad.

- **Unión Externa (Outer Join):** Una variante del _join_ que mantiene todas las tuplas de los operandos, incluso si no tienen una tupla de contraparte en la otra relación. Las tuplas sin coincidencia se **rellenan con valores nulos** (NULLs) en los atributos correspondientes.
    - **Variantes:**
        - **LEFT Outer Join ($\bowtie_{LEFT}$):** Mantiene todas las tuplas del operando izquierdo.
        - **RIGHT Outer Join ($\bowtie_{RIGHT}$):** Mantiene todas las tuplas del operando derecho.
        - **FULL Outer Join ($\bowtie_{FULL}$):** Mantiene todas las tuplas de ambos operandos.

### 2.4.6 Otros Operadores y Expresiones

- **División ($/$):** Permite especificar consultas que buscan tuplas de una relación $A(x, y)$ que están asociadas con **todos** los elementos de otra relación $B(y)$.
    - Se puede expresar en términos de los operadores principales (proyección, diferencia y producto cartesiano): $$\mathbf{A/B = \pi_x(A) - \pi_x((\pi_x(A) \times B) - A)}$$
- **Construcción de Expresiones Complejas:** Las operaciones pueden encadenarse ya que el resultado es siempre una relación.
    - **Secuencias de Asignaciones:** Se utilizan nombres de relaciones temporales para representar los resultados intermedios.
    - **Precedencia:** Las expresiones pueden combinarse. La precedencia de los operadores relacionales (de mayor a menor) es:
        1. Selección ($\sigma$), Proyección ($\pi$), Renombrar ($\rho$).
        2. Producto Cartesiano ($\times$), Join ($\bowtie$).
        3. Intersección ($\cap$).
        4. Unión ($\cup$), Diferencia ($-$ o $\setminus$).
    - **Árboles de Expresión:** Las expresiones complejas pueden representarse visualmente como árboles, donde las hojas son los operandos (relaciones) y los nodos internos son los operadores.
    
## 2.4.7 Álgebra Relacional en Bolsas (Bags/Multisets)

Una **Bolsa** (_Bag_ o _Multiset_) es similar a un conjunto (_set_), pero un elemento puede aparecer **más de una vez**. El Álgebra Relacional puede definirse sobre relaciones entendidas como conjuntos (eliminando duplicados) o como bolsas (permitiendo duplicados).

- **Relevancia (SQL es un lenguaje de bolsas):**
    
    - La razón principal para estudiar el álgebra de bolsas es que **SQL**, el lenguaje de consulta más importante para las bases de datos relacionales, **es en realidad un lenguaje de bolsas**.
    - Algunas operaciones son más eficientes en bolsas que en conjuntos.
    
- **Operaciones en Bolsas (la Proyección no elimina duplicados):**
    
    - **Selección ($\sigma$):** Se aplica a cada tupla individual, por lo que su efecto sobre las bolsas es el mismo que sobre los conjuntos.
    - **Proyección ($\pi$):** Se aplica a cada tupla, pero como operador de bolsa, **no se eliminan los duplicados**.
        - _Ejemplo:_ Si una relación $R$ contiene las tuplas $(1, 2)$, $(5, 6)$, y $(1, 2)$, la proyección $\pi_A (R)$ resulta en la bolsa ${1, 5, 1}$.
    - **Producto ($\times$) y Joins ($\bowtie$):** Se realizan en cada par de tuplas. Los duplicados en las bolsas no tienen efecto en cómo operan el producto o el join.
    - **Unión ($\cup$):** Un elemento aparece en la unión de dos bolsas la **suma del número de veces** que aparece en cada bolsa.
        - _Ejemplo:_ ${1, 2, 1} \cup {1, 1, 2, 3, 1} = {1, 1, 1, 1, 1, 2, 2, 3}$.
    - **Intersección ($\cap$):** Un elemento aparece en la intersección de dos bolsas el **mínimo del número de veces** que aparece en cualquiera de ellas.
        - _Ejemplo:_ ${1, 2, 1, 1} \cap {1, 2, 1, 3} = {1, 1, 2}$.
    - **Diferencia ($-$ o $\setminus$):** Un elemento aparece en la diferencia $A - B$ tantas veces como aparece en $A$, menos el número de veces que aparece en $B$, pero **nunca menos de cero veces**.
        - _Ejemplo:_ ${1, 2, 1, 1} - {1, 2, 3} = {1, 1}$.
        
- **Leyes del Álgebra (diferencias con la teoría de conjuntos, ej. la unión no es idempotente):**
    
    - No todas las leyes algebraicas que se cumplen para conjuntos se cumplen también para bolsas.
    - **Ley Conmutativa de la Unión:** La ley conmutativa ($R \cup S = S \cup R$) **sí se mantiene** para bolsas, ya que sumar el número de veces que aparece un elemento no depende del orden.
    - **Fallo de la Idempotencia:** La ley de conjuntos que establece que la unión es **idempotente** ($S \cup S = S$) **falla para bolsas**.
        - Si un elemento $x$ aparece $n$ veces en la bolsa $S$, aparecerá $2n$ veces en $S \cup S$.
        - Por lo tanto, en general, $S \cup S \neq S$. Por ejemplo, ${1} \cup {1} = {1, 1} \neq {1}$.

---

**En analogía:** Si el Álgebra Relacional basada en conjuntos es como un filtro que solo permite piezas únicas de LEGO (eliminando duplicados), el Álgebra Relacional basada en bolsas es como una caja que registra y conserva cada pieza, incluso si tiene múltiples copias idénticas, lo cual es vital porque el lenguaje SQL, utilizado para operar bases de datos reales, funciona de esta manera.

---

## 2.5 How to Convert ER Diagram to Relational Database

#### 2.5.1. **Entidades y Atributos**

##### Entidades → Tablas

Cada **entidad** del modelo E-R se convierte en una **tabla** independiente en el modelo relacional.

##### Clave Primaria (PK)

Cada tabla debe tener una **PK única, mínima y no nula**.  
Puede ser un atributo propio de la entidad (ID, DNI, código…) o un conjunto de atributos.

---

#### 2.5.2. **Relaciones Binarias**

Las relaciones entre dos entidades dependen de su cardinalidad.

---
##### **Relación 1:1 (Uno a Uno)**

- Se puede colocar la **FK** en **cualquiera** de las dos tablas.
- Lo habitual es colocarla en la entidad **más débil**, o en la que depende de la otra para existir.
- La FK debe tener restricción **UNIQUE** para conservar la unicidad del 1:1

**Estructura típica:**

**A(ID, atributos)**
**B(ID, A_ID UNIQUE)** → A_ID referencia a A

---

##### **Relación 1:N (Uno a Muchos)**

- La **FK va siempre** en la tabla del lado **N**.
- La FK apunta a la PK de la entidad del lado 1.

**Estructura típica:**

**A(ID, atributos)**
**B(ID, A_ID)** → A_ID referencia a A

---

##### **Relación N:M (Muchos a Muchos)**

- Se crea una **tabla nueva** para representar la relación.
- Esta tabla contiene las PK de las entidades como **FKs**, y la **PK de la relación es la combinación de ambas**.

**Estructura típica:**

**A(ID)**
**B(ID)**
**AB(A_ID, B_ID)** → ambas son FK, juntas forman la PK

---

#### 2.5.3.**Relaciones Recursivas**

Ocurren cuando una entidad se relaciona consigo misma (ej.: empleado supervisa empleado).

Se resuelve añadiendo una **FK que referencia a la misma tabla**.

**Estructura típica:**

**A(ID, A_ID_SUPERVISOR)** → A_ID_SUPERVISOR referencia a A

---

#### 2.5.4.**Relaciones Ternarias (Tres Entidades)**

Las relaciones entre **A, B y C** se tratan según su cardinalidad conjunta.

---

#### **Relación 1:1:1**

- Se crea una **tabla nueva** para representar la relación.
- La **PK es la combinación** de las PK de las tres entidades.
- Las tres columnas son **FKs** hacia A, B y C.

**Estructura:**

**ABC(A_ID, B_ID, C_ID)**

---

#### **Relación 1:1:N (o cualquier permutación con un solo N)**

- La entidad del lado **N** recibe la FK de las entidades del lado 1.
- La tabla del lado N conserva su propio ID como PK.

**Estructura típica:**

**A(ID)**
**B(ID)**
**C(ID, A_ID, B_ID)**

---

#### **Relación 1:N:M, N:M:1, N:M:N, etc.**

- Si **dos o más** entidades están del lado N/M, la relación se maneja igual que una relación N:M binaria, pero ampliada a tres entidades.
- Se crea una **tabla nueva** con las PK de A, B y C.
- La **PK compuesta** incluye todas las entidades del lado “Muchos”.

**Estructura general:**

**ABC(A_ID, B_ID, C_ID)**

---

#### 2.5.5. **Relaciones de Orden Superior (Cuaternarias, Quinarias, etc.)**

Aquí es donde se incorporan las mejoras más importantes respecto al texto original.

#### Regla fundamental (única y universal)

> **Toda relación que involucre simultáneamente a 4 o más entidades se modela exactamente igual que una ternaria: con una sola tabla nueva que contiene una FK por cada entidad participante.**

No existen reglas adicionales ni excepciones estructurales.

--- 
Si la relación es realmente **cuaternaria, quinaria, senaria…** (A–B–C–D, A–B–C–D–E, etc.), entonces:

- Se crea **una única tabla n-aria**.
- La tabla incluye **n claves foráneas**, una por cada entidad.
- La combinación de estas claves suele ser la **PK completa**, salvo que se utilicen claves sustitutas.

---

#### ¿Qué sucede a partir del tercer nivel?
 
A nivel del modelo relacional, **la regla no cambia nunca**.

Pero sí hay matices prácticos:

##### **Validar si la relación es realmente n-aria**

Muchos casos que parecen “4-arias” son realmente **combinaciones de relaciones binarias** independientes.

Solo se crea una tabla n-aria si todas las entidades participan en **el mismo hecho**.

##### **Pueden aparecer dependencias funcionales entre entidades**

Esto puede causar que:

- algunas FKs puedan ser únicas,
- otras no necesarias como parte de la PK,
- o que la relación n-aria se pueda descomponer.

Pero **la regla estructural sigue siendo idéntica**.

##### **La complejidad aumenta, pero no cambian las normas**

Aunque el diseño se vuelve más difícil, **las reglas de conversión permanecen inalteradas**.

---

#### 2.5.7. Estructura general de una relación n-aria

Para una relación entre entidades:

**E1, E2, E3, …, En**

La tabla de relación es:

**E1E2…En(E1_ID, E2_ID, E3_ID, …, En_ID)**  
Todos son FKs.  
La PK se compone de los IDs correspondientes a los lados N/M, o de todos si todos son N/M.

---

#### 2.5.8. **Herencia (Generalización / Especialización)**

- La entidad **Padre** mantiene su propia tabla con su PK.
- Cada entidad **Hija** tiene su tabla propia con atributos específicos.
- La PK de la **hija** es también FK que referencia a la tabla **padre**  
    (PK/FK al mismo tiempo).

**Estructura típica:**

**A(ID, atributos)**
**B(ID_A, atributos específicos)** → ID_A referencia a A
**C(ID_A, atributos específicos)** → ID_A referencia a A

---
#### Conclusión

- Las reglas de conversión **no cambian a partir del tercer nivel**.
- Toda relación de 3, 4, 5… entidades se maneja igual: **una tabla nueva**, con **una FK por entidad**.
- Lo único que crece es la **complejidad lógica**, no la regla estructural.

---

## 2.6. Qué es la normalización

La normalización es una técnica de diseño de bases de datos relacionales que organiza los datos para:

- **Eliminar redundancia** (datos repetidos o inútiles).
- **Evitar anomalías** de inserción, actualización y borrado.
- Asegurar que las **dependencias entre datos tengan sentido** (que cada dato esté guardado en la tabla “correcta”).
- **Facilitar el mantenimiento y la consistencia** de la base de datos.

La idea central es ir descomponiendo una tabla “grande y problemática” en varias tablas más pequeñas, relacionadas entre sí, pero sin redundancias ilógicas.

---

### 2.6.1. Anomalías sin normalización

Si no normalizamos, aparecen:

- **Anomalía de actualización:** un mismo dato (por ejemplo, la dirección de un alumno que aparece en varias filas) hay que cambiarlo en muchas filas; si alguna se olvida, los datos quedan inconsistentes.

- **Anomalía de inserción:** no podemos insertar ciertos datos si otros faltan (por ejemplo, un alumno sin asignatura obligaría a insertar NULL en Subject_opted).

- **Anomalía de borrado:** al borrar un dato, podemos perder información relacionada que aún nos interesa (por ejemplo, borrar la única asignatura de un alumno borra también todos sus datos).

---

Ejemplo mínimo: una tabla STUDENT(S_id, S_Name, S_Address, Subject_opted) donde un mismo alumno aparece repetido con distintas asignaturas provoca las tres anomalías descritas.

STUDENT:

| S_id | S_name                 | S_Adress             | Subject_opted                   |
| ---- | ---------------------- | -------------------- | ------------------------------- |
| 783  | Fernando Soriano Gomez | crta/ De la Cruz 584 | Filosofía, Biología, Tecnología |

---

### 2.6.2. Dependencias funcionales

Una dependencia funcional **describe qué atributos determinan a otros.**

Se escribe:  **A → B** y significa: para **cada valor de A hay un único valor de B.**

Ejemplo: student_id → student_name 
Cada id de alumno determina exactamente un nombre.

**Tipos:**

- **Dependencia completa:** B depende de **toda la clave.**
    Ejemplo: ENROLLMENT(StudentID, CourseID, Grade). La clave es (StudentID, CourseID) y Grade depende de ambos.

- **Dependencia parcial:** B depende **solo de una parte** de una clave compuesta.  
    Ejemplo: StudentName depende solo de StudentID. Lla clave es (StudentID, CourseID), entonces StudentName está parcialmente dependiente de la clave.

- **Dependencia** **transitiva:** A → C → B, es decir, **B depende de A a través de C.**  
    Ejemplo general: Student_id → Zip y Zip → City; entonces City depende transitivamente de Student_id.


Estas dependencias son las que **guían las descomposiciones** en las formas normales.

---

## 2.6.3. Primera Forma Normal (1NF)

Condición principal:

1. Todos los **atributos** deben **contener valores atómicos** (indivisibles). Una celda no puede tener listas, ni valores separados por comas, ni arrays.
2. **No** puede haber **grupos repetitivos de columnas.**
3. Cada **fila debe poder identificarse de forma única** mediante una clave primaria (simple o compuesta).

Ejemplo único:  
Tabla no 1NF:

| Student | Age | Subject        |
| ------- | --- | -------------- |
| Adam    | 15  | Biology, Maths |

No cumple 1NF porque **Subject tiene dos valores.**

**Tabla en 1NF:**

| Student | Age | Subject |
| ------- | --- | ------- |
| Adam    | 15  | Biology |
| Adam    | 15  | Maths   |


Ahora cada celda es atómica y se ha aplicado la regla de “dividir en n filas”.

**Nota importante:** al pasar a **1NF** suele **aumentar la redundancia** (Adam y 15 se repiten), **pero cada fila es única** y manipulable sin listas internas.

---

## 2.6.4. Segunda Forma Normal (2NF)

Condiciones:

1. La tabla **debe estar en 1NF.**
2. Todos **los atributos** que no forman parte de la clave **deben depender de toda la clave primaria**, no solo de una parte, es decir, **no debe haber dependencias parciales**.
3. Esta forma solo tiene sentido cuando la clave primaria es compuesta (más de un atributo).

La idea es: **si la clave es (A, B)**, **ningún atributo** no clave **puede depender solo de A o solo de B**. Si ocurre, **se separan tablas.**

Ejemplo único (del PDF de 2NF):

Tabla ENROLLMENT(StudentID, CourseID, StudentName, CourseName)

- **Clave candidata:** (StudentID, CourseID).
- **StudentName** depende **solo de StudentID** (dependencia parcial).
- **CourseName** depende **solo de CourseID** (dependencia parcial).

Para estar en 2NF, se descompone en:

- **STUDENT**(StudentID, StudentName)
- **COURSE**(CourseID, CourseName)
- **ENROLLMENT**(StudentID, CourseID)

Tras esto, todos los atributos no clave dependen completamente de su clave.

---

## 2.6.5. Tercera Forma Normal (3NF)

Definición (combinando tus apuntes y los documentos):

1. La tabla **debe estar en 2NF.**
2. **No** deben existir **dependencias funcionales transitivas:** ningún atributo no clave puede depender de otro atributo no clave.  
3. Hay que afirmar que todos los atributos dependen directamente de su primary key, no transitivamente.”

Al eliminar dependencias transitivas:

- Se **reduce** la **duplicación de datos**.
- Se **mejora** la **integridad.**

Ejemplo único (Student_Detail):

Student_Detail(Student_id, Student_name, DOB, Street, City, State, Zip)

- Clave primaria: **Student_id**.
- Pero **Street, City y State** **no dependen** directamente de Student_id, sino de Zip.
- Hay **dependencia transitiva**: Student_id → Zip → (Street, City, State).

Para cumplir 3NF:

- **Student_Detail**(*Student_id*, Student_name, DOB, Zip)
- **Address**(*Zip*, Street, City, State)

Ahora todos los atributos de cada tabla dependen directamente de su clave primaria.

---

### 2.6.5. Forma normal de Boyce y Codd (BCNF)


Definición:

1. La relación **debe estar en 3NF.**
2. Para toda dependencia funcional X → Y de la relación, **X debe ser una superclave** (es decir, un conjunto de atributos que identifica de manera única las filas).

Un 3NF que no tenga múltiples claves candidatas solapadas suele ser también BCNF, pero cuando hay claves candidatas que se solapan puede haber anomalías que 3NF no elimina y BCNF sí.

Ejemplo único simplificado (del PDF):

Relación R(A, B, C, D) con dependencias:

- A → B C D
    
- B C → A D
    
- D → B
    

Hay varias claves candidatas (A y B C) y una dependencia D → B en la que D no es superclave, lo que viola BCNF. La solución es descomponer R en dos relaciones que cumplan que cada determinante es superclave.

---

## 8. Ejemplo integrado con tu tabla de pedidos (1NF → 3NF)

Ahora combino específicamente tus apuntes de ORDER con la teoría de formas normales y dependencias funcionales.

Tabla inicial (desnormalizada):

order, date, cust_id, cust_name, product, unit_price, quantity, total

Dependencias que se pueden justificar:

- Order → Date
- Order → CustID
- CustID → CustName
- Product → Unit_price
- (Order, Product) → Quantity
- Order → Total

Normalización paso a paso:

1. 1NF  
    Si en un mismo registro de Order hubiera varios productos en una sola celda, habría que dividir en varias filas hasta que cada fila tenga un solo producto. Esto aplica tu regla de “dividir en n filas”.
    
2. 2NF  
    Consideramos que la clave para las líneas de pedido es (Order, Product).
    
    - Quantity depende de Order y Product a la vez.
    - Pero unit_price depende solo de Product.
    - cust_name depende de cust_id, no de la clave (Order, Product).  
        Esto muestra dependencias parciales y datos que no dependen de toda la clave compuesta.
    
    Se reorganiza en tres tablas:
    - ORDER(ID, Date, CustID, Total)
    - PRODUCT(Name, Price)
    - ORDER_PRODUCT(IDorder, ProductName, Quantity)
    Aquí, en ORDER_PRODUCT la clave es (IDorder, ProductName) y Quantity depende completamente de ella.
    
3. 3NF  
    Todavía tenemos la dependencia transitiva CustID → CustName. Para eliminarla, se separa:
    - CUSTOMER(CustID, Name)
    - ORDER(ID, Date, CustID, Total)
    De esa forma, en cada tabla todos los atributos dependen directamente de su clave primaria, sin dependencias transitivas. Esto encaja exactamente con lo que escribiste:
    
    - CUSTOMER(**custID**, name)
    - ORDER(**ID**, date, custID, total)
    - PRODUCT(**Name**, price)
    - ORDER_PRODUCT(**IDorder**, **ProductName**, quantity)

Es importante:

- Especificar las dependencias funcionales detectadas.
- Indicar qué forma normal se viola (1NF, 2NF o 3NF) y por qué (valor no atómico, dependencia parcial, dependencia transitiva…).
- Mostrar la descomposición en nuevas tablas indicando sus claves primarias y, si procede, foráneas.

---

#### Conclusión sobre Normalización

- 1NF
    - Condición: valores atómicos, sin grupos repetitivos.
    - Elimina: listas y arrays en una misma celda, grupos de columnas repetidos.
    - Problema que evita: dificultad para buscar y actualizar datos que están “empaquetados”.
- 2NF
    - Condición: estar en 1NF y no tener dependencias parciales respecto a claves compuestas.    
    - Elimina: redundancia causada por atributos que dependen solo de una parte de la clave.
    - Problema que evita: tener datos “de la entidad A” guardados en una tabla cuya clave también incluye “la entidad B”.
- 3NF
    - Condición: estar en 2NF y no tener dependencias transitivas entre atributos no clave.    
    - Elimina: dependencias indirectas entre atributos no clave (A → B → C).
    - Problema que evita: que un atributo dependa de otro que no es clave, provocando duplicación y anomalías.
- BCNF
    - Condición: estar en 3NF y que para toda dependencia X → Y, X sea superclave.
    - Elimina: ciertos casos avanzados de anomalías cuando hay varias claves candidatas que se solapan.

---
### Exercises

1 - ER Project: 
COUNTRY(**Code**, Name)

HOTEL(**ID_Hotel**, name}

ROOM(**ID_Room**, Register_Date, Game_Date, Game_Time, **Associate_Num.Participant, ID_Hotel.Hotel**)
	where {**Associate_Num.Participant**} ref PERSON
	and {**ID_Hotel**} ref HOTEL

PARTICIPANT(**Associate_Num**, Full_Name, Telephone_Num, **ID_Room.Room**)
	where {**ID_Room.Room**} ref ROOM

REFEREE(**Associate_Num**) where {**Associate_Num**} ref PERSON
PLAYER(**Associate_Num**, Type_Of_Piece, **Code.Country**) 
	where {**Associate_Num**} ref PERSON
	and {**Code.Country**} ref COUNTRY

GAME(**ID_Game**, Rounds, Result, **Associate_Num.Player, Associate_Num.Refree, ID_Room.Room**)
	where {**Associate_Num.Player**} ref PLAYER
	and {**Associate_Num.Refree**} ref REFREE
	and {**ID_Room.Room**} ref ROOM

MOVEMENT_SEQUENCE (Play_Description, **Round.Game**)
	where {**Round.Game**} ref GAME


2 - ERDVol1 to RM

1.
COMMUNITY ( **Code**, Name)
PROVINCE (**Code**, Name, **Code**.COMMUNITY)
TOWN (**Code**, Name, **Code**.PROVINCE)
HOUSE (**ID_House**, Adres, **Code**.Town)
HABITANT (**ID**, Name, **ID_House**.HOUSE, **ID**.HABITANT)
OWNER(**ID**.HABITANT, **ID_House**.HOUSE)

2.
DEPARTMENT(**ID_Department**, Name)
EMPLOYEE(ID, **Name**, **ID_Department**.DEPARTMENT,)
PROJECT(**ID_Project**, Name **ID**.EMPLOYEE)
EMPLOYEE_PROJECT_PARTICIPATION(**ID**.DEPARTMENT, **ID_Project**.PROJECT)

3.
CUSTOMER(**ID_Customer**, Name)
PROJECT (**ID_Project**, **ID_Customer**.CUSTOMER)
PHASE(**ID_Phase**, Name, **ID_Project**.PROJECT)
DEPARTMENTS(**ID_Department**, Name)
EMPLOYEE(**ID_Employee**, Name, **ID_Department**.DEPARTMENT)
CURRENT_PHASE(**ID_Phase**.PHASE, **ID_Employee**.EMPLOYEE)
CERTIFICATE(**ID_Certificate**, Type)
EMPLOYEE_CERTIFICATE(**ID_Employee**.EMPLOYEE, **ID_Certificate**.CERTIFICATE)

4.
COUNTRY(**ID_Country**, Name)  
INSTRUMENT(**ID_Instrument**, Name)  
ORCHESTRA(**ID_Orchestra**, Name)  
MUSICIAN(**ID_Musician**, Name, **ID_Country**.COUNTRY, **ID_Instrument**.INSTRUMENT, **ID_Orchestra**.ORCHESTRA)  
CONDUCTOR(**ID_Conductor**, Name, **ID_Orchestra**.ORCHESTRA)  
ORCHESTRA_CONDUCTOR_GUEST(**ID_Orchestra**.ORCHESTRA, **ID_Conductor**.CONDUCTOR)  
SOLOIST(**ID_Soloist**, Name)  
CONCERT(**ID_Concert**, Date, Location, **ID_Orchestra**.ORCHESTRA)  
CONCERT_SOLOIST(**ID_Concert**.CONCERT, **ID_Soloist**.SOLOIST)  
COMPOSER(**ID_Composer**, Name)  
COMPOSITION(**ID_Composition**, Title,  **ID_Composer**.COMPOSER)  
CONCERT_COMPOSITION(**ID_Concert**.CONCERT, **ID_Composition**.COMPOSITION)  

5
**CUSTOMER** (NIF, name, surname, address, telephone)
**BRANCH** (branch_number, address, telephone, director_NIF.DIRECTOR)
**DIRECTOR** (NIF, name, surname, address, salary, branch_number.BRANCH)
**EMPLOYEE** (NIF, name, surname, address, salary, branch_number.BRANCH)
**ACCOUNT** (account_number, creation_date, NIF.CUSTOMER, branch_number.BRANCH)
**MOVEMENT_TYPE** (type_id, description)
**MOVEMENT** (movement_id, amount, date, type_id.MOVEMENT_TYPE, ccount_number.ACCOUNT)

6
**OWNER** (NIF, name, surname, address, telephone)
**BRANCH** (branch_id, address, telephone)
**PLOT** (cadastral_number, location, min_price, owner_NIF.OWNER, branch_id.BRANCH)
**CUSTOMER** (NIF, name, surname, birth_date, address, telephone)
**SELLER** (NIF, name, surname, telephone, seller_type)  
**PERMANENT_SELLER** (seller_NIF.SELLER, branch_id.BRANCH, fixed_salary, commission)
**SPORADIC_SELLER_BRANCH** (seller_NIF.SELLER, branch_id.BRANCH)
**SALE** (sale_id, amount, date, cadastral_number.PLOT, customer_NIF.CUSTOMER, seller_NIF.SELLER)

Errores: PERMANENT_SELLER se puede eliminar esta relación y sale_id no hace falta, es una relación M to N, las foreing key crean la primary

7
**KINGDOM** (kingdom_id, name)
**KING** (king_id, name, reign_start, reign_end, kingdom_id.KINGDOM)
**PROVINCE** (province_id, name, kingdom_id.KINGDOM
**KNIGHT** (knight_id, name, birth_date, father_id.KNIGHT, birth_province_id.PROVINCE)
**KNIGHT_GOVERN_PROVINCE** (knight_id.KNIGHT, province_id.PROVINCE, start_date, end_date)
**CRUSADE** (crusade_id, name, begin_date, end_date, target_kingdom.KINGDOM, result)
**KING_CRUSADE** (king_id.KING.king_id, crusade_id,CRUSADE)
**KNIGHT_CRUSADE** (knight_id.KNIGHT, crusade_id.CRUSADE)

8
**CUSTOMER** (customer_code, telephone, address, company_name)
**PROJECT** (project_code, description, total_cost, start_date, end_date, customer_code.CUSTOMER)
**COLLABORATOR** (id, name, address, telephone, bank, account_number)
**PROJECT_COLLABORATOR** (project_code.PROJECT), collaborator_id.COLLABORATOR),
**PAYMENT_TYPE** (type_code, description)
**PAYMENT** (payment_number, concept, amount, payment_date, collaborator_id.COLLABORATOR, type_code.PAYMENT_TYPE)

---

**Fecha de modificación:** 06/11/2025
**Estado:** <font color="#00ff00">Actualizado</font>
#DAM 

---