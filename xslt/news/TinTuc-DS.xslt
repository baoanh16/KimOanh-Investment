<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<article class="news-hot">
			<div class="container">
				<div class="row no-gutters mb-2 top">
					<xsl:apply-templates select="/NewsList/News" mode="Hot"></xsl:apply-templates>
				</div>
			</div>
		</article>
		<article class="news-list">
			<div class="container">
				<div class="row no-gutters justify-content-between" id="products">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</article>
	</xsl:template>

	<xsl:template match="News" mode="Hot">
		<xsl:if test="position()=1">
			<div class="col-lg-8">
				<div class="img">
					<xsl:attribute name="bg-img-responsive">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="text">
					<h3 class="h3">
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<p class="date">
						<span class="fas fa-calendar-alt"></span>
						<span>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</span>
					</p>
					<p class="descrip">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p class="mb-0 link">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							Xem thêm
							<i class="mdi mdi-arrow-right"></i>
						</a>
					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position()>1">
			<div class="item-wrap">
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
					<figure class="mb-2">
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
						<figcaption data-mh="news">
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<time>
								<span class="fas fa-calendar-alt"></span>
								<span><xsl:value-of select="CreatedDate"></xsl:value-of></span>
							</time>
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>