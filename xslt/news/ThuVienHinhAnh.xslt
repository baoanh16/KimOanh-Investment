<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin Gallery-->
	<xsl:template match="/">
		<div class="container">
			<div class="row gallery-lists">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<!--Begin Gallery Child-->
	<xsl:template match="News">
		<div class="col-sm-6 col-lg-4 item-wrap">
			<div class="item">
				<figure class="mb-2">
					<div class="boxzoom">
						<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Image/Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					
					<figcaption>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
							/
							<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
				<div class="hidden">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</div>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<xsl:template match="NewsImages">
		<xsl:param name="position"></xsl:param>
		<xsl:if test="position() > 1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"/>
				</xsl:attribute>
				<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"/>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>


</xsl:stylesheet>