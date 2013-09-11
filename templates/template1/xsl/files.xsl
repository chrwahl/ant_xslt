<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output indent="yes"/>
	<xsl:param name="inputpath"/>
	<xsl:param name="outputpath"/>
	<xsl:template match="toc">
		<project name="Importfiles" default="files">
			<target name="files">
				<xsl:apply-templates />
			</target>
		</project>
	</xsl:template>

	<xsl:template match="asset">
		<xsl:variable name="asset" select="document(@src)"/>
		<xsl:for-each select="$asset//html:img/@src">
			<copy file="{$inputpath}/{.}" tofile="{$outputpath}/{.}"/>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>