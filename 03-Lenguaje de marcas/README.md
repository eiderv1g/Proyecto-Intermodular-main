# Módulo: Lenguajes de Marcas y Sistemas de Gestión de Información

## ¿Qué se te pide en este módulo dentro del Proyecto Intermodular?

En este módulo vas a crear una parte muy habitual en proyectos reales: gestión y validación de información estructurada.

Dentro del Proyecto Intermodular, tu objetivo será:

- Diseñar un XML que represente datos reales de tu aplicación (por ejemplo: usuarios, productos, pedidos, reservas, informes, exportaciones…).  
- Diseñar un XSD para validar ese XML.  
- Validar correctamente el XML con el XSD y dejar evidencia de que funciona.  
- Integrarlo con el proyecto: que ese XML tenga sentido y esté conectado con tu aplicación y tu base de datos (aunque sea como exportación/importación o documentación de datos).  

---

## ¿Qué debe incluir tu trabajo?

### 1. Un XML “real” del proyecto

El XML debe representar información coherente con tu aplicación. Por ejemplo:

- Listado de productos  
- Pedidos con sus líneas  
- Reservas con fecha/hora/cliente  
- Usuarios y roles  
- Reporte de incidencias  
- Catálogo / inventario  

Debe tener:

- Estructura clara (jerarquía lógica)  
- Datos realistas  
- Identificadores coherentes  

---

### 2. Un XSD que valide tu XML

Tendrás que crear un XSD que compruebe correctamente:

- Estructura (qué elementos pueden aparecer y dónde)  
- Tipos de datos (string, integer, date, etc.)  
- Restricciones (por ejemplo: valores mínimos, patrones, longitudes, enumeraciones si aplica)  
- Cardinalidades (mínimo/máximo de repeticiones)  

El objetivo es que el XSD no sea “de adorno”: debe validar de verdad.

---

### 3. Validación demostrada

Debes aportar evidencia de validación:

- Captura de pantalla de validación correcta o  
- Log / salida / evidencia del IDE o herramienta utilizada  

Y (opcional pero muy valorado):

- Un ejemplo de XML incorrecto que falle la validación, para demostrar que el XSD controla.  

---

### 4. Integración con el proyecto

Tienes varias formas válidas de integrarlo (elige una):

- Exportación de datos desde tu app/bbdd hacia XML  
- Importación de XML a la app/bbdd (aunque sea parcial)  
- XML como formato de intercambio / reporte  
- XML como configuración o estructura documental del sistema  

Lo importante: que no sea un XML suelto sin relación con el proyecto.

---

## Entregables

En tu repositorio GitHub deberás incluir una carpeta tipo `/xml` o `/docs/xml` con:

- `datos.xml` (o el nombre que corresponda)  
- `esquema.xsd`  
- Evidencia de validación (captura o log en `/docs`)  
- README breve explicando:
  - Qué datos representa el XML  
  - Cómo se valida  
  - Cómo encaja dentro de tu proyecto  

---

## Rúbrica – Lenguajes de Marcas (0373)

| Criterio                        | Descripción                                                                 | Puntos |
|--------------------------------|-----------------------------------------------------------------------------|--------|
| Diseño del XML                 | Estructura clara, coherente, datos realistas y bien organizados            | 2,5    |
| Diseño del XSD                 | XSD correcto, bien estructurado, tipos adecuados                           | 3      |
| Restricciones y validaciones   | Cardinalidades, tipos, restricciones (mínimos, patrones, enumeraciones)    | 2      |
| Evidencia de validación        | Se demuestra que valida correctamente (y opcionalmente que falla)          | 1,5    |
| Integración con el proyecto    | Relación real con la aplicación/bbdd                                       | 0,5    |
| Organización y documentación   | GitHub ordenado, nombres claros, README y estructura                       | 0,5    |
