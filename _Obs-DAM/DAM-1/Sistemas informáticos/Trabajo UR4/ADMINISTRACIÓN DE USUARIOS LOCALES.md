# 1. ADMINISTRACIÓN DE USUARIOS LOCALES

La gestión de identidades en Windows se realiza principalmente a través de la consola avanzada de **Usuarios y grupos locales** (`lusrmgr.msc`).
## 1.1. Herramientas de Gestión de Alto Nivel
Existen dos consolas principales para la administración de cuentas locales, accesibles mediante comandos de ejecución directa:

- **`netplwiz` (Cuentas de usuario):** Herramienta simplificada para gestionar usuarios, cambiar contraseñas y configurar el inicio de sesión automático.
    
- **`lusrmgr.msc` (Usuarios y grupos locales):** Consola avanzada que permite una gestión integral de los perfiles, permitiendo habilitar o deshabilitar cuentas, configurar la caducidad de contraseñas y organizar la pertenencia a grupos.

## 1.2. Procedimiento de Creación de Usuarios

Para dar de alta a un nuevo usuario en el sistema, se siguen estos pasos:

1. Introducir el comando **`lusrmgr.msc`** en la barra de inicio.
    
2. Hacer clic derecho sobre la carpeta **Usuarios** y seleccionar **Usuario nuevo...**.
    
3. **Configuración del perfil:**
    
    - **Nombre de usuario:** Identificador corto para el inicio de sesión.
        
    - **Nombre completo y Descripción:** Datos informativos del titular.
        
    - **Contraseña:** Definición de las credenciales de acceso.
        
4. **Opciones de cuenta:**
    
    - _El usuario debe cambiar la contraseña en el siguiente inicio de sesión:_ Obliga a la privacidad del usuario.
        
    - _El usuario no puede cambiar la contraseña:_ Útil para cuentas de acceso compartido.
        
    - _La cuenta está deshabilitada:_ Bloquea el acceso sin eliminar el perfil.

## 1.3. Tipología de Usuarios y Cuentas del Sistema
Windows clasifica las cuentas según su función y privilegios. Es fundamental distinguir entre las cuentas creadas por el usuario y aquellas que el sistema genera por defecto:

|**Tipo de Cuenta**|**Función y Características**|
|---|---|
|**Administrador**|Posee privilegios totales sobre el equipo (instalación, cambios de seguridad).|
|**Usuario Estándar**|Destinado al uso habitual; no puede realizar cambios que afecten a la seguridad global.|
|**Invitado (Guest)**|Cuenta restringida para acceso temporal (deshabilitada normalmente).|
|**DefaultAccount**|Utilizada por el sistema para la gestión de procesos internos.|
|**WDAGUtilityAccount**|Cuenta de servicio para el aislamiento de aplicaciones (Windows Defender).|
