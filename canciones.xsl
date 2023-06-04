<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="canciones2.css"/>	
			</head>
			
			<body>
				<h1>Canción: - <xsl:value-of select="cancion/titulo"/></h1>
				<br/>
				
				<xsl:for-each select="cancion/letra/estrofa">
					<xsl:sort select="orden"/>
					<xsl:for-each select="verso">
							<p><xsl:value-of select="."/></p>										
					</xsl:for-each>
					<br/>
				</xsl:for-each>
				
				<p>Autor: - <xsl:value-of select="cancion/autor"/></p>
					
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>