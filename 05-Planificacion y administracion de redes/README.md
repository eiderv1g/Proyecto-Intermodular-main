# 1º ASIR -- Planificación y Administración de Redes

## Proyecto Intermodular

**Curso 25-26**

**Autora:** Olga M. Moreno Martín

------------------------------------------------------------------------

## Planificación y Administración de Redes 0370

La empresa necesita una infraestructura de red profesional, segura y
escalable.

El departamento de IT ha sido contratado para diseñar, implementar y
documentar la red interna de la empresa utilizando Cisco Packet Tracer.

### Planta baja

-   Recepción\
-   Administración\
-   Dirección\
-   Sala de servidores (CPD)

### Primera planta

-   Desarrollo\
-   Soporte técnico\
-   Aula de formación

------------------------------------------------------------------------

## Equipamiento mínimo (obligatorio)

En Packet Tracer deberás usar, como mínimo:

-   1 Router Cisco\
-   2 Switches gestionables\
-   1 Switch de acceso por planta\
-   2 PCs para cada departamento\
-   Servidores (2 ó +)\
-   1 Punto de acceso WiFi

*(Se puede añadir más equipamiento si se justifica)*

------------------------------------------------------------------------

## VLANs obligatorias

  VLAN   Nombre      Departamento     Red IP
  ------ ----------- ---------------- -----------------
  10     ADMIN       Administración   192.168.10.0/24
  20     DIR         Dirección        192.168.20.0/24
  30     DEV         Desarrollo       192.168.30.0/24
  40     SOPORTE     Soporte          192.168.40.0/24
  50     FORMACION   Aula             192.168.50.0/24
  60     SRV         Servidores       192.168.60.0/24
  99     MGMT        Gestión          192.168.99.0/24

------------------------------------------------------------------------

Debes implementar **inter-VLAN routing** usando una de estas opciones:

-   Router-on-a-stick\
-   Switch capa 3

**Obligatorio:** justificar en la documentación la opción elegida.

------------------------------------------------------------------------

## Configuración de seguridad (ACLs)

Configura ACLs para cumplir las siguientes políticas:

-   El aula de formación no puede acceder a Dirección\
-   Desarrollo no puede acceder a Administración\
-   Administración sí puede acceder a Servidores\
-   Solo la VLAN MGMT puede administrar dispositivos de red

------------------------------------------------------------------------

## Red inalámbrica

Configurar un punto de acceso con:

-   SSID_EMPRESA → VLAN empleados\
-   SSID_INVITADOS → VLAN aislada (solo salida a Internet)

------------------------------------------------------------------------

## Debes demostrar:

-   Conectividad dentro de la misma VLAN\
-   Conectividad entre VLANs permitidas\
-   Bloqueo correcto por ACLs\
-   Asignación automática de IP por DHCP

------------------------------------------------------------------------

## Entregable

En tu repositorio GitHub deberás incluir una carpeta llamada **redes**,
que debe contener:

-   Archivo `.pkt` (Cisco Packet Tracer)\

-   Y un documento PDF con:

    -   Esquema lógico y físico\
    -   Tabla de direccionamiento IP\
    -   Configuraciones relevantes\
    -   Pruebas realizadas (capturas)\
    -   Conclusiones finales

------------------------------------------------------------------------

## Rúbrica

  ------------------------------------------------------------------------------
  Nº   Criterio            Descripción                                  Puntos
  ---- ------------------- -------------------------------------------- --------
  1    Documentación y     La documentación explica correctamente los   1
       análisis            requisitos, decisiones técnicas, esquemas    
                           lógico y físico, direccionamiento IP,        
                           pruebas y conclusiones.                      

  2    Diseño lógico de la Segmentación correcta por VLANs,             1
       red                 departamentos y funciones, con estructura    
                           clara y coherente.                           

  3    Diseño de la red    Topología jerárquica bien organizada,        1
       LAN física          switches de acceso por planta, enlaces       
                           troncales correctos y CPD bien definido.     

  4    Uso del             Todo el equipamiento obligatorio está        1
       equipamiento        presente y correctamente utilizado; el       
                           adicional está justificado.                  

  5    Configuración de    Creación, nombrado y asignación correcta de  1
       VLANs               todas las VLANs obligatorias.                

  6    Direccionamiento IP Direccionamiento conforme a la tabla y       1
       y DHCP              asignación automática de IP funcional en     
                           todas las VLANs.                             

  7    Enrutamiento        Inter-VLAN routing correctamente             1
       inter-VLAN          implementado y justificado                   
                           (Router-on-a-stick o Switch L3).             

  8    Seguridad mediante  ACLs correctamente configuradas cumpliendo   1
       ACLs                todas las políticas de acceso establecidas.  

  9    Red inalámbrica     Punto de acceso con SSID de empleados e      1
                           invitados correctamente segmentados y        
                           aislados.                                    

  10   Pruebas y           Se demuestran conectividad, bloqueos por     1
       funcionamiento      ACL, DHCP y funcionamiento general de la     
                           red.                                         
  ------------------------------------------------------------------------------
