// corrector diccionario. (des)Activar en icono rueda-dentada spellcheck
#set text(lang: "es") // ver https://typst.app/docs/reference/text/text/#parameters-lang
#set text(region: "..") // https://typst.app/docs/reference/text/text/#parameters-region

= Resumen gastos.
Un resumen de todo el presupuesto teniendo en cuenta todos los gastos estimados.

//#let resumen_todos_gastos = csv("documentos-fuente/resumen_todos_gastos.csv")
#let resumen_todos_gastos = csv("documentos-fuente/gastos_TFG - total.csv")

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto), // Ajuste automático y flexible
    fill: (x, y) => if y == 0 { luma(240) }, // Sombreado en la primera fila
  //inset: 1pt,
  //inset: (left: 6pt, right: 6pt, top: 4pt, bottom: 4pt),
    inset: (x: 6pt, y: 4pt),
  
  // Encabezados
  //..datos.at(0).map(c => strong(c)),
  // Encabezados manuales
    [*Apartado*], [*Concepto*], [*PVP*],[*Unid*], [*Total*], [*Suma*],
  
  // Datos (saltando la primera fila de encabezado)
    //..resumen_todos_gastos.slice(1).flatten(),
 
    ..resumen_todos_gastos.slice(1).map(((apartado, concepto, pvp, unid, total, suma)) => (
    par(leading: 4pt)[#text(size: 11pt,fill: blue)[#apartado]],
    text(size: 11pt, fill: blue)[#concepto],
    text(fill: blue)[#pvp],
    text(fill: blue)[#unid],
    text(fill: blue)[#total],
    text(fill: blue)[#suma],
  )).flatten(), 
  //[Piezas de repuesto#footnote[Tabla con desglose en @tabla-gastos-piezas-basicas .]]
))
//Poner un pie de página con Esto es un texto#footnote[Tabla con desglose en @tabla-gastos-piezas-basicas .]