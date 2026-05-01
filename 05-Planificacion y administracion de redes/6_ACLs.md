## ACCESS CONTROL LISTS

Las políticas de acceso a implementar son las mismas que se piden en la guía del proyecto, y alguna extra para adecuarlo a este emplazamiento concreto. Se adjuntan capturas de la configuración de cada ACL.

---

### El aula de formación NO PUEDE acceder a dirección.

![ACL BLOCK-FORMACION-DIR](img/acl_block_formacion_dir.png)

---

### Desarrollo NO PUEDE acceder a administración.

![ACL BLOCK-DEV-ADMIN](img/acl_block_dev_admin.png)

---

### Administración SÍ PUEDE acceder a servidores.

![Ping ADMIN a SRV (1)](img/acl_admin_srv_ping.png)

![Ping ADMIN a SRV (2)](img/acl_admin_srv_ping2.png)

---

### Solo la VLAN99-MGMT puede administrar dispositivos de red.

![ACL MGMT-ONLY standard](img/acl_mgmt_only_standard.png)

El comando `line vty 0 4` aplica esta norma a todos los switches, para restringir el acceso SSH/Telnet a la VLAN99.

---

### La VLAN61-LAB está aislada del resto de servidores y solo es accesible desde formación, desarrollo y soporte, ya que alberga máquinas vulnerables.

![ACL PROTECT-LAB](img/acl_protect_lab.png)

---

### La VLAN61-LAB solo puede emitir tráfico hacia las VLAN de desarrollo, soporte y formación, para evitar que una VM comprometida pueda afectar al resto de la red.

Esta parte debe ser tratada con cuidado en la implantación de sistemas operativos virtuales y firewalls al servidor y a los dispositivos que tienen acceso.

![ACL ISOLATE-LAB](img/acl_isolate_lab.png)

---

### Aislamiento de la VLAN80 del wifi de invitados del resto de la red.

![ACL BLOCK-INVITADOS](img/acl_block_invitados.png)

---

### Solo la VLAN40-SOPORTE tiene acceso para acceder a los dispositivos de red de la VLAN99-MGMT.

![ACL MGMT solo SOPORTE](img/acl_mgmt_soporte_only.png)

---

### Contraseña de acceso TELNET hacia el router en la VLAN99-MGMT (solo posible desde VLAN40-SOPORTE).

![Contraseña TELNET router](img/acl_telnet_router_password.png)

---

### Contraseña de acceso TELNET hacia uno de los switches en la VLAN99-MGMT.

Se añade el comando `transport input telnet` para garantizar la estabilidad de la conexión. Se realiza una configuración idéntica en los cuatro switches:

![Contraseña TELNET switch](img/cfg_telnet_switch_password.png)
