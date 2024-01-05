<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="/employee">

<html>
    <head>
        <title>EMPLOYEE DATA</title>
        <style>
            table{
                margin-left:350px;
            }
            h1{
                text-align:center;
                font-size:50px;
                background:black;
                color:white;
                letter-spacing:20px;
                padding:20px;
            }
        </style>
    </head>
    <body>
        <h1>EMPLOYEES TABLE</h1>

        <table border="4" cellpadding="25px">
        
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>SALARY</th>
                <th>JOINING DATE</th>
                <th>POSITION</th>
                
            </tr>

            <xsl:for-each select="table">
                <tr>
                    <td><xsl:value-of select="id"></xsl:value-of></td>
                    <td><xsl:value-of select="name"></xsl:value-of></td>
                    <td><xsl:value-of select="salary"></xsl:value-of></td>
                    <td><xsl:value-of select="joining-date"></xsl:value-of></td>
                    <td><xsl:value-of select="position"></xsl:value-of></td>
                </tr>
            </xsl:for-each>    
        </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>