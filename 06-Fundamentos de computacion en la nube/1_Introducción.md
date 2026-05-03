# Proyecto Intermodular — 1º ASIR
## MPO – Computación en la Nube

**Equipo:** Sergio Gallardo Marchal, Miriam Ocaña Pérez-Cerdá, Antonio Rossi Besabé

---

## Introducción

Para este Proyecto Intermodular hemos decidido simular el funcionamiento de un centro de formación y coworking para especialistas en ciberseguridad, llamado **CyberForge**. Dadas las particularidades que conlleva esta especialidad, debemos tratar muy cuidadosamente todas las variables de seguridad, control de accesos y fiabilidad de la red.

Contaremos con varias oficinas principales (administración, dirección, desarrollo, etc.), pero una en especial va a ocupar nuestra atención en este apartado del proyecto: **la sala de formación**. La idea es tener a un máximo de 10 alumnos en el aula física, que también hace las veces de sede de competiciones de hacking. Estos alumnos también tendrán acceso de forma remota a las instancias: previa autentificación, entrarán a una subred en la nube que contendrá las instancias de cada máquina virtual vulnerable necesaria para los ejercicios de ciberseguridad. Necesitaremos también alojar la web de la empresa y la base de datos.

El objetivo de esta parte del Proyecto es determinar los servicios Cloud necesarios para la empresa, y sentar la base de su arquitectura y funcionamiento.
