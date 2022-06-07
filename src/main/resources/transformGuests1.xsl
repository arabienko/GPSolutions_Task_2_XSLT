<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <Guests>
            <xsl:apply-templates/>
        </Guests>
    </xsl:template>

    <xsl:template match="Lists">
        <xsl:for-each select="Names/Nameitem">
            <xsl:variable name="item" select="position()"/>
            <Guest name="{text()}">
                <xsl:apply-templates select="//Addresses/Addressitem[$item]"/>
                <xsl:apply-templates select="//Phones/Phoneitem[$item]"/>
            </Guest>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="Addressitem">
        <xsl:element name="Address">
            <xsl:value-of select="current()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="Phoneitem">
        <xsl:element name="Phone">
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>