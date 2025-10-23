//#include "tapa.typ"

// corrector diccionario. (des)Activar en icono rueda-dentada spellcheck
#set text(lang: "es") // ver https://typst.app/docs/reference/text/text/#parameters-lang
#set text(region: "..") // https://typst.app/docs/reference/text/text/#parameters-region


#let título = [Competición GT3]


#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
  numbering: "1", 
  header: align(
    right + horizon,
    título),
)
#set text(
  font: "New Computer Modern",
  size: 10pt
)
#set par(
  justify: true,
  leading: 0.52em,
)

#set heading(numbering: "1.")
#show link: underline // https://typst.app/docs/reference/model/link/


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
    Gabriel Santana\
    #link("mailto:gabrieljrsantana48@gmail.com") \
   
    Oleg \
    #link("mailto:oe@as.u")
  ]
)

 \
 \
#align(center)[
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

#include "competicion.typ"

//#include "fuentes.typ"



// la bibliografía usa el formato que aconseja typst.app
// https://typst.app/docs/tutorial/writing-in-typst#bibliography
// El formato es Hayagriva 
// https://github.com/typst/hayagriva/blob/main/docs/file-format.md
// citing things with reference syntax (@key) or explicit calls to the citation function (#cite(<key>)). 
// más info en https://typst.app/docs/reference/model/bibliography/

#pagebreak()

#bibliography("bibliografia.yml") 
