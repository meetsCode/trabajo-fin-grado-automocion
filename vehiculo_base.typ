== Vehículo base
=== Piezas a almacenar y substituir durante la temporada de carreras.
En este apartado listamos y comentamos las distintas piezas que trae de serie el Porsche 911 y de la que dispondremos al menos de una unidad en el almacén que llevamos con nosotros a las carreras.\
Nuestro interés es de disponer del repuesto para el caso del desgaste, rotura o accidente.

==== Piezas mecánicas básicas.
- Discos y pastillas de freno
- Neumáticos (muchísimos juegos)
- Suspensión (amortiguadores, muelles, brazos)
- Embrague
- Transmisión (palieres, caja de cambios de repuesto)

==== Motor y refrigeración.
- Filtros (aceite, aire, combustible)
- Radiadores
- Correas y manguitos
- Aceite y líquidos

==== Carrocería y aerodinámica.
- Paragolpes
- Alerones
- Splitter delantero
- Paneles de fibra de carbono


==== Piezas de desgaste y cada cuánto se cambian
*Neumáticos*
- Se cambian cada carrera o incluso durante la carrera
- En resistencia: cada pocas horas o stints


*Frenos*
- Pastillas: cada 1–2 carreras
- Discos: cada 2–4 carreras (depende del circuito)


*Aceite y filtros*
- Se cambian después de cada carrera.


*Caja de cambios*
- Revisión frecuente
- Cambio o reconstrucción cada varias carreras


*Suspensión*
- Revisión constante
- Sustitución si hay desgaste o golpes


=== Precios 

- Discos de freno Porsche 911 GT3 (delanteros)  Precio: 1.000 – 3.500 € el juego. Presupuestamos 1042,65€
- Pastillas de freno Porsche GT3. Precio: 150 – 300 €. En competición profesional: pueden subir a 400–800 €. Presupuestamos 188,90 € por cada pack de pastillas de un lado.
- Suspensión Manthey Racing Porsche GT3. Precio: Kits básicos: 7.000 – 10.000 € Nivel competición: hasta 10.000 € o más. Presupuestamos 9911,11 € (BaanVelgen)
- Aceite de motor Liqui Moly 0W-40. Un GT3 usa varios litros → cambio total: 200 – 400 €. Presupuestamos 30 – 60 € por litro
- Neumáticos. Precio por juego GT3 competición: 1.500 – 2.500 € por juego. Se cambian constantemente (cada carrera o incluso durante la carrera)
- Caja de cambios. Precio: 15.000 – 30.000 € (completa de competición)
- Carrocería (fibra de carbono)
      - Alerón: 2.000 – 5.000 €
      - Paragolpes: 1.000 – 3.000 €
      - Splitter: 500 – 2.000 €


=== Tabla resumen de gastos en piezas básicas
/*
TABLA COMPLETA DE COSTES EN GT3<<<<<<<<<<<<<
https://github.com/typst/typst
*/
#let gastos-basicos = csv("documentos-fuente/gastos_TFG - basicos.csv")
#figure(table(
  columns: (auto, auto, auto, auto, auto), // Ajuste automático y flexible
  fill: (x, y) => if y == 0 { luma(240) }, // Sombreado en la primera fila
  inset: (x: 6pt, y: 4pt), // margen entre el marco y letras. (x: 6pt, y: 4pt),
  align: center,
  
  // Encabezados
  //..datos.at(0).map(c => strong(c)),
  // Encabezados manuales
  [Pieza],[Precio unidad],[frecuencia de cambio],[num cambios/temporada],	[*coste total temporada*],
  
  // Datos (saltando la primera fila de encabezado)
  //..gastos-basicos.slice(1).flatten(),
  //..gastos-basicos.slice(1).map(((pieza, pvp, frecuencia, cambios, coste )) => {text(fill: blue)[#pieza]  text(fill: blue)[#pieza] }),

  ..gastos-basicos.slice(1).map(((pieza, pvp, frecuencia, cambios, coste)) => (
    par(leading: 4pt)[#text(size: 11pt,fill: blue)[#pieza]],
    text(fill: blue)[#pvp],
    text(fill: blue)[#frecuencia],
    text(fill: blue)[#cambios],
    text(fill: blue)[#coste],
  )).flatten(),
  
    //text(fill: blue)[Total],[],[], [], [1000] 
) )<tabla-gastos-piezas-basicas>



/*
Pieza
	Precio unidad
	Cada cuánto se cambia
	Veces por temporada
	Coste total temporada
	Discos de freno
	1.000 – 3.500 € (juego)
	Cada 2–4 carreras
	2 veces
	2.000 – 7.000 €
	Pastillas de freno
	300 – 800 €
	Cada 1–2 carreras
	4 veces
	1.200 – 3.200 €
	Neumáticos
	1.500 – 2.500 € (juego)
	Cada carrera (mínimo)
	6–10 juegos
	9.000 – 25.000 €
	Aceite + filtros
	200 – 400 €
	Cada carrera
	6 veces
	1.200 – 2.400 €
	Suspensión (mantenimiento)
	1.000 – 3.000 €
	1–2 veces temporada
	1–2 veces
	1.000 – 6.000 €
	Caja de cambios (revisión/rebuild)
	5.000 – 15.000 €
	1 vez temporada
	1 vez
	5.000 – 15.000 €
	Carrocería (golpes/reparación)
	500 – 5.000 €
	Variable
	1–3 veces
	500 – 15.000 €
	

 COSTE TOTAL APROXIMADO POR TEMPORADA
Si sumas todo:
Mínimo: ~20.000 €
Normal: 30.000 – 50.000 €
 Con daños o nivel profesional: hasta 70.000 € o más
*/

== Revisión tras cada carrera.
Después de cada carrera los mecánicos debe hacen una inspección completa para asegurarse que los componentes no deben ser cambiados así como para descubrir fallos o desgastes inusuales.\
La _check list_ mínima es la siguiente:

*Revisión mecánica*
- Motor (posibles fugas o pérdidas de potencia)
- Caja de cambios
- Transmisión
*Frenos*
- Desgaste de discos y pastillas
- Temperaturas alcanzadas
- Latiguillos de freno.
*Neumáticos*
- Desgaste irregular
- Presiones y temperaturas
*Datos electrónicos*
- Telemetría (datos del coche)
- Rendimiento del piloto
- Consumo de combustible
*Estructura*
- Chasis (por si hay daños)
- Aerodinámica
- Tornillería (que todo esté bien apretado) 

/*
- Los equipos llevan recambios de frenos, neumáticos, suspensión, motor y carrocería
- Las piezas de desgaste se cambian muy a menudo (neumáticos cada carrera, aceite siempre, frenos cada pocas carreras)
- Después de cada carrera se revisa TODO: motor, frenos, neumáticos, electrónica y estructura.
*/

CONCLUSIÓN 
      - Las piezas de desgaste en GT3 se cambian constantemente (especialmente neumáticos, frenos y aceite)
      - Los neumáticos son el gasto más alto porque se usan muchos juegos por carrera.
      - El mantenimiento total de un coche GT3 puede superar fácilmente los 45.000€ por temporada sólo en piezas
      - Si hay accidentes o averías, el coste aumenta mucho más.



/*
La información de este trabajo a sido encontrada en estas fuente:
https://www.fia.com
https://www.gt-world-challenge-europe.com
https://www.porsche.com

 https://motorsports.porsche.com
https://www.brembo.com

https://www.michelin.com

https://www.liqui-moly.com

https://www.manthey-racing.com
*/