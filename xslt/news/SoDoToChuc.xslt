<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->

	<xsl:template match="/">		
		<div class="row">
			<div class="col-12">
				<div class="kimoanh-title orange">
					<h2>
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					</h2>
					<span></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>