<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>Galería de Pokémon</title>
				<link rel="stylesheet" type="text/css" href="../css/tipos.css"/>
			</head>
			<body>
				<!-- Encabezado con el título y el dropdown -->
				<div class="header">
					<h1 class="titulo-poke" data-text="POKE FILTRO">TIPOS DE POKÉMON</h1>
					<div class="dropdown">
						<!-- Contenedor de botones de navegación -->
						<div class="button-container">
							<details>
								<summary>Menú</summary>
								<a href="../html/index.html">
									<button class="button">Inicio</button>
								</a>
								<a href="../html/estadisticas.html">
									<button class="button">Especificaciones de Estadísticas</button>
								</a>
								<a href="../html/habilidades.html">
									<button class="button">Especificaciones de Habilidades</button>
								</a>
								<a href="../html/atributos.html">
									<button class="button">Especificaciones de Atributos</button>
								</a>
							</details>
						</div>
					</div>
				</div>

				<!-- Contenedor principal -->
				<div class="pokemon-gallery">
					<xsl:for-each select="Pokedex/Pokemon">
						<xsl:if test="Tipo">

							<!-- Determinamos el color con un xsl:variable según el tipo principal -->
							<xsl:variable name="bgColor">
								<xsl:choose>
									<xsl:when test="Tipo/@principal='Fuego'">#ffb3b3</xsl:when>
									<xsl:when test="Tipo/@principal='Agua'">#b3e0ff</xsl:when>
									<xsl:when test="Tipo/@principal='Planta'">#b3ffb3</xsl:when>
									<xsl:when test="Tipo/@principal='Eléctrico'">#fff7b3</xsl:when>
									<xsl:when test="Tipo/@principal='Psíquico'">#FFF0F5</xsl:when>
									<xsl:when test="Tipo/@principal='Normal'">#FAEBD7</xsl:when>
									<xsl:when test="Tipo/@principal='Fantasma'">#DDA0DD</xsl:when>
								</xsl:choose>
							</xsl:variable>

							<!-- Tarjeta o sección de cada Pokémon -->
							<div class="pokemon-card" style="background-color: {$bgColor}">
								<div class="pokemon-img">
									<img src="{imagen}" alt="{Nombre}" width="200" height="200"/>
								</div>
								<div class="pokemon-info">
									<h2><xsl:value-of select="Nombre"/></h2>
									<p>
										<strong>Tipo Principal:</strong>
										<xsl:value-of select="Tipo/@principal"/>
									</p>
									<p>
										<strong>Tipo Secundario:</strong>
										<xsl:choose>
											<!-- Verifica si existe y no está vacío -->
											<xsl:when test="Tipo/@secundario != ''">
												<xsl:value-of select="Tipo/@secundario"/>
											</xsl:when>
											<!-- De lo contrario, muestra un texto por defecto -->
											<xsl:otherwise>
												Ninguno
											</xsl:otherwise>
										</xsl:choose>
									</p>
								</div>
							</div>
						</xsl:if>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
