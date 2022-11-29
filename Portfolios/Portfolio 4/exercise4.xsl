<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>Student list</h2>
                <table border = "1">
                    <tr bgcolor = "lightblue">
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>GRADE</th>
                    </tr>
                    <xsl:for-each select="CLASS/STUDENT">
                        <xsl:if test="GRADE = 'A' ">
                            <tr>
                                <td><xsl:value-of select="NAME"/></td>
                                <td><xsl:value-of select="AGE"/></td>
                                <td><xsl:value-of select="GRADE"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>