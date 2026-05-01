## 🧠 Resumen Integral: Procesos y Planificación de Sistemas Operativos

---

### **1. Procesos y su Gestión**

| **Concepto**  | **Definición**                                                                                            | **Datos Clave**                                                                 |
| ------------- | --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| **Proceso**   | Un programa que está en ejecución. Cada ejecución de un programa crea un proceso.                         | El SO debe realizar una gestión adecuada de los recursos.                       |
| **BCP (PCB)** | **Bloque de Control de Proceso.** Estructura de datos que identifica al proceso unívocamente.             | Contiene el **PID** (Process Identificador), estado, prioridad, recursos, etc.. |
| **Tipos**     | **De sistema:** Se ejecutan al iniciar para servicios. **De usuario:** Los que el usuario manda ejecutar. | Los servicios como **Arranque** y **Parada** son **procesos del sistema.**      |

---

### **2. Estados y Transiciones de Procesos**

Los procesos pueden estar en tres estados principales:

1. **Listo (Ready):** Preparado para ejecutarse, esperando que la CPU se libere.
    
2. **En Ejecución (Running):** Ocupando la CPU, ejecutando sus instrucciones.
    
3. **Bloqueado (Blocked):** Esperando un recurso no disponible (ej. esperando que termine una E/S).

**Transiciones de Estado Clave**

| **Transición**                | **Suceso Desencadenante**                                                                    | **Iniciador**                                                 |
| ----------------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------- |
| **Ejecución $\to$ Bloqueado** | Al iniciar una operación de E/S.                                                             | **Proceso de Usuario** (es la única iniciada por el proceso). |
| **Ejecución $\to$ Listo**     | En sistemas de tiempo compartido, el SO decide desalojar el proceso (por exceder su tiempo). | Entidad externa.                                              |
| **Listo $\to$ En Ejecución**  | Lo requiere el **planificador de la CPU** (dispatcher)                                       | Entidad externa.                                              |
| **Bloqueado $\to$ Listo**     | Se dispone del recurso que estaba esperando (ej. termina la E/S).                            | Entidad externa.                                              |

---

### **3. Algoritmos de Planificación**

La planificación es la forma en que la CPU se distribuye entre los procesos. El planificador (**_dispatcher_**) debe minimizar el tiempo de respuesta y maximizar la ejecución de procesos.

#### **Tipos de Planificación**

- **Expulsiva (****_Preemptive_****):** Un proceso puede ser desalojado (desalojado) de la CPU antes de que termine, quedando en estado **Listo**.
    
- **No Expulsiva (****_Non-preemptive_****):** Un proceso no puede ser desalojado hasta que termina o se bloquea.    

#### **Algoritmos Comunes**

| **Algoritmo**                | **Tipo**                                  | **Regla de Selección**                                                     | **Concepto Clave**                                                                            |
| ---------------------------- | ----------------------------------------- | -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| **FIFO / FCFS**              | No Expulsiva                              | Primero en llegar, primero en ser servido.                                 | Simple. Ejecuta en el orden de llegada.                                                       |
| **Round Robin (RR)**         | **Expulsiva**                             | El proceso se ejecuta por un **cuanto de tiempo** (_time slice_).          | Ideal para tiempo compartido. Garantiza que todos progresen.                                  |
| **SJF (Shortest Job First)** | Puede ser No Expulsiva o Expulsiva (SRTF) | Prioriza el proceso con el **menor tiempo de ejecución ($T_X$)** restante. | Minimiza el tiempo de espera medio.                                                           |
| **Por Prioridades**          | Puede ser Expulsiva o No Expulsiva        | Prioriza el proceso con el nivel de **prioridad más alto**.                | Requiere **Envejecimiento (_Aging_)** para evitar la inanición de procesos de baja prioridad. |

---

### **4. Métricas de Rendimiento**

El objetivo es maximizar la utilización de la CPU y minimizar el tiempo de respuesta.

| **Métrica**                       | **Símbolo** | **Cálculo**           | **Definición**                                                  |
| --------------------------------- | ----------- | --------------------- | --------------------------------------------------------------- |
| **Tiempo de Entrada (Llegada)**   | $T_I$       | N/A                   | Momento en que el proceso entra al sistema.                     |
| **Tiempo de Ejecución**           | $T_X$       | N/A                   | Tiempo que el proceso necesita para finalizar.                  |
| **Tiempo de Respuesta (Retorno)** | $T_R$       | $T_R = T_{Fin} - T_I$ | Tiempo total que pasa desde la llegada hasta el resultado.      |
| **Tiempo de Espera**              | $T_E$       | $T_E = T_R - T_X$     | Tiempo que el proceso pasa listo o bloqueado, esperando la CPU. |

---
