<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-boxes-11">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="kimoanh-title orange">
							<h2><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h2>
							<span></span>
						</div>
					</div>
				</div>
				<div class="row mb-2 justify-content-center">
					<div class="col">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Vị trí ứng tuyển</th>
										<th class="text-center" scope="col">Số lượng ứng tuyển</th>
										<th class="text-center" scope="col">Địa điểm</th>
										<th class="text-center" scope="col">Hạn nộp hồ sơ</th>
									</tr>
								</thead>
								<tbody>
									<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<tr>
			<th class="d-flex" scope="row">
				<a class="mr-auto">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
				<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
					<span class="badge badge-danger ml-auto mr-4">Mới
					</span>
				</xsl:if>
			</th>
			<td class="text-center">
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td class="text-center">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td class="text-center">
				<xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
			</td>
		</tr>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>
