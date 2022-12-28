<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/" >
        <html>
            <body>
                <h3> Releve RIB:    <xsl:value-of select="releve/@rib" /> </h3>
                <ul>
                    <li>date :    <xsl:value-of select="releve/dateReleve" /></li>
                    <li>solde :    <xsl:value-of select="releve/solde" /></li>
                </ul>
                <h3> Operations <xsl:value-of select="releve/operations/@dateDebut" /> -
                    <xsl:value-of select="releve/operations/@dateFin" />
                </h3>
                <ul>
                   
                      
                        <table border="1" width="80%">
                            <tr>
                                <th>type</th><th>date</th><th>montant</th><th>description</th>
                            </tr>
                            <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                                <tr>
                                    <td>
                                        <xsl:value-of select="@type" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="@date" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="@montant" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="@description" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                        
                    
                    
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>