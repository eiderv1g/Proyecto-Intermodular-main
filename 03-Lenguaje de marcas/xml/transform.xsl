<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>CyberForge - Reporte</title>
    <link rel="stylesheet" href="../styles.css"/>
</head>
<body>


<div class="portada">
    <h1>&#x1F6E1; CyberForge</h1>
    <p class="subtitulo">Reporte de gestión de plataforma</p>
    <p class="fecha">Generado: <xsl:value-of select="cyberforge/incidencias/incidencia[1]/@fecha_creacion"/></p>
</div>


<nav>
    <a href="#alumnos">Alumnos</a> |
    <a href="#empleados">Empleados</a> |
    <a href="#laboratorios">Laboratorios</a> |
    <a href="#desafios">Desafíos</a> |
    <a href="#eventos">Eventos CTF</a> |
    <a href="#matriculas">Matrículas</a> |
    <a href="#incidencias">Incidencias</a>
</nav>


<h2 id="alumnos">Alumnos</h2>
<table>
    <tr><th>ID</th><th>Nombre</th><th>Email</th><th>Teléfono</th></tr>
    <xsl:for-each select="cyberforge/alumnos/alumno">
        <xsl:sort select="nombre"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="email"/></td>
            <td><xsl:value-of select="@telefono"/></td>
        </tr>
    </xsl:for-each>
</table>


<h2 id="empleados">Empleados</h2>
<table>
    <tr><th>ID</th><th>Nombre</th><th>Email</th><th>Rol</th><th>Salario</th><th>Dept.</th></tr>
    <xsl:for-each select="cyberforge/empleados/empleado">
        <xsl:sort select="@rol"/>
        <xsl:variable name="refDept" select="@departamento"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="email"/></td>
            <td><xsl:value-of select="@rol"/></td>
            <td><xsl:value-of select="@salario"/> €</td>
            <td><xsl:value-of select="//departamento[@id=$refDept]/nombre"/></td>
        </tr>
    </xsl:for-each>
</table>


<h2 id="laboratorios">Laboratorios</h2>
<table>
    <tr><th>ID</th><th>Nombre</th><th>Sistema</th><th>Dificultad</th><th>Instructor</th></tr>
    <xsl:for-each select="cyberforge/laboratorios/laboratorio">
        <xsl:variable name="refInst" select="@instructor"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="@sistema"/></td>
            <td class="dif-{@dificultad}"><xsl:value-of select="@dificultad"/></td>
            <td><xsl:value-of select="//empleado[@id=$refInst]/nombre"/></td>
        </tr>
    </xsl:for-each>
</table>


<h2 id="desafios">Desafíos</h2>
<table>
    <tr><th>ID</th><th>Título</th><th>Tipo</th><th>Dificultad</th><th>Laboratorio</th></tr>
    <xsl:for-each select="cyberforge/desafios/desafio">
        <xsl:sort select="@dificultad"/>
        <xsl:variable name="refLab" select="@laboratorio"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="@tipo"/></td>
            <td class="dif-{@dificultad}"><xsl:value-of select="@dificultad"/></td>
            <td><xsl:value-of select="//laboratorio[@id=$refLab]/nombre"/></td>
        </tr>
    </xsl:for-each>
</table>


<h2 id="eventos">Eventos CTF</h2>
<table>
    <tr><th>ID</th><th>Nombre</th><th>Descripción</th><th>Inicio</th><th>Fin</th><th>Participantes</th></tr>
    <xsl:for-each select="cyberforge/eventos/evento">
        <xsl:sort select="@fecha_inicio"/>
        <xsl:variable name="refEv" select="@id"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="descripcion"/></td>
            <td><xsl:value-of select="@fecha_inicio"/></td>
            <td><xsl:value-of select="@fecha_fin"/></td>
            <td><xsl:value-of select="count(//participacion[@evento=$refEv])"/></td>
        </tr>
    </xsl:for-each>
