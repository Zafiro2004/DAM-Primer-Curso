# Crear partición

## ✅ LISTA COMPLETA Y DETALLADA — INSTALACIÓN LIMPIA DUAL BOOT WINDOWS + UBUNTU

1️⃣ Hacer **copia de seguridad completa** de todos tus datos porque se borrará el disco.
2️⃣ Descargar ISO oficial de **Windows** desde la página de Microsoft.
3️⃣ Descargar ISO oficial de **Ubuntu LTS** desde la página de Ubuntu.
4️⃣ Crear **USB booteable de Windows** (mín. 8 GB) con Rufus:  
 a) Seleccionar el USB  
 b) Seleccionar la ISO de Windows  
 c) Elegir **GPT + UEFI** (recomendado), **MBR + BIOS** si no soporta UEFI  
 d) Iniciar el proceso
5️⃣ Crear **USB booteable de Ubuntu** (mín. 8 GB) con Rufus de la misma manera (GPT + UEFI recomendado).
6️⃣ Reiniciar el PC y entrar al **BIOS/UEFI** (`F2`, `DEL` o similar) y comprobar:  
 a) Arranque en **UEFI** activado  
 b) **Secure Boot** preferiblemente desactivado por ahora  
 c) Guardar y salir
7️⃣ Conectar USB de Windows y arrancar desde él usando el **menú de arranque** (`F12`, `Esc`, `F9`, según modelo).
8️⃣ Elegir **instalación personalizada**: “Instalar solo Windows (avanzado)”.
9️⃣ En la lista de particiones, **eliminar TODAS** las existentes en el disco donde se instalará (quedará “Espacio sin asignar”).
🔟 Crear una **nueva partición para Windows**:  
 a) Tamaño recomendado: **100–150 GB**  
 b) Windows creará automáticamente particiones adicionales (EFI, recuperación).  
 c) Dejar **el resto del disco sin asignar** (vacío) para Ubuntu.
1️⃣1️⃣ Finalizar la instalación de Windows y completar configuración inicial.
1️⃣2️⃣ Conectarse a Internet en Windows y dejar instalar actualizaciones si quiere.
➡️ **MUY IMPORTANTE** (para evitar errores en Ubuntu):
1️⃣3️⃣ En Windows, abrir **Administrar BitLocker** y **Suspender o Desactivar BitLocker** en la unidad del sistema (`C:`).
1️⃣4️⃣ Confirmar desde CMD/Powershell como administrador con:
```
manage-bde -status
```
Debe mostrar “**Protection Off**” y “**Fully Decrypted**”.
1️⃣5️⃣ Reiniciar el PC.
1️⃣6️⃣ Conectar USB de **Ubuntu** y arrancar desde él.
1️⃣7️⃣ Elegir **“Try or Install Ubuntu”** y luego “Instalar Ubuntu”.
1️⃣8️⃣ Elegir:  
✅ **Opción A (más fácil y recomendada)**  
  “**Instalar Ubuntu junto a Windows Boot Manager**”  
  → Ubuntu crea particiones automáticamente  
  → Instala GRUB y configura Dual Boot  
✅ **Opción B (si no aparece la opción anterior o quieres control total)**  
  Elegir “**Algo más**”, y en el espacio sin asignar crear:  
  a) Partición **/** (raíz)  
   • 30–40 GB  
   • Formato: **ext4**  
   • Punto de montaje: `/`  
  b) Partición **swap**  
   • 2–4 GB (o igual a la RAM si es menor de 8 GB)  
  c) Partición **/home**  
   • Todo el espacio restante  
   • Formato: **ext4**  
  d) Seleccionar **el mismo disco** que Windows para instalar el cargador GRUB  
   Ej.: `/dev/sda` o `/dev/nvme0n1` **(sin número de partición)**
1️⃣9️⃣ Confirmar los cambios y comenzar instalación de Ubuntu.
2️⃣0️⃣ Cuando termine, retirar USB y **reiniciar el sistema**.
2️⃣1️⃣ En el arranque, **elegir sistema** en el menú GRUB:  
 • Ubuntu  
 • Windows Boot Manager
2️⃣2️⃣ Una vez en Ubuntu, abrir una terminal y ejecutar:
```
sudo apt update && sudo apt upgrade -y
```
2️⃣3️⃣ (Opcional) Volver a Windows y **activar de nuevo BitLocker** si lo deseas.
2️⃣4️⃣ Guardar la **clave de recuperación de BitLocker** porque Windows puede pedirla al cambiar el orden de arranque.
2️⃣5️⃣ (Opcional) Comprobar en BIOS/UEFI que **ubuntu** (GRUB) está primero en la prioridad de arranque si Windows se pone primero.

---
# GRUB Ubuntu-Windows
## 🧩 PASO 1: Identificar tus entradas actuales

1. Arranca Ubuntu.
2. Abre una terminal (`Ctrl + Alt + T`).
3. Ejecuta:

```bash
grep "menuentry " /boot/grub/grub.cfg
```

Esto mostrará algo así:

```
menuentry 'Ubuntu' ...
menuentry 'Advanced options for Ubuntu' ...
menuentry 'Windows Boot Manager (on /dev/nvme0n1p1)' ...
```

