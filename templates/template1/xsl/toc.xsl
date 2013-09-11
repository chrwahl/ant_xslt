<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:redirect="http://xml.apache.org/xalan/redirect" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output indent="yes"/>
	<!--<xsl:param name="outputpath"/>
	<xsl:import href="asset.xsl"/>-->
	<xsl:template match="toc">
		<html>
			<head>
				<title>
					<xsl:value-of select="@title"/>
				</title>
				<link rel="stylesheet" type="text/css" href="css/toc.css" />
				<link rel="stylesheet" type="text/css" href="css/asset.css" />
			</head>
			<body>
				<ul class="toc">
					<xsl:apply-templates />
				</ul>
				<div id="asset"></div>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="sco">
		<xsl:variable name="asset" select="document(@src)"/>
		<li class="sco">
			<a href="{@id}.html"><xsl:value-of select="@title"/></a>
		</li>
	</xsl:template>

	<xsl:template match="asset">
		<!--<xsl:variable name="asset" select="document(@src)"/>
		<li class="item">
			<a href="{@id}.html"><xsl:value-of select="$asset//title"/></a>
		</li>
		<redirect:write file="{$outputpath}/{@id}.html">
			<xsl:apply-templates select="$asset/html"/>
		</redirect:write>-->
	</xsl:template>
</xsl:stylesheet>