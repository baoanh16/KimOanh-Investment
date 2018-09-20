<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-news-details-1">
			<article class="news-details">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="news-read">
								<h1>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								</h1>
								<time>
									<span class="fas fa-calendar-alt"></span>
									<span><xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of></span>
								</time>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								<div class="content">
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
						</div>
						<!--Other News-->
						<div class="col-lg-3">
							<div class="othernews" data-fix="80" data-fix-type="initial" data-fix-change="sticky">
								<h2>Dự Án khác
									<!-- <xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of> -->
								</h2>
								<hr>
								</hr>
								<div class="lists">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News">
	</xsl:template>
	<!--Begin News Other Child-->
	<xsl:template match="NewsOther">
		<!--item-->
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
				<figcaption>
					<h3>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<time>
						<span class="fas fa-calendar-alt"></span>
						<span><xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of></span>
					</time>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>