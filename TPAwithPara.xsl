<?xml version="1.0" encoding="UTF-8"?>
	<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"    xmlns:xs="http://www.w3.org/2001/XMLSchema"    exclude-result-prefixes="xs"     version="2.0">
		<xsl:param name="User"/>
		<xsl:param name="SOP"/>
		
			<xsl:template match="/">
					<xsl:for-each select="/Directory/EE">
					<xsl:choose>	
						<xsl:when test="@id = $User">
					<xsl:call-template name="Para">
						<xsl:with-param name="User" select ="$User"/>				
					</xsl:call-template>
</xsl:when>
</xsl:choose>
		</xsl:for-each>
			</xsl:template>
			<xsl:template name="Para">
		<xsl:param name="User"/>
		<xsl:param name="SOP"/>
							<xsl:variable name="dateNow" select="current-dateTime()"/>
								<xsl:variable name="dateNow2" select="format-dateTime($dateNow, '[Y0001][M01][D01]')"/>
<xsl:result-document href="/c:/TPA{$dateNow2}/{@id}.fo" xml:space="preserve">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<fo:layout-master-set>
<fo:simple-page-master master-name="simple" page-height="8.5in" page-width="11in"
    margin-top=".001in" margin-bottom=".005in" margin-left=".5in" margin-right=".5in">
</fo:simple-page-master>
</fo:static-content>
<fo:static-content flow-name="xsl-region-after">
<fo:table table-layout="fixed" width="100%">
<fo:page-number/> of 
</fo:table-row>
</fo:table>
</fo:static-content>
<fo:flow flow-name="xsl-region-body">
<fo:table-row border-bottom-style="solid" border-bottom-color="black" border-bottom-width="1pt" border-before-color="transparent" border-after-color="transparent" border-left-color="transparent" border-right-color="transparent" border-top-color="transparent">
</fo:table-row>
<fo:table-row text-indent="5pt" border-left-width="2pt" border-left-color="black" border-left-style="solid" border-right-width="2pt" border-right-color="black" border-right-style="solid">
</fo:table-row>
<fo:table-row text-indent="3pt" border-left-width="2pt" border-left-color="black" border-left-style="solid" border-right-width="2pt" border-right-color="black" border-right-style="solid">
</fo:table-row>
<fo:table-row text-indent="3pt" border-left-width="2pt" border-left-color="black" border-left-style="solid" border-right-width="2pt" border-right-color="black" border-right-style="solid">
</fo:table-row>
<fo:table-row height=".65in" border-width="1pt" border-style="solid" border-spacing="8pt" border-color="black">
</fo:table-row>
<fo:table table-layout="fixed" width="100%" border-spacing="15pt" border-collapse="collapse" space-after.optimum="3pt" >
</fo:table-row>
</fo:table>
<fo:table table-layout="fixed" width="100%">
<fo:table-row height=".65in" border-width="1pt" border-style="solid" border-spacing="8pt" border-color="black">
</fo:table-row>
</fo:table>
</fo:flow>
</xsl:result-document>
</xsl:stylesheet>