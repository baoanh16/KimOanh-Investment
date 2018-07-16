<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-boxes-9">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="kimoanh-title orange">
							<h2>
								Tin tức
							</h2>
							<span></span>
						</div>
					</div>
				</div>

				<div class="row no-gutters mb-3 top">
					<xsl:apply-templates select="/NewsList/News" mode="Hot"></xsl:apply-templates>
				</div>

				<div class="row no-gutters bot">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="Hot">
		<xsl:if test="position()=1">
			<div class="col-lg-8">
				<figure>
					<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</figure>
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
			<div class="col-12 col-md">
				<div class="item" data-mh="news-box">
					<p class="date">
						<span class="fas fa-calendar-alt"></span>
						<span>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</span>
					</p>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<h4 class="h4">
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
					</a>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>