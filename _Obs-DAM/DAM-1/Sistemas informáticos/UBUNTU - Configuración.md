UBUNTU

1. Creado un disco de 10 GB en Ubuntu
2. El disco no está formateado, aparece como `sin asignar`. 
3. Ver los discos que tiene Ubuntu `sudo fdisk -l`
4. Los discos aparecen como `dev/vda1` o `/dev/sda1` y los segundos discos aparecen como `b` y sucesivamente.
	1. También existen espacios dedicados llamados `loop`
5. Entrar en las opciones de disco:
	1. Acceder al disco `/dev/vdb/`
	2. Pulsar m y aparecerá  un menú
	3. Se le da a la o para crear una new empty mbr (parece que esto tiene un limite, ni idea)
	4. Luego una n (new partición)
	5. Luego una p (primaria) o e (extendida)
	6. Pide el número de particiones (no sé qué quiere decir esto)
	7. Pide el sector (no sé qué es tiene que ver con las pistas y sectores del disco)
	8. Last sector (ni idea). Final del sector, qué tamaño quiero, le ha puesto +1G (dice que el tamaño sea de un GB, no se si es tan simple)
	9. Pregunta por la firma (ni idea)
6. Añade otra partición de 2GB
7. Ahora una extendida
	1. En el paso de elegir primary o extended, escribir un e
	2. Sigue igual
	3. Se requiere que lo coja todo, se acepta sin modificar nada
8. Crear logica:
	1. Al tener todo el espacio utilizado directamente las crea en la extendida
	2. Se le pone el tamaño
9. Crear otra lógica:
	1. Se crea igual y se acepta hasta el final. Esta ocupará lo que queda por ocupar.
10. Aplicar los cambios con la W
11. Problema, no se ha creado el sistema de archivos
	1. pulsar l para ver el código del tipo de partición
	2. Pulsar T para gestionar la partición
	3. Te pregunta qué partición se desea cambiar
12. Borrar con la d y elegir la partición


![[Pasted image 20260121204511.png]]