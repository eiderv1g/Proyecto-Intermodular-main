# Informe del Proyecto: Lenguajes de Marcas

**Proyecto:** CyberForge — Centro de formación en ciberseguridad  

**Módulo:** Lenguajes de Marcas y Sistemas de Gestión de Información 

**Curso:** 25-26 | 1º ASIR

**Equipo**: Sergio Gallardo Marchal, Miriam Ocaña Pérez-Cerdá, Antonio Rossi Besabé

---

En este apartado del Proyecto Intermodular simularemos el tratamiento de un archivo XML, que puede actuar como un volcado o un backup de la Base de Datos de CyberForge (la misma que se encuentra en el apartado de la asignatura Gestión de Bases de Datos). Dicho XML se valida con un DTD -y se demuestra la fiabilidad del DTD con un datos_error.xml que no pasa la validación-. También se transforma en un .html mediante un .xsl, más adelante en este informe se incluyen los comandos necesarios para la transformación. 

Hemos añadido el reporte.html de manera adicional al proyecto, y el .css que mejora la estética al desplegarlo en navegador, ya sea del XML o del HTML. También se incluye un .json con los mismos datos y estructura del XML, y por tanto, de la base de datos. Para finalizar, añadimos una web extra como material de práctica y apoyo para CyberForge.

## 1. Estructura de ficheros

```
/xml/
  datos.xml         
  datos_error.xml    
  modelo.dtd         
  transform.xsl     

/css/
  styles.css          

/json/
  datos.json          

/docs/
  dtd_valid_and_dtd_error.png
  xsl_transform.png
  Informe.md

/web_extra/
  index.html
  style.css

```

## 2. Qué datos representa el XML

El archivo `datos.xml` es una exportación estructurada de la base de datos de **CyberForge**. Contiene exactamente las mismas entidades del modelo relacional SQL correspondiente al proyecto de la asignatura Gestión de Bases de Datos (también en este repositorio), organizadas en jerarquía XML:

| Sección XML      | Tabla SQL origen         | Descripción                                             |
|------------------|--------------------------|---------------------------------------------------------|
| `<alumnos>`      | `Alumno`                 | 9 alumnos con nombre, email y teléfono                  |
| `<departamentos>`| `Departamento`           | 4 departamentos con tipo de hardware                    |
| `<empleados>`    | `Empleado`               | 6 empleados con rol, salario y departamento asignado    |
| `<laboratorios>` | `Laboratorio`            | 4 labs con sistema operativo, dificultad e instructor   |
| `<desafios>`     | `Desafio`                | 4 desafíos con tipo y dificultad, asociados a un lab    |
| `<eventos>`      | `Evento_CTF`             | 3 eventos CTF con fechas de inicio y fin                |
| `<matriculas>`   | `Matricula`              | 9 matrículas con estado (activa/suspendida/finalizada)  |
| `<participaciones>`| `Alumno_Evento`        | Relación N:M alumno↔evento                              |
| `<progresos>`    | `Alumno_Desafio`         | Progreso de alumno en desafío, con fecha y completado   |
| `<incidencias>`  | `Incidencia`             | 6 incidencias con estado (abierta/en_proceso/cerrada)   |

Las claves primarias numéricas de SQL se han convertido a IDs con prefijo semántico (`a1–a9`, `e1–e6`, `lab1–lab4`, etc.) para cumplir con el tipo `ID` del DTD. Las relaciones foráneas se representan con `IDREF`.

---

## 3. Cómo se valida con el DTD

### Validación correcta

```bash
xmllint --noout --dtdvalid xml/modelo.dtd xml/datos.xml
```

Sin mensajes de error = XML válido. Código de salida: `0`.

### Validación fallida (demostración)

El archivo `xml/datos_error.xml` contiene **tres errores deliberados**:

| Error | Línea | Descripción |
|-------|-------|-------------|
| 1 | ~25 | `rol="hacker"` → no está en la enumeración `(instructor\|soporte\|admin)` |
| 2 | ~32 | `dificultad="extreme"` → no está en la enumeración `(easy\|medium\|hard)` |
| 3 | ~60 | `empleado="e99"` → IDREF apunta a un ID inexistente |

```bash
xmllint --noout --dtdvalid xml/modelo.dtd xml/datos_error.xml
```

Salida esperada:
```
validity error : Value "hacker" for attribute rol ... is not among the enumerated set
validity error : Value "extreme" for attribute dificultad ... is not among the enumerated set
validity error : IDREF attribute empleado references an unknown ID "e99"
Document does not validate
```

---

## 4. Cómo ejecutar la transformación XSLT

### Opción A — Firefox (local)

Abrir `xml/datos.xml` directamente en **Firefox**. El navegador aplica `transform.xsl` automáticamente gracias a la processing instruction del XML:

```xml
<?xml-stylesheet type="text/xsl" href="../transform.xsl"?>
```

>  Chrome bloquea XSLT local por seguridad. Usar Firefox o la opción B.

### Opción B — Terminal con xsltproc

```bash
xsltproc xml/transform.xsl xml/datos.xml > docs/reporte.html
```

Abrir `docs/reporte.html` en cualquier navegador. Incluimos una copia del reporte HTML en esta misma carpeta /docs, y una captura de pantalla de la creación del mismo con el comando anterior, en esta misma carpeta.

### Contenido del HTML generado

- Portada con título y fecha
- Barra de navegación con anclas a cada sección
- Tabla de **Alumnos** ordenada por nombre
- Tabla de **Empleados** ordenada por rol, con departamento resuelto por IDREF
- Tabla de **Laboratorios** con dificultad coloreada e instructor resuelto
- Tabla de **Desafíos** con laboratorio resuelto
- Tabla de **Eventos CTF** con contador de participantes (calculado con `count()`)
- **Matrículas** separadas en tres tablas: activas / suspendidas / finalizadas
- **Incidencias** separadas en tres tablas: abiertas / en proceso / cerradas

---

## 5. Dónde ver la evidencia

En esta carpeta **/docs** se incluyen dos **capturas de pantalla**:

**xsl_transform.png** demuestra la generación de un reporte html usando xsltproc

**dtd_valid_and_dtd_error.png** demuestra la validación DTD del datos.xml, y la no-validación de datos_error.xml .

## 6. Cómo encaja en el proyecto

El conjunto XML/DTD/XSLT actúa como **capa de exportación y reporte** de CyberForge:

- **Exportación desde la BD:** La aplicación puede volcar sus tablas a `datos.xml` y `datos.json` para auditoría, backup o interoperabilidad con otros sistemas.
- **Reporte navegable:** El HTML generado por XSLT puede servirse como informe interno desde el panel de administración (enlace estático o tarea de build).
- **JSON equivalente:** `datos.json` mantiene los mismos nombres de campo que el XML (`alumno`, `empleado`, `estado`…) para consumo directo desde APIs REST.
- **Validación estructural:** El DTD garantiza que cualquier exportación futura cumpla las mismas restricciones de integridad definidas en el modelo relacional (enumeraciones de estados, roles, dificultades).

---

## 7. Portal web adicional

De forma adicional y complementaria a los requerimientos del proyecto, y como forma de ampliar nuestra práctica y la simulación de CyberForge, se añade un directorio /web_extra/ que contiene un .html y un .css con una posible web para la empresa.

     
```
