# 4. GESTIÓN DE ALMACENAMIENTO: CUOTAS DE DISCO

En entornos con múltiples usuarios, es fundamental evitar que un solo perfil agote todo el almacenamiento disponible. Para ello se utilizan las **Cuotas de Disco**, que permiten al administrador asignar un límite máximo de espacio a cada usuario en una partición NTFS.

## 4.1. Configuración de Cuotas de Disco

Para establecer estos límites, se debe seguir el siguiente procedimiento:

1. Acceder a **"Este equipo"** y hacer clic derecho sobre el disco duro (por ejemplo, `C:`).
    
2. Seleccionar **Propiedades** y navegar hasta la pestaña **Cuota**.
    
3. Hacer clic en el botón **Mostrar configuración de cuota**. Se abrirá una ventana donde debemos configurar las siguientes opciones:
    

## 4.2. Opciones de la Configuración de Cuota

- **Habilitar la administración de cuota:** Es la casilla principal que enciende el sistema de cuotas en ese disco.
    
- **Denegar espacio de disco a los usuarios que superen el límite de cuota:** Si se marca, cuando el usuario llegue a su límite, el sistema le mostrará un error de "Disco lleno" y no le dejará guardar ni un byte más.
    
- **Limitar espacio en disco a [ X ]:** Define el tamaño máximo absoluto que el usuario puede ocupar (ej. 5 GB).
    
- **Establecer nivel de advertencia en [ Y ]:** Define un umbral inferior (ej. 4 GB). Al superarlo, el usuario aún puede guardar archivos, pero el sistema sabe que se está acercando al límite.
    
- **Registrar un evento cuando un usuario supere su límite de cuota:** Escribe un aviso en los registros del sistema (logs) cuando se alcanza el tope máximo.
    
- **Registrar un evento cuando un usuario supere su nivel de advertencia:** Escribe un aviso en los registros (logs) cuando se pasa el umbral de precaución.