</table>


<h2 id="matriculas">Matrículas</h2>

<h3>Activas</h3>
<table>
    <tr><th>ID</th><th>Alumno</th><th>Fecha</th></tr>
    <xsl:for-each select="cyberforge/matriculas/matricula[@estado='activa']">
        <xsl:sort select="@fecha_matricula"/>
        <xsl:variable name="refAl" select="@alumno"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="//alumno[@id=$refAl]/nombre"/></td>
            <td><xsl:value-of select="@fecha_matricula"/></td>
        </tr>
    </xsl:for-each>
</table>

<h3>Suspendidas</h3>
<table>
    <tr><th>ID</th><th>Alumno</th><th>Fecha</th></tr>
    <xsl:for-each select="cyberforge/matriculas/matricula[@estado='suspendida']">
        <xsl:variable name="refAl" select="@alumno"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="//alumno[@id=$refAl]/nombre"/></td>
            <td><xsl:value-of select="@fecha_matricula"/></td>
        </tr>
    </xsl:for-each>
</table>

<h3>Finalizadas</h3>
<table>
    <tr><th>ID</th><th>Alumno</th><th>Fecha</th></tr>
    <xsl:for-each select="cyberforge/matriculas/matricula[@estado='finalizada']">
        <xsl:variable name="refAl" select="@alumno"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="//alumno[@id=$refAl]/nombre"/></td>
            <td><xsl:value-of select="@fecha_matricula"/></td>
        </tr>
    </xsl:for-each>
</table>


<h2 id="incidencias">Incidencias</h2>

<h3>Abiertas</h3>
<table>
    <tr><th>ID</th><th>Título</th><th>Alumno</th><th>Empleado</th><th>Fecha</th></tr>
    <xsl:for-each select="cyberforge/incidencias/incidencia[@estado='abierta']">
        <xsl:sort select="@fecha_creacion"/>
        <xsl:variable name="refAl" select="@alumno"/>
        <xsl:variable name="refEmp" select="@empleado"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="//alumno[@id=$refAl]/nombre"/></td>
            <td><xsl:value-of select="//empleado[@id=$refEmp]/nombre"/></td>
            <td><xsl:value-of select="@fecha_creacion"/></td>
        </tr>
    </xsl:for-each>
</table>

<h3>En proceso</h3>
<table>
    <tr><th>ID</th><th>Título</th><th>Alumno</th><th>Empleado</th><th>Fecha</th></tr>
    <xsl:for-each select="cyberforge/incidencias/incidencia[@estado='en_proceso']">
        <xsl:variable name="refAl" select="@alumno"/>
        <xsl:variable name="refEmp" select="@empleado"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="//alumno[@id=$refAl]/nombre"/></td>
            <td><xsl:value-of select="//empleado[@id=$refEmp]/nombre"/></td>
            <td><xsl:value-of select="@fecha_creacion"/></td>
        </tr>
    </xsl:for-each>
</table>

<h3>Cerradas</h3>
<table>
    <tr><th>ID</th><th>Título</th><th>Alumno</th><th>Empleado</th><th>Fecha</th></tr>
    <xsl:for-each select="cyberforge/incidencias/incidencia[@estado='cerrada']">
        <xsl:variable name="refAl" select="@alumno"/>
        <xsl:variable name="refEmp" select="@empleado"/>
        <tr>
            <td><xsl:value-of select="@id"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="//alumno[@id=$refAl]/nombre"/></td>
            <td><xsl:value-of select="//empleado[@id=$refEmp]/nombre"/></td>
            <td><xsl:value-of select="@fecha_creacion"/></td>
        </tr>
    </xsl:for-each>
</table>

<footer>
    <p>CyberForge &#169; 2026 | Proyecto Intermodular 1º ASIR - Sergio Gallardo, Miriam Ocaña, Antonio Rossi</p>
</footer>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
