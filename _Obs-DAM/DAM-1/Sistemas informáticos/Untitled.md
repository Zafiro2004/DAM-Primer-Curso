
- Se ha metido en información del sistema (es una ventana con ese nombre )
	- Aquí salen los programas o grupos de programas que hacen inventarios (no sé qué quiere decir), pero bueno que si te metes en Grupos de Programas puedes saber qué programas hay.



### BitLocker
Encriptación de disco

1. Cifrado de unidad BitLocker
2. Activar BitLocker
	- Usar contraseña
	- Siguiente
3. Te pide guardar clave de recuperación tiene que ser unidad compartida o usb - Crear una unidad compartida en VBox
4. Pregunta por cifrar el espacio utilizado o la unidad entera. Lo lógico es cifrar todo el disco así lo cifra siempre
5. Modo de cifrado --> nuevo
6. Iniciar cifrado --> inicia el cifrado

Que pasa si no tengo la contraseña:
- Usar clave de recuperación

Compresión de disco:
- Abrir propiedades y seleccionar en General - Comprimir
- Aplicar a todo

Como desactivarlo


### Configuraciones de usuario
Opciones básicas:
- Foto de perfil
- Opciones de inicio (Contraseña, pin...)
- Agregar cuentas
- Control parental

### MSCONFIG 
Se configura cómo inicia la máquina (arranque)
Puedes ver los servicios que están activos (en servicios)

### Administrador de tareas
Rendimiento
Historial de aplicaciones
Detalles - De los procesos
Servicios
Aplicaciones de arranque

### Copia de seguridad
Es necesario un disco nuevo, igual o superior al actual
Panel de control>sistema y seguridad > copias de seguridad y restauración
Cambiar la configuración para seleccionar el disco y confirmar
Ejecutará la copia

#### Restaurar copia
Es posible volver a una restauración anterior. Aparece una fecha a recuperar.

### Desfragmentador de disco
Buscar: Desfragmentar y optimizar unidades
El disco puede quedar fragmentado. Al fraccionar se distribuye en pequeñas unidades.
Al instalar, en un disco vacío, se guardan los datos de forma secuencial. Si se desinstala algo el espacio queda en el disco hasta que se renueve, además cada "celda de información" está conectada entre sí y no tiene por qué ser de forma secuencial.
Al optimizarlo desplaza esas celdas y las reordena. Eliminando el espacio con la información "borrada".

---

### Exportación de máquina virtual
Archivo>Exportar
- Seleccionar máquina
- Seleccionar ubicación
- Configuración de formato: Incluir archios de iso
Construye un archivo .ova que es la exportación del a máquina virtual.

#### Clonar 
Parece clonar exactamente la máquina virtual, incluidos sus fallos en los discos.

