<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="Guests">

        <xsl:element name="Lists">
            <xsl:element name="Names">

                <xsl:apply-templates select="Guest"/>

            </xsl:element>
            <xsl:element name="Addresses">

                <xsl:apply-templates select="Guest/Profile/Address"/>
            </xsl:element>
            <xsl:element name="Phones">
                <xsl:apply-templates select="Guest/Profile/Phone"/>
            </xsl:element>
        </xsl:element>

    </xsl:template>


    <xsl:template match="Address">
        <xsl:element name="Addressitem">
            <xsl:value-of select="text()"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="Phone">
        <xsl:element name="Phoneitem">
            <xsl:variable name="Phone" select="text()"/>
            <xsl:value-of select="$Phone"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="Guest">

        <xsl:element name="Nameitem">
            <xsl:value-of select="@Name"/>
        </xsl:element>
    </xsl:template>


</xsl:stylesheet>