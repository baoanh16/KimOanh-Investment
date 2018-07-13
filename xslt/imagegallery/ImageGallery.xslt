<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin Gallery-->
	<xsl:template match="/">
		<section class="canhcam-gallery-3">
			<article class="gallery-details">
				<div class="container">
					<div class="row gallery-lists">
						<xsl:apply-templates select="/GalleryList/Gallery"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin Gallery Child-->
	<xsl:template match="Gallery">
		<div class="item-wrap">
			<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-poster">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-sub-html">
				<xsl:value-of select="Image/Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
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
						<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					</figcaption>
				</figure>
			</a>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>