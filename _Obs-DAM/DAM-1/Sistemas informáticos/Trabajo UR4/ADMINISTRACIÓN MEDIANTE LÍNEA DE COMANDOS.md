# 6. ADMINISTRACIÓN MEDIANTE LÍNEA DE COMANDOS (POWERSHELL)

Además de las herramientas gráficas (`lusrmgr.msc`), Windows permite la administración automatizada mediante PowerShell, su interfaz de consola avanzada. A continuación, se detallan los comandos (Cmdlets) esenciales para la gestión de usuarios y grupos:

- **Listar usuarios existentes:** Para comprobar qué usuarios hay creados en el sistema, se utiliza el comando: `Get-LocalUser`
    
- **Crear un usuario nuevo:** Para dar de alta una cuenta estableciendo su nombre, se emplea: `New-LocalUser -Name "NombreUsuario"` _(Nota: El sistema solicitará introducir una contraseña de forma segura)._
    
- **Crear un grupo local:** Para generar un grupo organizativo, como por ejemplo uno llamado "Control", el comando es: `New-LocalGroup -Name "Control"`
    
- **Añadir un usuario a un grupo:** Para incluir un usuario específico dentro de un grupo existente, se utiliza: `Add-LocalGroupMember -Group "Control" -Member "NombreUsuario"`