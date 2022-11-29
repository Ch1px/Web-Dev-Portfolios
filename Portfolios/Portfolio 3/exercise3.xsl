<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>Student list</h2>
                <table border = "1">
                    <tr bgcolor = "lightgreen">
                        <th>NAME</th>
                        <th>AGE</th>
                    </tr>
                    <xsl:for-each select="CLASS/STUDENT">
                        <tr>
                            <td><xsl:value-of select="NAME"/></td>
                            <td><xsl:value-of select="AGE"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>