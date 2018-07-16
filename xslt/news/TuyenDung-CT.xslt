<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-job-details-1">
			<article class="job-details">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-lg-8">
							<div class="jobread">
								<h1>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
									<span></span>
								</h1>
								<time>
									<i class="fas fa-calendar-alt"></i>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								<div class="content">
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="otherjob" data-fix="50" data-fix-type="initial" data-fix-change="sticky">
								<h2>
									<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
								</h2>
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

	<xsl:template match="NewsOther">
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
				<time>
					<i class="fas fa-calendar-alt"></i>
					<xsl:value-of select="CreatedDate"></xsl:value-of>
				</time>
				<p>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</p>
			</a>
			<hr></hr>
	</xsl:template>

</xsl:stylesheet>
