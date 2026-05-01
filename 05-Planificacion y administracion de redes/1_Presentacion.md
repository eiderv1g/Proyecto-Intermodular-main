# PROYECTO INTERMODULAR ASIR
## PLANIFICACIÓN Y ADMINISTRACIÓN DE REDES

**Equipo:** Sergio Gallardo Marchal, Miriam Ocaña Pérez-Cerdá, Antonio José Rossi Bersabé

---

## PRESENTACIÓN

Para este proyecto hemos decidido simular el funcionamiento de un centro presencial de formación y coworking para estudiantes de ciberseguridad. Dicha especialización requiere un tratamiento especialmente cuidadoso de la planificación de redes, ya que los servidores van a albergar, entre otras cosas, máquinas virtuales vulnerables que deben estar bien aisladas.

El resto de la planificación se ha hecho conforme a las directrices generales del proyecto, con oficinas en la planta baja dedicadas a administración, dirección y una sala de servidores que alojará dos VLANs: la 60 para servidores generales y la 61 (LAB) para el server que contiene las VMs vulnerables, además de una recepción que funciona con el wifi de empleados (VLAN 70), y hace las veces de espacio de coworking, con otro wifi de invitados (VLAN 80) para los clientes y alumnos.

En la planta superior tendremos el aula de formación, con instalaciones para realizar CTFs (competiciones Capture-the-Flag de hacking ético), con 10 PCs, una sala de desarrollo para el equipo encargado de la web y la creación de retos y ejercicios, y una sala de soporte técnico. Esta sala será la única que tenga acceso a la VLAN de mantenimiento (VLAN 99), donde se encuentra el equipo de red.
