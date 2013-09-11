<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="http://www.w3.org/1999/xhtml" version="1.0">
	<xsl:output indent="yes" method="html" />
	<xsl:param name="scoid"/>
	<xsl:template match="toc">
		<xsl:apply-templates />
	</xsl:template>
	<xsl:template match="sco[@id = $scoid]">
		<html>
			<head>
				<title>
					<xsl:value-of select="@title"/>
				</title>
				<link rel="stylesheet" type="text/css" href="test.css" />
			</head>
			<body>
				<h1>
					<xsl:value-of select="@title"/>
				</h1>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="sco"></xsl:template>
	<xsl:template match="asset"></xsl:template>
</xsl:stylesheet>