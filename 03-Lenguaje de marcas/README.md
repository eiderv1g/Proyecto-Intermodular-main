# Proyecto Intermodular — Curso 25-26

**Módulo:** Lenguajes de Marcas y Sistemas de Gestión de Información (0373)  
**Autora:** Olga M. Moreno Martín

---

## ¿Qué se te pide en este módulo?

En este módulo vas a crear una parte muy habitual en proyectos reales: **gestión y validación de información estructurada**.

Dentro del Proyecto Intermodular, tu objetivo será:

> Crear y validar información estructurada mediante un XML realista, un DTD que valida su estructura, una transformación XSLT que genera un HTML, estilos CSS aplicados al reporte y un JSON equivalente.

---

## ¿Qué debe incluir tu trabajo?

### 1) Un XML "real" del proyecto

El XML debe representar información coherente con tu app. Ejemplos (elige uno o crea el tuyo propio):

- **Reservas** de aulas (fecha/hora, aula, profesor/a, estado)
- **Pedidos** con líneas de detalle
- **Usuarios y roles**
- **Catálogo / inventario**
- **Incidencias** y su ciclo
- **Redes** y sus equipos y dispositivos

**Requisitos del XML:**

- Jerarquía lógica clara
- Datos realistas (no lorem ipsum)
- Identificadores coherentes (usa ID/IDREF)
- **PI opcional** para XSLT:
  ```xml
  <?xml-stylesheet type="text/xsl" href="../xml/transform.xsl"?>
  ```
- **DOCTYPE** que apunte al DTD externo:
  ```xml
  <!DOCTYPE reservas SYSTEM "modelo.dtd">
  ```

---

### 2) Un DTD que valide tu XML

Debes declarar:

- Estructura de elementos (qué puede aparecer y dónde)
- Cardinalidades (`?`, `*`, `+`)
- Tipos de atributos: `ID`, `IDREF`, `CDATA`, enumeraciones (`...`)
- Restricciones mediante enumeraciones (estados, roles, etc.)

El DTD **debe detectar errores reales** (elementos fuera de lugar, valores no permitidos, ids repetidos, etc.).

---

### 3) Transformación XSLT → HTML (reporte)

Crea un XSLT que genere un HTML con:

- Portada/título, fecha de generación
- Tabla(s) o secciones con los datos relevantes
- **Filtros/agrupaciones** simples (p. ej., por estado)
- Enlaces o anclas para navegar entre secciones

---

### 4) Hoja de estilo CSS

Aplica **estilos** al HTML generado:

- Tipografías, colores, espaciado
- Tablas legibles
- Diseño responsive básico
- Podéis usar Bootstrap 5 si queréis

---

### 5) JSON equivalente

- Exporta un **JSON** que represente la **misma información** o un subconjunto fundamental
- Mantén **nombres de campos consistentes** con el XML

---

### 6) Validación demostrada

Incluye evidencia:

- **DTD**: captura de pantalla o log de validación correcta.  
  Opciones:
  - `xmllint --noout --dtdvalid xml/modelo.dtd xml/datos.xml`
  - IDE/Editor (o validador online) con screenshot
- *(Muy valorado)* Un **XML incorrecto** que falle y demuestre que tu DTD controla

---

### 7) Integración con el proyecto

Elige una (o más):

- **Exportación** desde la BBDD/app a `datos.xml` y `datos.json`
- **Importación** parcial desde XML/JSON a tu app
- **XML + XSLT** como **reporte** navegable desde tu app (link o tarea de build)
- XML como **documentación de estructuras** (catálogos, configuración)

Debe quedar claro que **no** es un XML suelto.

---

## Estructura de entregables (en tu repo)

```
/xml/
  datos.xml
  modelo.dtd
  transform.xsl

/css/
  estilo.css

/json/
  datos.json

/docs/
  validacion_dtd.png
  transform_html.png
  (opcional) error_dtd.png
  Informe.md
```

### El `Informe.md` debe explicar:

- Qué datos representa el XML
- Cómo se valida con el DTD (comandos o pasos)
- Cómo ejecutar la transformación XSLT y visualizar el HTML
- Dónde ver la evidencia
- Cómo encaja en tu proyecto (export/import/reporte)

---

## Rúbrica de Evaluación

| Criterio | Descripción | Puntos |
|---|---|:---:|
| **Diseño del XML** | Estructura clara, coherente, datos realistas y bien organizados | 2,5 |
| **Diseño del DTD** | DTD correcto, bien estructurado, tipos y estructura adecuados | 3 |
| **Restricciones y validaciones** | Cardinalidades, tipos, enumeraciones y control de errores | 2 |
| **Evidencia de validación** | Pruebas de validación correcta y opcionalmente fallida | 1,5 |
| **Integración con el proyecto** | Relación real con la app o base de datos | 0,5 |
| **Organización y documentación** | GitHub ordenado, README y archivos claros | 0,5 |
| | **Total** | **10** |
