<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>Atributos de Pokémon</title>
				<!-- Enlazamos la hoja de estilo externa -->
				<link rel="stylesheet" type="text/css" href="../css/atributos.css"/>
			</head>

			<body>
				<h1 class="titulo-poke">Atributos de Pokémon</h1>

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
							<button class="button">Especificaciones de Estadísticas</button>
						</a>
						<a href="../html/habilidades.html">
							<button class="button">Especificaciones de Habilidades</button>
						</a>

					</details>
				</div>

				<!-- Recorremos cada Pokémon dentro de Pokedex -->
				<div class="contenedor-cartas">
					<xsl:for-each select="Pokedex/Pokemon">
						<div class="card-scene"> <!-- Escenario 3D -->
							<div class="card"> <!-- Contenedor rotable -->
								<!-- Cara frontal -->
								<div class="card-face card-front">

								</div>

								<!-- Cara trasera -->
								<div class="card-face card-back">
									<!-- Mensaje condicional con xsl:choose, si gustas -->
									<div class="condicion">

										<xsl:choose>
											<xsl:when test="Tipo/@principal='Fuego'">
												<img src="../img/cartaFuego.jpg"/>
											</xsl:when>

											<xsl:when test="Tipo/@principal='Planta'">
												<img src="../img/cartaPlanta.png"/>
											</xsl:when>

											<xsl:when test="Tipo/@principal='Eléctrico'">
												<img src="../img/cartaRayo.jpg"/>
											</xsl:when>

											<xsl:when test="Tipo/@principal='Agua'">
												<img src="../img/cartaAgua.png"/>
											</xsl:when>

											<xsl:when test="Tipo/@principal='Fantasma'">
												<img src="../img/cartaFantasma.png"/>
											</xsl:when>

											<xsl:when test="Tipo/@principal='Psíquico'">
												<img src="../img/cartaPsiquico.png"/>
											</xsl:when>

											<xsl:when test="Tipo/@principal='Normal'">
												<img src="../img/cartaNormal.png"/>
											</xsl:when>
											<xsl:otherwise/>
										</xsl:choose>
									</div>

									<div class="info">
										<div class="info-img">
											<img src="{imagen}" alt="{Nombre}"/>
										</div>

										<div class="info-info">
											<p>
												<strong>Tipo Principal:</strong>
												<xsl:value-of select="Tipo/@principal"/>
											</p>

											<xsl:if test="string-length(Tipo/@secundario) &gt; 0">

												<p>
													<strong>Tipo Secundario:</strong>
													<xsl:value-of select="Tipo/@secundario"/>
												</p>

											</xsl:if>

											<p>
												<strong>Descripción:</strong>
												<xsl:value-of select="Descripcion"/>
											</p>
										</div>
									</div>


								</div>
							</div>
						</div>

					</xsl:for-each>
				</div>

			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
