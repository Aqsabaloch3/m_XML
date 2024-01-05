<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/bank">

    <html>
        <head>
            <title>BANK DATA</title>
            <style>
                table{
                    margin-left:530px;
                    box-shadow:3px 3px 5px 4px gray;
                    margin-top:80px;
                }
                h1{
                    text-align:center;
                    background:gray;
                    color:black;
                    padding:20px;
                    letter-spacing:10px;
                    font-weight:bold;
                    
                }
            </style>
        </head>
        <body>
            <h1>BANK EMPLOYEES TABLE</h1>

            <table border="1" cellspacing="10px" cellpadding="20px">
            
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>SALARY</th>
                    
                </tr>

                <xsl:for-each select="employee">
                    <tr>
                        <td><xsl:value-of select="id"></xsl:value-of></td>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="salary"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>    
            </table>
        </body>
    </html>

    </xsl:template>

</xsl:stylesheet>