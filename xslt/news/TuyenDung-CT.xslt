<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-job-details-1">
			<article class="job-details">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="jobread">
								<h1>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
									<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
									<span></span>
								</h1>
								<time>
									<i class="fas fa-calendar-alt"></i>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>
								<div class="content">
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
								<div class="clearfix download">
									<a class="btn btn-download" href="#">Tải mẫu đơn xin việc
									</a>
									<a class="btn btn-getjob" id="ungTuyen" href="javascript:void(0)">
										<xsl:value-of select="/NewsDetail/ApplyText"></xsl:value-of>
									</a>
								</div>
								<div class="career-frame mrb-xs-30" style="display:none;">
									<iframe class="frame" frameborder="0" width="100%" height="400px">
									<xsl:attribute name="src">
										<xsl:value-of select="/NewsDetail/ApplyUrl" disable-output-escaping="yes"/>
									</xsl:attribute>
									</iframe>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="otherjob" data-fix="100" data-fix-type="initial" data-fix-change="sticky">
								<h2>
									Tuyển dụng khác
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
