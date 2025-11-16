<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>Expanding Cards - Galería de Pokémon</title>
				<link rel="stylesheet" type="text/css" href="../css/habilidades.css"/>
			</head>
			<body>
				<h1 class="titulo-poke">Habilidades de Pokémon</h1>

				<!-- Contenedor de botones de navegación -->
				<div class="button-container">
					<details>
						<summary>Menú</summary>
						<a href="../html/index.html">
							<button class="button">Inicio</button>
						</a>
						<a href="../html/tipos.html">
							<button class="button">Especificaciones de Tipos</button>
						</a>

						<a href="../html/estadisticas.html">
							<button class="button">Especificaciones de Estadisticas</button>
						</a>
						<a href="../html/atributos.html">
							<button class="button">Especificaciones de Atributos</button>
						</a>
					</details>
				</div>


				<!-- Contenedor de la galería horizontal -->
				<div class="card-gallery">
					<xsl:for-each select="Pokedex/Pokemon">
						<div class="card">
							<div class="card-content">
								<h2><xsl:value-of select="Nombre"/></h2>
								<img class="pokemon-image" src="{imagen}" alt="{Nombre}" />
								<div class="card-info">
									<p><strong>Tipo:</strong> <xsl:value-of select="Tipo/@principal"/></p>
									<p>
										<strong>Habilidades:</strong>
										<xsl:for-each select="Habilidades/Habilidad">
											<xsl:value-of select="."/>
											<xsl:if test="position() != last()">, </xsl:if>
										</xsl:for-each>
									</p>
								</div>
							</div>
						</div>
					</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
