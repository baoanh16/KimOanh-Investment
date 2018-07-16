<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin Video-->
	<xsl:template match="/">
		<section class="canhcam-gallery-2">
			<article class="gallery-details">
				<div class="container">
					<div class="row gallery-lists">
						<xsl:apply-templates select="/VideoList/Video"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin Video Child-->
	<xsl:template match="Video">
		<!--item-->
		<div class="item-wrap mb-2">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="VideoUrl"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boxzoom">
						<div class="zoom-item">
							<img src="/Data/Sites/1/media/play-btn.png">
							</img>
						</div>
						<img class="img-fluid">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>