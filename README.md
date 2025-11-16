# Pokédex XML + XSLT + XSD (BaseX Project)

Proyecto desarrollado para la gestión, transformación y visualización de datos
de Pokémon utilizando tecnologías basadas en XML.  
Incluye validación mediante XSD, transformaciones con XSLT y consultas usando BaseX.

## 🚀 Tecnologías utilizadas
- **XML** para la definición de los datos de la Pokédex
- **XSD** para validación del modelo de datos
- **XSLT** para transformaciones y generación de HTML dinámico
- **BaseX** para ejecutar consultas XPath / XQuery
- **HTML + CSS** para mostrar la Pokédex generada

## 🧠 Funcionalidades
- Validación completa del archivo XML con su esquema XSD
- Transformación de la Pokédex a HTML mediante XSLT
- Estilado visual con CSS para mostrar los Pokémon de forma amigable
- Consultas usando BaseX:
  - Filtrar Pokémon por tipo
  - Consultar evoluciones
  - Obtener estadísticas específicas
- Estructura modular para facilitar ampliaciones

## 📁 Estructura del proyecto
/xml
├── pokedex.xml
├── pokedex.xsd

/xslt
├── pokedex-html.xslt
├── styles.css

/basex
├── consultas.xq
├── ejemplos/

index.html (resultado final generado con XSLT)


## ▶️ Cómo ejecutar el proyecto

### 1. Validación XML (XSD)
Puedes validar el archivo con cualquier editor XML o usando BaseX:


### 2. Ejecutar las transformaciones XSLT
Usando BaseX:


Esto generará la Pokédex en HTML.

### 3. Consultas en BaseX
Dentro de la carpeta `/basex`:


## 📌 Qué aprendí
- Modelado avanzado de datos con XML
- Diseño y validación con XSD
- Transformaciones XSLT para generar interfaces dinámicas
- Uso profesional de BaseX para consultas complejas
- Separación por capas: datos → transformaciones → presentación

## 📄 Licencia
Proyecto con fines educativos.

