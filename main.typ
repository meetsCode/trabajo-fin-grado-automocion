//#include "tapa.typ"

// corrector diccionario. (des)Activar en icono rueda-dentada spellcheck
#set text(lang: "es") // ver https://typst.app/docs/reference/text/text/#parameters-lang
#set text(region: "..") // https://typst.app/docs/reference/text/text/#parameters-region


#let título = [Competición GT3]
/*
// fuente: https://typst.app/docs/tutorial/formatting/#show-rules
#show "Trabajo competición GT3": name => box[
  #box(image(
    "documentos-fuente/logo-escuela-cabezo-fp.png",
    height: 0.7em,
  ))
  #título
]
*/

#let Trabajo-competición-GT3 = grid(
  columns: (1fr, 1fr),
  align(left)[
     Trabajo de graduación Competición GT3
  ],
  align(right)[
    #box(image(
    //"documentos-fuente/logo-escuela-cabezo-fp.png",
    "documentos-fuente/logo-cabezofp.jpg",
    height: 3.5em,
  ))
  ],
  
)


#set page(
  paper: "a4",
  // el margen derecho menor que el izquierdo. 
  // no sé hacerlo aún. 
  // Sí que he separado a 2.5 la cabecera y el pie. O sea el y: en la función margin.
  //margin: (x: 1.8cm, y: 2.5cm),
  margin: (right: 1.8cm, left: 1.9cm, y: 2.8cm),
  numbering: "1/1", 
  header: align(
    right + horizon,
    //título),
    Trabajo-competición-GT3),
)

#set text(
  font: "New Computer Modern",
  //font: "Times New Roman",
  //font: "roman",
  size: 12pt
)
#set par(
  justify: true,
  leading: 1.1em,
  //leading: 0.6em,
  //leading: "simple",
)

#show link: underline // https://typst.app/docs/reference/model/link/


//    Configuración de los títulos de los apartados
//#show heading.where(level: 1): set text(size: 13pt, weight: "regular")
//#show heading.where(level: 1): smallcaps
#set heading(numbering: "1.1")
#show heading.where(level: 1): set align(center)
#show heading.where(level: 1): set text(
  size: 16pt,
  weight: "bold",
  //style: "italic",
)
#show heading.where(level: 2): set text(
  size: 14pt,
  weight: "bold",
  //style: "italic",
)
/*
#show heading.where(level: 2): it => {
  it.body + [.]
}
*/





#align(center + horizon, text(17pt)[
  *#título*
])


#grid(
  columns: (1fr, 1fr, 1fr),
  align(center)[
    Enrique Ros Birruezo \
    #link("mailto:enriqueros92@gmail.com")\
    
    Juan Antonio Morcillo García\
    #link("mailto:j.a.m.g.katt@gmail.com") \
  ],
  align(center)[
     Francisco Murcia \ 
    #link("mailto:franmurciap242@gmail.com")\
    
     Luis Sánchez Peña\
    #link("mailto:sanchezlsp@gmail.com")\
  
  ],
  align(center)[
    Gabriel Rodriguez \
    #link("mailto:gabrieljrsantana48@gmail.com") \
   
    Oleg Khodzinskyy Pidperyhora \
    #link("mailto:khodzinskyy@gmail.com")
  ]
)

 \
 \
 
#pagebreak()


#outline()

#align(center  + horizon )[
  #set par(justify: false)
  *Abstract* \
  //#lorem(80)
  This final degree work has allowed us to simulate the creation of a competition team for GT3 from scratch. We have dealt with technical, logistical and economic issues of the project. The conclusions are that it is possible to create such a project from scratch but with a cost of €1,000,000 and with a time between the creation of the team and the first race of 1 year.
]


#align(center  + horizon )[
  #set par(justify: false)
  *Abstract* \
  //#lorem(80)
  Este trabajo fin de grado nos ha permitido simular la creación de un equipo de competición para GT3 desde cero. Hemos tratado temas técnicos, logísticos y económicos del proyecto. Las conclusiones son que es posible crear de cero tal proyecto pero con un coste de 1.000.000€ y con un tiempo entre la creación del equipo y la primera carrera de 1 año.
]


#pagebreak()

#include "introducción.typ"

#pagebreak()

#include "modelos.typ"

#pagebreak()

#include "arreglos-y-mantenimientos.typ"

#pagebreak()

#include "competicion.typ"

#pagebreak()

#include "reglamento.typ"

#pagebreak()

#include "viajes.typ"

#pagebreak()

#include "escandallo.typ"




// la bibliografía usa el formato que aconseja typst.app
// https://typst.app/docs/tutorial/writing-in-typst#bibliography
// El formato es Hayagriva 
// https://github.com/typst/hayagriva/blob/main/docs/file-format.md
// citing things with reference syntax (@key) or explicit calls to the citation function (#cite(<key>)). 
// más info en https://typst.app/docs/reference/model/bibliography/

#pagebreak()

//#bibliography("bibliografia.yml", style: "apa")
#bibliography("bibliografia.yml", style: "ieee")

#pagebreak()

#include "anexo-reglamento2025-es.typ"

#pagebreak()
\
\
\
\
\
\
#align(center)[
  #figure(
    image("documentos-fuente/photo_2026-05-10 17.43.14.jpeg", width: 80%),
    caption: [Promoción 2024/2026]
   ) // <img-sys-bebida01>
]
//https://www.manthey-racing.com/endurance-lightweight-drinking-system
