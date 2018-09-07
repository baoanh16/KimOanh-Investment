<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
	<xsl:template match="/">
			<!--Title-->
		<div class="project-slide owl-carousel owl-theme">
			<xsl:apply-templates select="/NewsList/News" mode="newsNav"></xsl:apply-templates>
		</div>
		<div class="project-nav row no-gutters justify-content-between owl-carousel owl-theme">
			<xsl:apply-templates select="/NewsList/News" mode="newsFor"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="newsNav">
		<div class="item no-gutters d-flex flex-wrap">
			<xsl:attribute name="data-hash">
				<xsl:text>news-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="col-lg-8">
				<figure>
					<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</figure>
			</div>
			<div class="col-lg-4 bg-white">
				<div class="text">
					<h3 class="h3">
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<p class="descrip">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="News" mode="newsFor">
		<a class="item-nav">
		<xsl:attribute name="href">
			<xsl:text>#news-</xsl:text>
			<xsl:value-of select="position()"></xsl:value-of>
		</xsl:attribute>
			<figure>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					
				</img>
				<figcaption>
					<h4 class="h4">
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
				</figcaption>
			</figure>
		</a>
	</xsl:template>
</xsl:stylesheet>