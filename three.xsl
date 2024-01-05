<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/class">

        <html>
            <head>
                <title>XSL FILE</title>
                <style>
                    body{
                        background:black;
                        color:white;
                    }
                    table{
                        margin-left:450px;
                        box-shadow:3px 3px 5px 4px cyan;
                    }
                    h2{
                        text-align:center;
                        background:white;
                        color:black;
                        padding:20px;
                        letter-spacing:10px;
                        font-weight:bold;
                        text-shadow:3px 3px 3px cyan;
                    }
                </style>
            </head>
            <body>
                <h2>XSL WORK</h2>

                <table border="2" cellspacing="20px" cellpadding="25px">
                    <tr>
                        <th bgcolor="teal" colspan="4">STUDENTS DATA</th>
                    </tr>

                    <tr bgcolor="gray">
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>NUMBER</th>
                        <th>GRADE</th>
                    </tr>

                    <xsl:for-each select="student">
                        <tr>
                            <td><xsl:value-of select="name"></xsl:value-of></td>
                            <td><xsl:value-of select="age"></xsl:value-of></td>
                            <td><xsl:value-of select="number"></xsl:value-of></td>
                            <td><xsl:value-of select="grade"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>    
                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>