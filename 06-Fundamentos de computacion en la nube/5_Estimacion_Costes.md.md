## Estimación de Costes

La siguiente estimación se ha realizado con la **calculadora oficial de AWS**.

### Desglose por servicio

![Estimación de costes por servicio](imagenes/estimacion_costes.png)

### Coste total mensual y anual

![Coste total](imagenes/costes_total.png)

### Servicios con Free Tier o descuentos

- **EC2 t2.micro:** 750 h gratuitas al mes durante 12 meses (válido para el servidor web).
- **S3:** los primeros 5 GB de almacenamiento son siempre gratuitos.
- **CloudWatch:** métricas básicas y 10 alarmas gratuitas de forma permanente.
- **IAM, VPC, Security Groups, CloudTrail:** sin coste adicional.

### Consideraciones

El coste de las **10 instancias EC2 t3.medium** dedicadas a las VMs vulnerables del laboratorio (**192,72 USD**) constituye el gasto más considerable. Sin embargo, esta estimación asume las instancias encendidas 24/7. En la práctica, el LAB solo funciona durante las sesiones de formación, con accesos puntuales de alumnos online. En el escenario real, el coste total sería **sensiblemente inferior**.
