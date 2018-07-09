<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <!--Begin Banner-->
    <xsl:template match="/">
        <xsl:if test="count(/BannerList/Banner) > 0">
            <section class="canhcam-carousel-1">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="kimoanh-title orange">
                                <h2 class="h2">
                                    <xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
                                </h2>
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <article class="owl-carousel owl-theme list-items">
                                <!--Call Banner Child-->
                                <xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
                            </article>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <!--Begin Banner Child-->
    <xsl:template match="Banner">
        <!--item-->
        <div class="item">
            <!--image-->
            <img>
            <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            </img>
        </div>
    </xsl:template>

</xsl:stylesheet>