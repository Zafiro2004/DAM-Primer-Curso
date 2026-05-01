## 1. Configurar la Carpeta en VirtualBox

1. Con la VM encendida o apagada, ve a **Configuración** > **Carpetas compartidas**.
    
2. Haz clic en el icono del **"+" (Añadir carpeta)**.
    
3. **Ruta de carpeta:** Busca la carpeta en tu equipo real.
    
4. **Nombre de carpeta:** Ponle un nombre sencillo (ej. `compartida`).
    
5. Marca las casillas:
    
    - **Automontar:** Para que se conecte al iniciar.
        
    - **Hacer permanente:** Para que no se borre la configuración al apagar.
        

---

## 2. Configurar Permisos en Ubuntu

Por defecto, Ubuntu monta la carpeta pero solo el usuario "root" puede verla.

Para acceder con tu usuario normal, debes añadirlo al grupo `vboxsf`:

1. Abre la terminal en Ubuntu.
    
2. Escribe el siguiente comando:
```bash
sudo adduser (usuario) vboxsf
```
3. **Cierra sesión y vuelve a entrar** (o reinicia) para que los cambios de grupo surtan efecto.