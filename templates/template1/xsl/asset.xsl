<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="http://www.w3.org/1999/xhtml" xmlns:html="http://www.w3.org/1999/xhtml" version="1.0" exclude-result-prefixes="html">
	<xsl:output indent="yes" method="xml" />

	<xsl:template match="html:html">
		<html>
			<head>
				<title>
					<xsl:value-of select="html:head/html:title"/>
				</title>
				<link rel="stylesheet" type="text/css" href="test.css" />
			</head>
			<xsl:apply-templates select="html:body"/>
		</html>
	</xsl:template>

	<xsl:template match="html:div[@class = 'infobox']">
		<div class="infobox">
			<h3>Info...</h3>
		</div>
	</xsl:template>
	
	<xsl:template match="*">
		<xsl:element name="{name()}">
			<xsl:for-each select="attribute::*">
				<xsl:attribute name="{name()}">
					<xsl:value-of select="."/>
				</xsl:attribute>
			</xsl:for-each>
			<xsl:apply-templates />	
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>