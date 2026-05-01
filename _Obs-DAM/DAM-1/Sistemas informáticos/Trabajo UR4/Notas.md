## Crear usuario y sus características y modificar propiedades de archivo
---

Network people wizard - netplwiz -> Comado de nivel muy alto
- Salen cuentas de usuario
- Opciones avanzadas > Opciones avanzadas aparecen todos los usuarios y grupos
Otra opción para ejecutarlo: lusrmgr.msc (en teoria llegan al mismo sitio)

Utilidad:
- Hay usuarios y grupos
- Hay dos tipos de usuarios: Admin y usuarios (normales)
- Administrador, default, invitado y wdagutility acount + el propio
- Click derecho sobre usuario para crear un usuario nuevo (nombre usuario, completo, descripción y contraseña. Tiene opciones para configurar el cambio de contraseña y deshabilitar la cuena)
- Los usuarios pueden pertenecer a un grupo
- Grupos
	- Administradores
	- CONTROL
	- Usuarios

> Nos va a enseñar a proteger archivos de forma local
> Haremos microtareas con esto - no se que es

Práctica:
- Crear 3 usuarios
- Crear carpeta en C
 
> Objetos: "todo es un objeto" -> haciendo referencia a carpetas, archivos, impresoras, "grupos", "usuarios". Es una entidad

- Click derecho en la carpeta, propiedades > seguridad
- Opciones avanzadas: Aparecen todos los permisos
- Deshabilitar herencia, permite quitar los permisos que hereda
- Desaparecen todos los permisos
- Agregar > Seleccionar una entidad de seguridad > Tipos de objetos -> Permite elegir que tipo de objeto (elegimos usuario)
- Opciones avanzadas > buscar ahora y seleccionar usuario (aceptar)
- Vuelve al menu anterior y permite editar los permisos básicos (control total, modificar, lectura y ejecución, mostrar el contenido, lectura y escritura)
- Intentar entrar en la carpeta con los usuarios creados. Algunos no deben poder entrar y otros sí y poder crear archivos sin poner la cuenta de administrador
- La captura se hará de "configuración de seguridad avanzada para "carpeta""
---
