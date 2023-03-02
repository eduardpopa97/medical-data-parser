<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
 	
  <center><h2>Sistem medical</h2></center>
  <center><h3>Pacienti</h3></center>
    <center>
	<table border="1">
      <tr bgcolor="#9acd32">
        <th>Nume</th>
		<th>Nevoie transfuzie</th>
        <th>Simptome</th>
		<th>Grupa sange</th>
		<th>Tip RH</th>  		
      </tr>
      <xsl:for-each select="sistem_medical/pacienti/persoana">
	  
	  <xsl:for-each select="simptom">
      <tr>
		<td>
			<xsl:value-of select="../nume"/>
		</td>
		<td>
			<xsl:value-of select="../nume/@nevoie_transfuzie"/>
		</td>
		<td>
			<xsl:value-of select="."/>
		</td>
		<td><xsl:value-of select="../grupa_sange"/></td>
		<td><xsl:value-of select="../rh"/></td>
      </tr>
      
	  </xsl:for-each>
	  </xsl:for-each>
    </table>
	</center>
	
	<center><h3>Donatori</h3></center>
    <center>
	<table border="1">
      <tr bgcolor="#9acd32">
        <th>Nume</th>
		<th>Grupa sange</th>
		<th>Tip RH</th>  		
      </tr>
      <xsl:for-each select="sistem_medical/pacienti/persoana">
		<xsl:if test="(nume/@donator='da')">
	  <tr>
		<td>
			<xsl:value-of select="nume"/>
		</td>
		<td><xsl:value-of select="grupa_sange"/></td>
		<td><xsl:value-of select="rh"/></td>
      </tr>
	  </xsl:if>
	  </xsl:for-each>
    </table>
	</center>
	
	<center><h3>Medici</h3></center>
	<center>
	<table border="1">
      <tr bgcolor="#9acd32">
        <th>Nume</th>
        <th>Specializare</th>		
      </tr>
      <xsl:for-each select="sistem_medical/medici/medic">
      <tr>
		<td><xsl:value-of select="nume"/></td>
		<td><xsl:value-of select="specializare"/></td>
      </tr>
      </xsl:for-each>
    </table>
	</center>
	
  <center><h3>Reguli de donare sange</h3></center>
  <center>  
	<table border="1">
      <tr bgcolor="#9acd32">
        <th>Donator</th>
        <th>Primitor</th> 
      </tr>
      <xsl:for-each select="sistem_medical/compatibilitate/donare">
      <tr>
        <td><xsl:value-of select="donator"/></td>
        <td><xsl:value-of select="primitor"/></td>
      </tr>
      </xsl:for-each>
    </table>
    </center> 
	
	<center><h3>Reguli de diagnosticare</h3></center>
	<center>  
	<table border="1">
      <tr bgcolor="#9acd32">
        <th>Simptome</th>
		<th>Diagnostic</th>
      </tr>
      <xsl:for-each select="sistem_medical/reguli/regula">
	  <xsl:for-each select="if">
	  
      <tr>
		<td>
				<xsl:value-of select="." />
		</td>
        <td>
				<xsl:value-of select="../then/boala" />
		</td>
      </tr>
	  </xsl:for-each>
	  </xsl:for-each>
    </table>
	</center>
	
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>