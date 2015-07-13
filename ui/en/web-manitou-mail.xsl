<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

  <xsl:import href="/usr/share/xml/docbook/stylesheet/nwalsh/xhtml/chunk.xsl" />

<xsl:param name="chunk.first.sections" select="1" />
<xsl:param name="chapter.autolabel" select="'I'" />
<xsl:param name="section.autolabel" select="1" />

<xsl:param name="generate.toc">
 appendix  nop
 article   toc,title
 book      toc,title,figure,example,equation
 chapter   toc
 part      nop
 preface   nop
 qandadiv  nop
 qandaset  nop
 reference toc,title
 set       toc
 </xsl:param>

<xsl:template name="user.header.navigation">
  <a href="/">Manitou-Mail Home</a>
</xsl:template>

<xsl:template name="head.content">
    <xsl:param name="node" select="." />

<xsl:param name="html.stylesheet" select="'manitou-docbook.css'" />
    <xsl:param name="title">
        <xsl:apply-templates select="$node" mode="object.title.markup.textonly" />
    </xsl:param>
    <link rel="stylesheet" href="manitou-docbook.css" type="text/css" />
    <title>
        <xsl:copy-of select="$title" />
        <xsl:text> - Manitou-Mail documentation</xsl:text>
    </title>
</xsl:template>

</xsl:stylesheet>
