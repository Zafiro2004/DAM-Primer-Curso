### ¿Qué es un programa informático?
Conjunto de instrucciones ejecutadas de forma secuencial con el objetivo de realizar ciertas tareas.

---
### Lenguajes de programación
Instrucciones, operadores y reglas de sintaxis y semánticas.
Existen diferentes niveles:
- Lenguaje de alto nivel - Más cercanos al habla humana
- Lenguaje de nivel medio - Lenguaje de ensamblador. 
- Lenguajes de bajo nivel - Código máquina, 0 y 1

---
##### // Máquina de Vol Newman

---

### Formas de ejecución
Compilados - Se convierte el código fuente entero a código objeto
Interpretados - Se convierte el código fuente línea a línea a código objeto
Virtuales - Similar a compilador  pero no genera código objeto sino código bytecode

//bytecode
//código objeto

---
### Filosofías de programación
Imperativo - Instrucciones que le indican al programa cómo realizar la tarea
Declarativo - No necesariamente se indica cómo hacerlo, se le da premisas y condiciones.
Procedimental - El programa se divide en partes más pequeñas (funciones). Pueden comunicarse entre sí y se utilizan para solventa el problema de la programación spaghetti (código que es difícil de entender)
Orientado a objetos - Encapsula el estado y las operaciones de los objetos.
Funcional - 
Lógico - 

---
### Obtención de código ejecutable

//IDE

Código fuente - Conjuto de instrucciones escritas en un lenguaje de programación.
Código objeto - Código resultante de compilar código fuente. Bytecode - Es un código intermedio que se convertirá en código fuente
Código ejecutable -

---
### Fases de compilación
Código fuente 
Análisis lexicográfico - Corrige el código máquina para proceder
Análisis sintáctico semántico - Analiza el orden para que sea lógico
Generador de código intermedio 
Código intermedio
Optimizador de código - Perfecciona el código
Código optimizado
Generador de código
Código objeto // Librerias
Enlazador - Enlaza las diferentes clases que son capaces de realizar cierta orden y las combina con las instrucciones
Código ejecutable

---
### Procesos de desarrollo
#### Análisis - 
"Dime la bolsa de nueva york de mañana. Analista: Es imposible" - Identifica una necesidad/problema y conoce los pasos para resolverlo. Parece que hace la función de intermediario entre la petición del cliente y las posibilidades. Tiene que tener la capacidad para darle una respuesta lo más acertada posible e indiferentemente el programa que se va a utilizar.

#### Diseño - 
Diagramas UML e incluso la interfaz (al menos la UX)

#### Codificación - 
Define con qué se va a programar, cómo se va a codificar e incluso implementa el workflow. Luego, se crea, se pica código.

#### Pruebas - 
Testing y resolución de errores. Como curiosidad los betatesters son los usuarios actualmente, algunas empresas se saltan este paso para que los problemas sean detectados por los usuarios.
//Refactorizar - "Tener un desastre y solucionarlo más adelante"
//Pruebas unitarias - 

#### Documentación - 
Documentación interna - Dentro del código 
Documentación externa - Documentación redactada y estructurada sobre el código / programa --> sistema de información

#### Explotación - 


#### Mantenimiento - 
Es necesario una documentación para el sistema de información
Mantenimiento correctivo - Problema o error que hay que corregir
Mantenimiento preventivo - Evitar problema o errores
Mantenimiento predictivo - Predecir un problema o error y aplicar una corrección/optimización

---
#### Roles
Analista de sistemas
Diseñador de software
Analista programador
Programador
Arquitecto de software


---
### Arquitectura de software
Nunca repetir código y nunca repetir funciones -- "No repetir bloques"

#### Patrones creacionales
Fábrica abstracta - 
Instancia única - 

#### Patrones Estructurales
Decorador - Añadir o quitar funciones a un objeto sin cambiar su código original.
Objeto compuesto - Combinar objetos simples para formar objetos más complejos en forma de árbol
Fachada - Crea una interfaz única y sencilla para usar un sistema complejo.

#### Patrones de comportamiento
Estado -
Visitor -
Iterador - 

#### Antripatrones - "Todo lo que está mal hecho"

