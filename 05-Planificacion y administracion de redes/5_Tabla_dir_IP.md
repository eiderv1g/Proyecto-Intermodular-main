## TABLA DE DIRECCIONAMIENTOS IP

| Dispositivo          | Interfaz    | IP/VLAN               | Descripción                    |
|:---------------------|:------------|:----------------------|:-------------------------------|
| Router (R1)          | Fa0/0.10    | 192.168.10.1/24       | Subinterfaz VLAN 10-ADMIN      |
| Router (R1)          | Fa0/0.20    | 192.168.20.1/24       | Subinterfaz VLAN 20-DIR        |
| Router (R1)          | Fa0/0.30    | 192.168.30.1/24       | Subinterfaz VLAN 30-DEV        |
| Router (R1)          | Fa0/0.40    | 192.168.40.1/24       | Subinterfaz VLAN 40-SOPORTE    |
| Router (R1)          | Fa0/0.50    | 192.168.50.1/24       | Subinterfaz VLAN 50-FORMACION  |
| Router (R1)          | Fa0/0.60    | 192.168.60.1/24       | Subinterfaz VLAN 60-SRV        |
| Router (R1)          | Fa0/0.61    | 192.168.61.1/24       | Subinterfaz VLAN 61-LAB        |
| Router (R1)          | Fa0/0.70    | 192.168.70.1/24       | Subinterfaz VLAN 70-WIFI\_EMP  |
| Router (R1)          | Fa0/0.80    | 192.168.80.1/24       | Subinterfaz VLAN 80-WIFI\_INV  |
| Router (R1)          | Fa0/0.99    | 192.168.99.1/24       | Subinterfaz VLAN 99-MGMT       |
| SwitchCorePB         | VLAN 99     | 192.168.99.2/24       | Switch gestión planta baja     |
| SwitchCoreP1         | VLAN 99     | 192.168.99.3/24       | Switch gestión planta 1        |
| SwitchAccessPB       | VLAN 99     | 192.168.99.4/24       | Switch acceso planta baja      |
| SwitchAccessP1       | VLAN 99     | 192.168.99.5/24       | Switch acceso planta 1         |
| Servidor ppal/DNS    | Fa0         | 192.168.60.10/24      | Servidor principal/DNS         |
| Servidor Web         | Fa0         | 192.168.60.20/24      | Servidor web                   |
| Servidor CTF         | Fa0         | 192.168.61.10/24      | Servidor CTF/VMs vulnerables   |

Los PCs de usuario no tendrán IP estática, ya que la recibirán del router mediante DHCP. Esto optimiza la gestión en caso de añadir PCs nuevos (por ampliación de departamentos, por ejemplo), ya que gracias al DHCP no habría que reconfigurar manualmante las IPs cada vez. Los servidores sí tendrán IP estática, ya que tienen que prestar un servicio siempre en la misma dirección IP. Lo mismo aplica para los switches y el router.
