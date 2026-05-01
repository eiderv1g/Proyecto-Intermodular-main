## CAPTURAS DE PANTALLA DE LAS CONFIGURACIONES PRINCIPALES

---

### Definición de VLANs en uno de los switches (se hizo del mismo modo en los cuatro):

![Definición de VLANs en switch](img/cfg_vlans_switch.png)

---

### Relación de cada interfaz del switch con su VLAN correspondiente (en la imagen, las correspondientes a VLAN60-SRC y VLAN 61-LAB):

![Interfaces VLAN60 y VLAN61](img/cfg_interfaces_vlan60_61.png)

---

### Configuración de los puertos trunk de uno de los switches:

![Configuración puertos trunk](img/cfg_trunk_ports.png)

---

### Configuración ip de uno de los switches, con su anexión a la VLAN99-MGMT:

![Configuración IP switch VLAN99](img/cfg_switch_ip_vlan99.png)

---

### Configuración del router y creación de las VLANs mediante encapsulamiento:

![Configuración router encapsulamiento](img/cfg_router_encapsulamiento.png)

---

### Configuración del DHCP y las direcciones gateway y de server DNS de una VLAN, en este caso la 20-DIR:

![Configuración DHCP VLAN20-DIR](img/cfg_dhcp_vlan20.png)

El resto de configuraciones (las referentes a las ACLs) se encuentran en su apartado correspondiente.

---

## PRUEBAS DE CONECTIVIDAD Y BLOQUEO

---

### Ping entre PCs de la misma VLAN (ADMIN1 y ADMIN2):

![Ping misma VLAN ADMIN1-ADMIN2](img/test_ping_misma_vlan.png)

---

### Ping entre VLANs diferentes con acceso permitido (ADMIN-SRV):

![Ping ADMIN a SRV](img/test_ping_admin_srv.png)

---

### Accesos denegados: FORMACION-DIR

![Acceso denegado FORMACION-DIR](img/test_denegado_formacion_dir.png)

---

### Accesos denegados: DEV-ADMIN

![Acceso denegado DEV-ADMIN](img/test_denegado_dev_admin.png)

---

### Acceso TELNET desde VLAN40-SOPORTE hacia VLAN99-MGMT, hacia el router y hacia uno de los switches:

![TELNET SOPORTE a MGMT](img/test_telnet_soporte_mgmt.png)

---

### Acceso denegado: telnet hacia VLAN99-MGMT desde el resto de VLANs:

![Acceso denegado TELNET desde otras VLANs](img/test_denegado_telnet_otros.png)

---

### El servidor que aloja las máquinas vulnerables (en la VLAN61-LAB) no tiene conectividad de salida con el resto de la red:

![ServerCTF sin conectividad de salida](img/test_denegado_ctf_serverctf.png)

---

### Las salas de formación y desarrollo sí tienen acceso al servidor CTF:

![Acceso CTF desde DEV1](img/test_ctf_dev1.png)

![Acceso CTF desde FORM3](img/test_ctf_form3.png)

---

### El resto de salas NO tienen acceso al servidor CTF:

![Acceso denegado CTF desde DIR](img/test_denegado_ctf_dir.png)

![Acceso denegado CTF desde ADMIN](img/test_denegado_ctf_admin.png)

---

### Los clientes del espacio coworking que usan el wifi de invitados (VLAN80) tienen conexión entre sí, pero no con el resto de la red.

![Test coworking WiFi invitados](img/test_coworking_wifi_inv.png)
