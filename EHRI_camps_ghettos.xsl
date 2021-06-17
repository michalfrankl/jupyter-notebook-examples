<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:j.0="http://purl.org/dc/elements/1.1/"
    xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#"
    xmlns:owl="http://www.w3.org/2002/07/owl#"
    xmlns:sem="http://semanticweb.cs.vu.nl/2009/11/sem/"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:dc="http://purl.org/dc/elements/1.1/name"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/">
    <xsl:output method="text" encoding="utf-8"/>

    <xsl:param name="delim" select="','"/>
    <xsl:param name="quote" select="'&quot;'"/>
    <xsl:param name="break" select="'&#xA;'"/>

    <xsl:template match="/rdf:RDF/rdf:Description">
        <xsl:value-of
            select="concat($quote, @rdf:about, $quote, $delim)"/>        
        <xsl:value-of
            select="concat($quote, skos:prefLabel[@xml:lang='en'], $quote, $delim)"/>
        <xsl:value-of
            select="concat($quote, skos:altLabel[@xml:lang='en'], $quote, $delim)"/>
        <xsl:value-of
            select="concat($quote, geo:long, $quote, $delim)"/>
        <xsl:value-of
            select="concat($quote, geo:lat, $quote, $delim)"/>
        <xsl:value-of
            select="concat($quote, skos:broader/@rdf:resource, $quote)"/>
    </xsl:template>

</xsl:stylesheet>
