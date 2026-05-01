
# Basic GIT Commands

---
## Inicializar un repositorio
Acceder a la carpeta:
- Desde terminal - Introducir dirección en la terminal hasta ubicarla.
- Desde explorador - Una vez en la carpeta, abrir terminal con el click derecho. La dirección aparecerá donde se haya abierto la terminal
```bash
git init
``` 
---
## Conectar repositorio local a repositorio remoto
```bash
git remote add origin https://github.com/usuario/nombre-repo.git
```
---
## Acceso a GitHub - Es necesario cuenta y token
### Qué es un token
Un **token de acceso personal** es una cadena de caracteres (como una contraseña segura generada por GitHub) que te da permiso para acceder a tus repositorios desde la terminal o herramientas como Git.
Sirve para:
- **Autenticarse** al usar comandos como `git push`, `git pull`, o `git clone`.
- Evitar compartir tu contraseña real.
### Cómo generar un token en GitHub

1. Ve a [https://github.com/settings/tokens](https://github.com/settings/tokens)  )o **Settings → Developer settings → Personal access tokens → Tokens (classic)**)
2. Haz clic en **“Generate new token (classic)”** → selecciona:
    - **`repo`** (permiso completo sobre tus repositorios)
    - Opcionalmente **`workflow`**, si usas GitHub Actions.
3. Elige una **fecha de expiración** (por seguridad) --> Ejemplo: 30 días.
4. Haz clic en **“Generate token”** y **copia** el código (solo se muestra una vez).
<font color="#ff0000">No compartir el token — es como una contraseña </font>
### Cómo usar el token

#### 1. Al hacer `git push` o `git pull`:
 Cuando Git  pida usuario y contraseña:
- **Usuario:** tu nombre de usuario de GitHub
- **Contraseña:** pega el token que generaste --> ghp_AbC123xYz...
Ejemplo:
```
Username: tu_usuario
Password: ghp_AbC123xYz...
```

#### 2. (Opcional) Guardar el token para no escribirlo cada vez

Puedes decirle a Git que lo recuerde:
```bash
git config --global credential.helper store
```
Luego, la primera vez que lo uses, Git guardará tus credenciales en texto plano (cuidado si compartes el equipo).

O mejor aún. 
Esto lo guarda temporalmente (por defecto, 15 minutos).:
```bash
git config --global credential.helper cache
```
---
## Verificar repositorio actual 
```bash
git remote -v
``` 

Si el repositorio está conectado correctamente, aparecerá en consola algo como:
```bash
origin  https://github.com/usuario/nombre-repo.git (fetch)
origin  https://github.com/usuario/nombre-repo.git (push)
``` 
---
## Clonar un repositorio
Descarga el repositorio en la dirección indicada
```bash
git remote add origin https://github.com/usuario/nombre-repo.git
``` 
---
## Descargar cambios
```bash
git pull origin <branch-id>
``` 
---
## Verificar estado
Verifica el estado del repositorio en el que se está trabajando. 
Es posible ver los cambios que se han realizado antes de actualizarlo en el repositorio central o principal
```bash
git status
``` 
---
## Consultar diferencias
A diferencia del ``git status`` este comando permite **ver las diferencias entre versiones de tus archivos**, o sea, **qué cambió, dónde y cómo**.
```bash
git diff
``` 
Atajos útiles dentro de `git log`:
- **Espacio (`space`)** → Avanza una página.
- **b** → Retrocede una página.
- **↑ / ↓** → Mueve una línea arriba o abajo.
- **q** → _Quit_ (salir).
Entre otros...

Ver las diferencias de forma resumida:
```bash
git diff --stat
``` 

Ver las diferencias entre dos commits:
```bash
git diff <commit1> <commit2>
``` 

Ver las diferencias entre dos ramas:
```bash
git diff <branch-name1> <branch-name2>
``` 

Ver las diferencias en un único archivo:
```bash
git diff <filename.ext>
``` 
---
## Añadir cambios
Añade todos los archivos modificados o nuevos al **área de preparación (staging area)**.
Opción A: Añadir todos los cambios realizados
```bash
git add . 
``` 

Opción B: Añadir un archivo específico
```bash
git add <file-name.ext>
``` 
---
## Crear un commit
Guarda oficialmente los cambios del **staging area** en el historial del repositorio.
```bash
git commit -m "Descripción breve de los cambios"
``` 
---
## Consultar historial de commits
Mostrar detalladamente todos los commits realizados
```bash
git log
``` 
Atajos útiles dentro de `git log`:
- **Espacio (`space`)** → Avanza una página.
- **b** → Retrocede una página.
- **↑ / ↓** → Mueve una línea arriba o abajo.
- **q** → _Quit_ (salir).
Entre otros...

Mostrar en una línea todos los commits realizados
```bash
git log --oneline
``` 
---
## Subir cambios
Envía los **commits locales** (los cambios guardados con `git commit`) al **repositorio remoto** — por ejemplo, a GitHub.
Es el paso que **sincroniza el trabajo local con la nube**.

Si es la primera vez que subes esta rama se debe especificar:
```bash
git push -u origin <branch-name>
```
- `origin` → nombre del repositorio remoto (por defecto).
- `main` → rama a la que estás subiendo los cambios.
-  La `-u` → establece la rama remota como predeterminada para futuros `git push` y `git pull`.

Si no es la primera vez:
```bash
git push origin <branch-name>
```

```bash
git push
```
---
## Consultar ramas
```bash
git branch
``` 
---
## Crear una rama
```bash
git branch <branch-name>
``` 
---
## Cambiar de rama
```bash
git checkout <branch-name>
``` 

```bash
git switch <branch-name>
``` 
---
## Cambiar de versión (commit)
```bash
git checkout <commit-id>
``` 
---
## Fusionar ramas
```bash
git merge <branch-name>
``` 
---
## Configurar usuario
```bash
git config --global user.name "YourName"
``` 
---
## Configurar correo
```bash
git config --global user.email "you@example.com"
``` 
---
## Consultar diferencias
A diferencia del ``git status`` este comando te permite ver los cambios producidos dentro de los archivos
```bash
git diff
``` 
---
## Eliminar los cambios locales no guardados
Restablece tu repositorio al **estado exacto de un commit específico**,  **borrando todos los cambios no guardados**.
Esta instrucción descarta:
- Cambios en archivos no confirmados (`modified`)
- Archivos preparados para commit (`staged`)
-  Si se especifica el commit, commits posteriores al especificado (en el historial local).
```bash
git reset --hard
```

Especificar commit:
```bash
git reset --hard <commit-id>
```
---
## Eliminar archivos no seguidos
Elimina **archivos y carpetas sin seguimiento** (no añadidos con `git add`) del directorio de trabajo.
Esto borra:
- Archivos no versionados (`untracked files`)
- Directorios no versionados (`untracked directories`)
```bash
git clean -fd
```
---
## Eliminar archivo del repositorio
```bash
git rm <file>
``` 
---
## Guardar cambios temporalmente 
```bash
git stash
``` 
---
## Recuperar cambios guardados
```bash
git stash pop
``` 
---

---

**Fecha de modificación:** 11/10/2025
**Estado:** <font color="#00ff00">Actualizado</font>
#DAM 

---

