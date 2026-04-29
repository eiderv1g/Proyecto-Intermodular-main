# CYBERFORGE - IMPLANTACIÓN DE SISTEMAS OPERATIVOS

**Equipo**: Sergio Gallardo Marchal,  Miriam Ocaña Pérez-Cerdá, Antonio José Rossi Bersabé.

---

**CyberForge** es un proyecto orientado al diseño e implantación de una infraestructura IT para un centro de formación especializado en ciberseguridad.

El objetivo principal es construir un entorno realista, seguro y segmentado mediante VLANs, capaz de soportar distintos perfiles de usuario (administración, desarrollo, formación, etc.), así como servicios críticos como servidores, virtualización y laboratorios de prácticas.

A lo largo del proyecto se han aplicado metodologías profesionales de despliegue de sistemas, abarcando desde el análisis inicial hasta la configuración de servicios básicos, pasando por la instalación, gestión de usuarios y control de accesos.

---

# Índice del Proyecto

## 1. Análisis de necesidades del sistema
Se estudian los requisitos de la infraestructura en función de los distintos departamentos y su función dentro de la red, definiendo los sistemas operativos más adecuados.

- 1.1 Servidores  
  - Servidor CPD  
  - Servidor web  
  - Servidor LAB  
- 1.2 Equipos de usuario  
  - Administración  
  - Dirección  
  - Desarrollo  
  - Soporte técnico  
  - Formación (Aula CTF)  
  - Red WiFi  

📄 Ver documento → 1. Análisis de necesidades del sistema.md  

---

## 2. Plan de implantación
Se definen los métodos de despliegue de los sistemas, adaptando la instalación según el tipo de equipo para optimizar tiempo, recursos y eficiencia.

- 2.1 Instalación manual (servidores)  
- 2.2 Instalación mediante imágenes (equipos de usuario)  
- 2.3 Instalación mediante virtualización (servidor LAB)  

📄 Ver documento → 2. Plan de implantación.md  

---

## 3. Instalación del sistema operativo
Se describe el proceso de instalación en servidores, equipos cliente y entorno de virtualización, tanto en un contexto real como en su simulación.

- 3.1 Instalación manual (Ubuntu Server)  
- 3.2 Instalación mediante imágenes  
- 3.3 Instalación mediante virtualización (Proxmox)  
- 3.4 Conclusión  

📄 Ver documento → 3 Instalación del Sistema Operativo.md  

---

## 4. Configuración del sistema
Se detallan las configuraciones básicas necesarias para dejar los sistemas operativos listos para su uso dentro de la infraestructura.

- 4.1 Configuración en servidores  
- 4.2 Configuración en equipos cliente (Ubuntu)  
- 4.3 Configuración en equipos cliente (Windows)  
- 4.4 Configuración del servidor LAB  
- 4.5 Conclusión  

📄 Ver documento → 4 Configuración del sistema.md  

---

## 5. Gestión de usuarios y permisos
Se implementa una estructura de usuarios y grupos, junto con políticas de permisos, para garantizar la seguridad y el control de acceso.

- 5.1 Servidor principal (Ubuntu Server)  
- 5.2 Equipos Ubuntu Desktop  
- 5.3 Equipos Windows 11  
- 5.4 Permisos en Proxmox  

📄 Ver documento → 5 Usuarios y permisos.md  

---

## 6. Servicios básicos del sistema
Se configuran los servicios esenciales que permiten la comunicación, administración remota y funcionamiento de la red.

- 6.1 Acceso remoto  
- 6.2 Compartición de archivos  
- 6.3 Servicios básicos de red  
- 6.4 Conclusión  

📄 Ver documento → 6 Servicios básicos del sistema.md  

---