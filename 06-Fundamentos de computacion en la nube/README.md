# MPO – Fundamentos de Computación en la Nube 

## ¿Qué se te pide en este módulo dentro del Proyecto Intermodular?

En el módulo de Fundamentos de Computación en la Nube, el objetivo no es que montes una infraestructura compleja, sino que seas capaz de analizar y diseñar una arquitectura cloud básica para tu proyecto.

Aquí se evaluará principalmente:

- Tu capacidad para investigar soluciones en la nube  
- Que entiendas cómo se desplegaría tu proyecto en cloud  
- Que seas capaz de proponer una arquitectura sencilla  
- Que tengas una idea aproximada del coste de esa infraestructura  

Dicho de forma simple: no se evalúa que lo despliegues todo en cloud, sino que sepas cómo se desplegaría en un entorno profesional.

---

## ¿Qué debe incluir tu trabajo?

### 1. Elección de proveedor Cloud

Debes investigar al menos un proveedor de cloud donde podría desplegarse tu proyecto.

Puede ser, por ejemplo:

- AWS  
- Google Cloud  
- Microsoft Azure  
- DigitalOcean  
- Vercel / Netlify (si el proyecto es web sencillo)  

Debes explicar brevemente:

- Qué proveedor has elegido  
- Por qué lo has elegido  
- Qué ventajas tiene para tu proyecto  

---

### 2. Arquitectura cloud propuesta

Debes explicar cómo funcionaría tu proyecto en la nube.

No hace falta un diseño complejo. Debe incluir al menos:

- Dónde se ejecutaría la aplicación  
- Dónde estaría la base de datos  
- Cómo accederían los usuarios  

Puedes representarlo con un esquema sencillo.

Ejemplo de arquitectura simple:

Usuario → Servidor web / aplicación → Base de datos  

O en cloud:

Usuario → Load Balancer / servidor web → Instancia de aplicación → Base de datos gestionada  

Un diagrama simple es suficiente.

---

### 3. Servicios cloud utilizados

Debes indicar qué servicios cloud utilizarías para tu proyecto.

Por ejemplo:

- Máquina virtual / instancia (EC2, Compute Engine, etc.)  
- Base de datos gestionada  
- Almacenamiento  
- Hosting web  
- Contenedores (si aplica)  

No es necesario utilizar muchos servicios. Lo importante es entender qué hace cada uno.

---

### 4. Estimación de costes

Debes hacer una estimación aproximada del coste mensual de tu arquitectura.

Para ello puedes usar:

- Calculadoras de precios de AWS / Azure / Google Cloud  
- O estimaciones básicas de servicios similares  

Debes indicar:

- Qué recursos usarías  
- Coste aproximado mensual  
- Si existe un nivel gratuito (free tier)  

No se busca precisión exacta, sino entender el coste de operar un sistema en cloud.

---

## Entregables

En GitHub, dentro de la carpeta del proyecto:

`/docs/cloud`

Debes incluir:

- Documento de investigación del proveedor cloud  
- Explicación de la arquitectura propuesta  
- Diagrama simple de arquitectura  
- Estimación de costes aproximada  

El documento puede estar en:

- Markdown  
- PDF  
- Documento estructurado sencillo  

---

## Rúbrica

| Criterio                          | Descripción                                                       | Puntos |
|----------------------------------|-------------------------------------------------------------------|--------|
| Investigación del proveedor cloud | Explicación clara del proveedor elegido                          | 2      |
| Arquitectura propuesta            | Explicación comprensible de cómo funcionaría el sistema           | 3      |
| Servicios cloud                   | Identificación correcta de los servicios utilizados               | 2      |
| Estimación de costes              | Aproximación razonable del coste del sistema                      | 2      |
| Organización y claridad           | Documento claro, ordenado y comprensible                          | 1      |