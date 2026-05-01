# 8. MONITORIZACIÓN AVANZADA: NATIVA VS. TERCEROS

El sistema operativo Windows 11 incluye sus propias herramientas de registros y logs (como el Visor de Eventos), pero en entornos de sistemas informáticos profesionales, a menudo se evalúan aplicaciones de terceros para mejorar esta función.

## 8.1. Aplicaciones de Monitorización (Alternativas)

Existen soluciones de software libre o con versiones gratuitas que compiten con las herramientas nativas:

1. **Zabbix:** Software de código abierto muy potente para monitorizar redes y servidores.
    
2. **PRTG Network Monitor:** Ofrece una versión gratuita (hasta 100 sensores) muy visual.
    
3. **Datadog:** Plataforma en la nube con un nivel gratuito básico para monitorizar infraestructura.
    
4. **SolarWinds (versiones free):** Conocido por sus herramientas de diagnóstico de red y logs.
    
5. **ManageEngine EventLog Analyzer (Free Edition):** Especializado en auditar logs de Windows.
    

## 8.2. Evaluación: Terceros vs. Visor de Eventos (Windows)

Al comparar una herramienta como Zabbix o EventLog Analyzer con el Visor de Eventos nativo, las principales diferencias son:

- **Centralización:** Las herramientas de terceros permiten ver los logs de varios ordenadores en una sola pantalla, mientras que el Visor de Eventos de Windows está pensado para analizar el equipo local.
    
- **Alertas Activas:** Las aplicaciones externas pueden enviar un correo o un mensaje si un usuario llena su cuota de disco, en lugar de simplemente dejar un registro oculto en el log.
    
- **Visualización:** El software de terceros suele presentar la información mediante gráficos (dashboards) mucho más intuitivos que las listas de texto plano de Windows.