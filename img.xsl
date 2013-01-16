<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="a">
		<a>
			<xsl:apply-templates/>
		</a>
	</xsl:template>
	<xsl:template match="graphic">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="*"/>
</xsl:stylesheet>