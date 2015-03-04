<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:gcse="nothing"
    exclude-result-prefixes="xs tei" version="2.0">
    

    <xsl:output method="xml" name="xml" indent="yes"/>
    <!--
    <xsl:variable name="inscription">
        <xsl:for-each select="//item">
            <xsl:sequence select="concat('../edr/',.)"/>
        </xsl:for-each>
    </xsl:variable>-->
    
<xsl:template match="item">
    <xsl:result-document href="{concat('inscriptions/',.)}" format="xml" exclude-result-prefixes="#all"
        omit-xml-declaration="yes">
       <xsl:copy-of select="document(concat('../edr/',.))"/> 
    </xsl:result-document>
   </xsl:template> 
</xsl:stylesheet>