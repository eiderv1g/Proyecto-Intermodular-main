## Servicios Cloud Utilizados

| Servicio | Descripción |
|---|---|
| **IAM** (Identity & Access Management) | Mecanismo de autenticación y control de accesos mediante roles y permisos. Permite separar roles de mantenimiento, desarrollo, profesores, alumnos presenciales y alumnos online. |
| **EC2** (Elastic Cloud Computing) | Permite crear instancias individuales para cada VM vulnerable en la subred LAB, encendiéndolas o apagándolas a demanda. Tipo de instancia: `t3.medium`. |
| **S3** (Simple Storage Service) | Almacenamiento de backups, materiales de formación, writeups de ejercicios de hacking y herramientas descargables. |
| **NLB** (Network Load Balancer) | Variante del ELB elegida frente al ALB porque opera en capa 4 de OSI y maneja cualquier protocolo (SSH, VNC…). Actúa como reverse proxy y balanceador de carga. Combinado con Auto Scaling, levanta instancias bajo demanda sin intervención manual. |
| **RDS** (Relational Database Service) | Crea, opera y escala la base de datos de la empresa (alumnos, profesores, contabilidad). Motor: MySQL. |
| **VPC** (Virtual Private Cloud) | Red privada aislada, dividida en subredes para las distintas funciones: subred LAB, subred de base de datos y subred de web pública. |
| **VPN Gateway** | Proporciona conexión cifrada entre la red local del centro y la VPC de AWS. |
| **CloudWatch** | Monitorización de logs, alertas y métricas de instancias EC2 y accesos. También útil como recurso formativo para los alumnos. |
| **Route 53** | Gestiona el dominio de la empresa. |
| **Security Groups** | Funciona como firewall (equivalente a las ACLs del router local). Filtra tráfico por IPs y puertos en conjunto con el NLB. |
| **CloudTrail** | Permite realizar auditorías de gestión, conformidad, operaciones y riesgos de la cuenta AWS. |
