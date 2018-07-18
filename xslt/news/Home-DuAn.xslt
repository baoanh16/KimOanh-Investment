<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-boxes-4">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="kimoanh-title white">
							<h2>
								Dự án
							</h2>
							<span></span>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="news-slide owl-carousel owl-theme">
					<xsl:apply-templates select="/NewsList/News" mode="slideFor"></xsl:apply-templates>
				</div>

				<div class="slide-nav row no-gutters justify-content-between owl-carousel owl-theme">
					<xsl:apply-templates select="/NewsList/News" mode="slideNav"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="slideFor">
		<div class="item no-gutters d-flex flex-wrap">
			<xsl:attribute name="data-hash">
				<xsl:text>news-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="col-lg-8">
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
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
					<a>
						<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
					</a>
						
					</h3>
					<p class="descrip">
						<xsl:value-of select="BriefContent"></xsl:value-of>
					</p>
					<p class="mb-0 link">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							Xem chi tiết dự án
							<i class="mdi mdi-arrow-right">
							</i>
						</a>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="slideNav">
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