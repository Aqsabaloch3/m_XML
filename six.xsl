<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/cd">

<html>
    <head>
        <title>CD Collection</title>
        <style>
            table{
                margin-left:510px;
            }
            h1{
                text-align:center;
            }
        </style>
    </head>
    <body>
        <h1>My CD Collection</h1>

        <table border="7" cellpadding="3px">
        
            <tr bgcolor="#8ed904" >
                <th>TITLE</th>
                <th>ARTIST</th>    
            </tr>

            <xsl:for-each select="collection">
                <tr>
                    <td><xsl:value-of select="title"></xsl:value-of></td>
                    <td><xsl:value-of select="artist"></xsl:value-of></td>
                </tr>
            </xsl:for-each>    
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>