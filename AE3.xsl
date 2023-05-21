<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <h1>Instituto Tecnológico Edix</h1>
                <table>
                    <tr>
                        <th>Empresa</th>
                        <td><xsl:value-of select="/ite/empresa" /></td>
                    </tr>
                    <tr>
                        <th>Teléfono</th>
                        <td><xsl:value-of select="/ite/telefono" /></td>
                    </tr>
                </table>
                <h2>Profesores</h2>
                <ul>
                    <xsl:for-each select="/ite/profesores/profesor">
                        <li><xsl:value-of select="nombre" /></li>
                    </xsl:for-each>
                </ul>
                <h2>Director</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <td><xsl:value-of select="/ite/director/nombre" /></td>
                    </tr>
                    <tr>
                        <th>Despacho</th>
                        <td><xsl:value-of select="/ite/director/despacho" /></td>
                    </tr>
                </table>
                <h2>Jefe de Estudios</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <td><xsl:value-of select="/ite/jefe_estudios/nombre" /></td>
                    </tr>
                    <tr>
                        <th>Despacho</th>
                        <td><xsl:value-of select="/ite/jefe_estudios/despacho" /></td>
                    </tr>
                </table>
                <h2>Ciclos</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="/ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="nombre" /></td>
                            <td><xsl:value-of select="grado" /></td>
                            <td><xsl:value-of select="año" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Enlaces</h2>
                <ul>
                    <li><a href="{/ite/@web}">Sitio web del instituto</a></li>
                    <li><a href="https://www.google.com">Enlace externo a Google</a></li>
                </ul>
                <h2>Formulario de contacto</h2>
                <form>
                Nombre:<br/>
               <input type="text" name="nombre" /><br/>
               Email:<br/>
               <input type="email" name="email" /><br/>
               Mensaje:<br/>
               <input type="text" name="mensaje" /><br/>
               <input type="submit" value="Enviar"/>
               </form>
            </body>
        </html>
    </xsl:template>

    
</xsl:stylesheet>
