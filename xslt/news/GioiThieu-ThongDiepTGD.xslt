<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->

	<xsl:template match="/">
		<div class="row">
			<div class="col-12">
				<div class="kimoanh-title orange">
					<h2><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					</h2>
					<span></span>
				</div>
			</div>
		</div>
		<div class="row mb-2 box-info no-gutters">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>

	
	<xsl:template match="News">
		<div class="col-md order-md-1">
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
		<div class="col-md order-md-2">
			<div class="text">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>