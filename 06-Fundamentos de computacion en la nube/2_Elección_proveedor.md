## Elección del Proveedor Cloud

Hemos elegido **AWS** como proveedor, debido a su amplia gama de servicios, a su amplia documentación y facilidad formativa, y a que es el proveedor con mayor adopción en el sector de la ciberseguridad ofensiva y defensiva. Otras empresas con objetivos similares (HackTheBox, TryHackMe, PentesterLab…) también basan sus entornos vulnerables en sistemas de AWS. Además, muchas certificaciones de ciberseguridad (CEH, OSCP, AWS SS…) requieren conocer su funcionamiento.

Además de los servicios concretos e individuales que AWS aportará a nuestra empresa (EC2, S3, IAM, NLB…), nos decantamos por este proveedor por otros detalles:

- **AWS Academy Learner Lab:** permite practicar con una cuenta real de AWS sin coste adicional, por lo que podríamos implementarlo también en la formación de los alumnos, además de usarlo para simulaciones y cálculos de nuestra propia red.

- **Región eu-west-1 (Irlanda):** ofrece baja latencia desde España y cumple con el RGPD europeo, imprescindible para el tratamiento de datos de los alumnos. España tiene su propia región eu-south-2, pero es mucho más joven (inaugurada en 2023) y aún no tiene tantos servicios como eu-west-1, inaugurada en 2007 (fue la primera región europea). La de Irlanda cumple con todas nuestras necesidades y tiene una infraestructura mucho más madura. La diferencia de latencia es mínima (20-30 ms Irlanda vs. 10-15 ms España), y en la región irlandesa tenemos el doble de servicios disponibles (400+, frente a los 190 de España), lo cual resulta interesante de cara a una escalabilidad más sencilla.

- **AWS Free Tier:** cubre algunos servicios básicos durante 12 meses, reduciendo el coste final del proyecto durante un tiempo.
