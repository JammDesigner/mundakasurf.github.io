<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  
<html>

<head>
<link rel="stylesheet" href="../CSS/estilos.css"/>	
</head>
  <body>
  <header class="header">
      <div class="contenedor">
            <h1 class="logo">Mudanka Surf</h1>
            <span class="icon-menu" id="btn-menu">&#9776;</span>
            <nav class="nav" id="nav">
                <ul class="menu">
               <li><a href="../index.html">Inicio</a></li>
               <li><a href="../HTML/escuela.html">Escuela</a></li>
               <li class="submenu"><a href="surf.xml">Cursos &#8628;</a>
                  <ul class="submenu-desplegables">
                      <li><a href="">Iniciación</a></li>
                      <li><a href="">Nivel medio</a></li>
                      <li><a href="">Nivel avanzado</a></li>
                  </ul>
                </li>
                   
               <li><a href="">Contacto</a></li>
           </ul>
       </nav>
       </div>
   </header>

<div class="sectioncursossurf">
   
  <div class="titulo-cursos"><h2>SURF</h2></div>
				<xsl:for-each select="//curso[nombre='Surf']">
                      
					      <div class="cajacursos" id="modificar">  
					           
        <p class="cursosTitulo"><xsl:value-of select="precio"/>€ /Persona</p>
        <p class="datos"><xsl:value-of select="dias"/> días</p>
        <p class="datos"><xsl:value-of 
        select="horas"/> horas de duración</p>
        <p class="datos">Material <xsl:value-of 
        select="material"/> </p>
      </div>
      </xsl:for-each>
    
     </div>
     
     <div class="sectioncursosbodyboard">
   
  <div class="titulo-cursos"><h2>BODYBOARD</h2></div>
	<xsl:for-each select="//curso[nombre='Bodyboard']">
      <div class="cajacursos">       
        <p class="cursosTitulo"><xsl:value-of select="precio"/>€ /Persona</p>
        <p class="datos"><xsl:value-of select="dias"/> días</p>
        <p class="datos"><xsl:value-of 
        select="horas"/> horas de duración</p>
        <p class="datos">Material <xsl:value-of 
        select="material"/> </p>
      </div>
			</xsl:for-each>
		
    
     </div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
