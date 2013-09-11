<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output indent="yes"/>
	<xsl:param name="inputpath"/>
	<xsl:param name="outputpath"/>
	<xsl:template match="toc">
		<project name="Importfiles" default="files">
			<target name="files">
				<xsl:for-each select="//asset">
					<xslt in="{$inputpath}/{@id}.html" out="{$outputpath}/{@id}.html" style="templates/template1/xsl/asset.xsl"/>
				</xsl:for-each>
			</target>
		</project>
	</xsl:template>
</xsl:stylesheet>