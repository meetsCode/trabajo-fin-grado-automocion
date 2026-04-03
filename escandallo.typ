// corrector diccionario. (des)Activar en icono rueda-dentada spellcheck
#set text(lang: "es") // ver https://typst.app/docs/reference/text/text/#parameters-lang
#set text(region: "..") // https://typst.app/docs/reference/text/text/#parameters-region

= Resumen gastos
Un resumen de todo el presupuesto teniendo en cuenta todos los gastos estimados.

#let datos = csv("documentos-fuente/hoja-calc-gastos.csv")

#table(
  columns: (auto, auto, auto, auto, auto, auto), // Ajuste automático y flexible
  fill: (x, y) => if y == 0 { luma(240) }, // Sombreado en la primera fila
  inset: 1pt,
  
  // Encabezados
  //..datos.at(0).map(c => strong(c)),
  // Encabezados manuales
  [*Apartado*], [*Concepto*], [*PVP*],[*Unid*], [*Total*], [*Suma*],
  
  // Datos (saltando la primera fila de encabezado)
  ..datos.slice(1).flatten(),
)