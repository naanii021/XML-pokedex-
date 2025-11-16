<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>Estadísticas de Pokémon</title>
				<link rel="stylesheet" href="../css/estadisticas.css"/>
			</head>
			<body>

				<div class="header">
					<h1 class="titulo-poke" data-text="POKE FILTRO">ESTADÍSTICAS DE POKÉMON</h1>

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

							<a href="../html/habilidades.html">
								<button class="button">Especificaciones de Habilidades</button>
							</a>
							<a href="../html/atributos.html">
								<button class="button">Especificaciones de Atributos</button>
							</a>
						</details>
					</div>
				</div>

				<!-- Contenedor principal en cuadrícula -->
				<div class="gallery2">
					<!-- Recorre cada Pokémon en la Pokedex -->
					<xsl:for-each select="Pokedex/Pokemon">

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

						<div class="pokemon-card" style="background-color: {$bgColor}">
							<div class="cards">
								<div class="cards-container">
									<h2>
										<xsl:value-of select="Nombre"/>
									</h2>
									<p>
										<strong>PS:</strong>
										<xsl:value-of select="Estadisticas/PS"/>
									</p>
									<p>
										<strong>Ataque:</strong>
										<xsl:value-of select="Estadisticas/Ataque"/>
									</p>
									<p>
										<strong>Defensa:</strong>
										<xsl:value-of select="Estadisticas/Defensa"/>
									</p>
									<p>
										<strong>Velocidad:</strong>
										<xsl:value-of select="Estadisticas/Velocidad"/>
									</p>
								</div>

								<div class="pokemon-img">
									<img src="{imagen}" alt="{Nombre}" width="200" height="200"/>
								</div>
							</div>
						</div>
					</xsl:for-each>

				</div>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>