Anota exactamente cómo se llama el de **Windows** (normalmente comienza con “Windows Boot Manager”).


---

## 🧩 PASO 2: Crear una configuración de GRUB personalizada

En lugar de modificar directamente `grub.cfg` (no se debe editar a mano), haremos una versión personalizada.

1. Edita el archivo de configuración personalizada:
```bash
sudo nano /etc/grub.d/40_custom
```
2. Borra su contenido (si tiene algo) y pega solo esto:

```bash
#!/bin/sh
exec tail -n +3 $0
# Personal GRUB menu
menuentry "Ubuntu" {
	set root=(hd0,1)
	linux /boot/vmlinuz root=/dev/sda1 ro quiet splash
	initrd /boot/initrd.img
}

menuentry "Windows" {
	insmod chain
	insmod ntfs
	search --no-floppy --set=root --file /EFI/Microsoft/Boot/bootmgfw.efi
	chainloader /EFI/Microsoft/Boot/bootmgfw.efi
}
    ```
    
    ⚠️ **Importante:**
    
    - Revisa que `/dev/sda1` o `(hd0,1)` correspondan a la partición de Ubuntu. Puedes verificar con `lsblk` o `sudo fdisk -l`.
        
    - Si tu disco es NVMe, los nombres pueden ser como `/dev/nvme0n1p2`.
        

---

## 🧩 PASO 3: Desactivar el resto de menús

1. Da permisos de ejecución:

```bash
sudo chmod +x /etc/grub.d/40_custom
```

1. Desactiva los menús automáticos:

```bash
sudo chmod -x /etc/grub.d/10_linux       # quita la detección automática de Ubuntu
sudo chmod -x /etc/grub.d/30_os-prober   # quita detección automática de otros SO (Windows)
sudo chmod -x /etc/grub.d/30_uefi-firmware  # quita entrada de configuración UEFI
sudo chmod -x /etc/grub.d/20_memtest86+  # quita las entradas de test de memoria
```

Recuperación:
```bash
sudo chmod +x /etc/grub.d/10_linux
sudo chmod +x /etc/grub.d/20_memtest86+
sudo chmod +x /etc/grub.d/30_os-prober
sudo chmod +x /etc/grub.d/30_uefi-firmware
sudo update-grub
```

1. Actualiza GRUB:

```bash
sudo update-grub
```

Ahora solo se incluirá **lo que hayas puesto en `40_custom`**.

---

## 🧩 PASO 4: Opcional — Personaliza la apariencia

Puedes editar `/etc/default/grub`:

```bash
sudo nano /etc/default/grub
```

Y ajustar:

```bash
GRUB_DEFAULT=0
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=5
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
GRUB_CMDLINE_LINUX=""
```

Luego actualiza de nuevo:

```bash
sudo update-grub
```

---

## 🧩 PASO 5: Probar

Reinicia tu equipo:

```bash
sudo reboot
```

Deberías ver un menú GRUB minimalista con solo:

```
Ubuntu
Windows
```

---
## 🧩 1️⃣ Verifica qué temas están disponibles

Primero, puedes buscar qué temas hay en los repositorios con:

```bash
apt search grub-theme
```

Verás una lista similar a esta (varía según versión de Ubuntu):

```
grub-theme-starfield - GRUB 2 starfield theme
grub2-theme-mint - GRUB theme inspired by Linux Mint
grub-theme-breeze - Breeze theme for GRUB (KDE style)
```

_(Los nombres pueden cambiar un poco según la versión de Ubuntu.)_

---

## 🎨 2️⃣ Instala el tema que te guste

Por ejemplo, para instalar el clásico **Starfield** (el mismo que usa GRUB por defecto en Ubuntu, pero con fondo e iconos más modernos):

```bash
sudo apt install grub-theme-starfield
```

También puedes probar otros temas si tu versión los tiene (por ejemplo, en Ubuntu derivadas como Linux Mint o KDE Neon hay más disponibles).

---

## ⚙️ 3️⃣ Configura el tema en GRUB

Edita el archivo `/etc/default/grub` con:

```bash
sudo nano /etc/default/grub
```

Busca o añade la línea:

```bash
GRUB_THEME="/usr/share/grub/themes/starfield/theme.txt"
```

> 🔹 Si instalaste otro tema, cambia `starfield` por el nombre del tema que instalaste.  
> Por ejemplo, `mint` → `/usr/share/grub/themes/mint/theme.txt`.

Guarda los cambios con:  
`Ctrl + O`, `Enter`, `Ctrl + X`.

---

## 🔁 4️⃣ Actualiza GRUB para aplicar el tema

```bash
sudo update-grub
```

Verás algo como:

```
Found theme: /usr/share/grub/themes/starfield/theme.txt
done
```

---

## 🚀 5️⃣ Reinicia para verlo

```bash
sudo reboot
```

Deberías ver el **nuevo fondo y estilo** en el menú de GRUB 🎨

---

## 🧰 6️⃣ (Opcional) Volver al tema original

Si algo no te gusta o el tema da problemas, simplemente comenta o borra la línea del tema en `/etc/default/grub`:

```bash
#GRUB_THEME="/usr/share/grub/themes/starfield/theme.txt"
```

Y vuelve a ejecutar:

```bash
sudo update-grub
```

GRUB volverá a su apariencia normal.

---