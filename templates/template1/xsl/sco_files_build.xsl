<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output indent="yes"/>
	<xsl:param name="inputpath"/>
	<xsl:param name="outputpath"/>
	<xsl:template match="toc">
		<project name="Importfiles" default="files">
			<target name="files">
				<xsl:for-each select="//sco">
					<xslt in="{$inputpath}/_toc.xml" out="{$outputpath}/{@id}.html" style="templates/template1/xsl/sco.xsl">
						<param name="scoid" expression="{@id}"/>
					</xslt>
				</xsl:for-each>
			</target>
		</project>
	</xsl:template>
</xsl:stylesheet>