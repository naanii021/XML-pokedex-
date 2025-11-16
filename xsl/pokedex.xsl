<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Plantilla principal -->
	<xsl:template match="/">
		<html>
			<head>
				<title>POKE FILTRO - Página Principal</title>
				<link rel="stylesheet" type="text/css" href="../css/inicio.css"/>
			</head>
			<body>
				<!-- Contenedor para título y descripción -->
				<div class="header-content">
					<h1 class="titulo-poke" data-text="POKE FILTRO">POKE FILTRO</h1>
					<p>Bienvenido a POKE FILTRO</p>
					<p>Explora la información detallada de los Pokémon según distintas especificaciones.</p>
					<p>¡Navega entre las secciones para ver todas las características!</p>
				</div>

				<!-- Contenedor de botones de navegación -->
				<div class="button-container">
					<details>
						<summary>Menú</summary>
					<a href="../html/tipos.html">
						<button class="button">Especificaciones de Tipos</button>
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
				<div class="header-content">
					<p>¡Busca tu pókemon favorito y mira sus características!</p>
					<p>¿Falta algún pókemon?</p>
					<p>¡Déjanoslo aquí y lo iremos añadiendo!</p>

					<div class="feedback-container">
						<h2>¡Cuéntanos qué Pokémon quieres ver!</h2>

						<form action="ruta_a_tu_procesador_de_formulario" method="post">
							<label for="nombre">Tu nombre:</label>
							<input type="text" id="nombre" name="nombre" placeholder="Ingresa tu nombre" required="yes" />

							<label for="pokemon">Pokémon deseado:</label>
							<input type="text" id="pokemon" name="pokemon" placeholder="Charizard" required="yes"/>

							<label for="comentario">Comentarios:</label>
							<textarea id="comentario" name="comentario" rows="4" placeholder="¿Por qué quieres ver este Pokémon?"></textarea>

							<button type="submit">Enviar</button>
						</form>
					</div>

				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
