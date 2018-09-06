<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>


	<xsl:template match="/">
		<div class="row">
			<div class="col-12">
				<div class="kimoanh-title white">
					<h2>
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h2>
					<span></span>
				</div>
			</div>
		</div>
		<div class="row">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="col-md-4 scroll">
			<a class="item">
				<!-- <xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute> -->
				<figure>
					<div class="boximg">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<figcaption data-mh="about">
						<div class="text">
							<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>