Código espagueti: 
- Código sin orden ni estructura 
- Difícil de mantener, un cambio rompe todo
Flujo de lava:
- Surge por la mala gestión.
- Código desordenado con muchas capas y añadidos que rompen la estructura natural.
Martillo dorado / Varita mágica:
- Consiste en utilizar siempre la misma herramienta, lenguaje o framework para todo.
Reinventar la rueda:
- Crear soluciones para problemas que ya tienen una solución probada. Siempre utilizar lo que ya existe.
Reinventar la rueda cuadrada:
- Intentar reinventar, pero hacerlo mal o de forma ineficiente.
Infierno de dependencias:
- Utilizar demasiadas librerías externas.
- Al actualizarse pueden romper el proyecto.
Manejo de excepciones inútil
- Usar excepciones mal
Cadenas mágicas:
- Escribir cadenas de texto directamente en el código en lugar de usar constantes. Ej: Usar admin en muchas parte del código en vez de usar una variable global.
Copiar y pegar:
- Reutilizar código copiándolo en vez de hacerlo modular o en funciones
- Causa duplicación y errores difíciles de mantener.

---
#### Desarrollo en 3 capas
Los sistemas de bases de datos funcionan con estas 3 capas. Objetivo, modificar las primeras capas sin cambiar la base de datos

#### Filosofía: 
Cargar la memoria persistente del sistema y los refleja al usuario según petición.
Problema: Tengo datos persistentes y quiero añadir un dato nuevo, necesito cambiar el programa --> Se ha comentado SQL para guardar muchos datos y de forma flexible

##### Capa de presentación - 

##### Capa de negocio o lógica - 

##### Capa de datos - 

---
## GIT
#### Introducción
Se utiliza para control de versiones. 
Permite gestionar y sincronizar el código.
Facilita la colaboración entre equipos de programación.
Ayuda a mantener un historial completo de cambios.
Permite realizar backups y actualizaciones del programa.
La evolución del código no es lineal, es decir, de una versión del programa es posible continuar en otra rama de versiones hasta lograr la versión más óptima. Es una manera de modificar, testear y actualizar el programa de forma segura.

Al utilizar GIT se automatiza el proceso de guardar una nueva versión del programa, se encarga de renombrarlo y guardarlo.

Ejemplo dado: El programa y sus diferentes versiones se están desarrollando de forma ramificada (una versión evoluciona a otras dos, tres... etc.). Es posible, que en una de esas ramas se encuentre otra utilidad al programa y esa rama evolucione una nueva idea o aplicación. De esta manera se desarrollarían dos programas a partir de uno, la idea original y la nueva utilidad/idea descubierta.

---
### ¿Qué es GIT y para qué sirve?
Control de versiones distribuidas: Permite gestionar versiones de archivos de manera distribuida, asegurando la sincronización entre diversos usuarios.
Seguimiento de historiales: Registro detallado de todos los cambios para revisar y revertir versiones.
Colaboración e integridad: Mejora la colaboración entre desarrolladores manteniendo la integridad y la coherencia del código.

### Hiistoria y creador de GIT

Creado en 2005 para gestionar eficientemente el desarrollo del nucleo de Linux
Ofreceun sistema de control de versiones rápido

##Ventajas de utilizar GIT
Control de 

## Funcionamiento básico

### Repositorio local y remoto
//Concepto de repositorio: En este caso es una carpeta, es "donde se guardan las cosas"

Repositorio local - Directorio del ordenador propio para gestionar el código del proyecto.

Repositorio remoto - Servidor o plataforma que permite compartir y colaborar en el código.
Misma filosofía que Google Drive. Es posible enviar o recibir los archivos desde cualquier dispositivo conectado a ese servidor.

Sincronización con GIT - GIT sincroniza los cambios entre ambos repositorios.
Es posible utilizar GIT en el mismo ordenador, no es necesario estar conectado a un repositorio remoto.

Accede a estos repositorios con direcciones de carpeta, por ejemplo: C:/Proyecto/Calculadora/

### Comados principales
Iniciar repositorio "git init"
Añadir archivos al control "git add"
Registrar cambios "git commit"
Enviar cambios "git push"
Actualizar repositorio local "git pull"

### Cómo realizar el seguimiento de cambios
Registro de los cambios con "commits" - 
Volver a versiones anteriores - 
Comparación de diferencias -
Evolución clara del proyecto -

//hasta la diapositiva 18 --> Ejercicio de GIT


---

**Fecha de modificación:** 05/10/2025
**Estado:** <font color="#ff0000">No actualizado</font>
#DAM 

---
