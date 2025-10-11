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


#align(center, text(17pt)[
  *#título*
])


#grid(
  columns: (1fr, 1fr, 1fr),
  align(center)[
    Enrique \
    #link("mailto:oe@as.du")
    
    Francisco\
    #link("mailto:sasp@gmail.com")
  ],
  align(center)[
    Gabriel Apellidos\
    #link("mailto:sasp@gmail.com")
   
    Juan Antonio \
    #link("mailto:oe@as.du")
  ],
  align(center)[
    Luis Sánchez Peña\
    #link("mailto:sanchezlsp@gmail.com")
    
    Oleg \
    #link("mailto:oe@as.u")
  ]
)


#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]

#pagebreak()

#include "introducción.typ"

#pagebreak()

#include "fuentes.typ"



// la bibliografía usa el formato que aconseja typst.app
// https://typst.app/docs/tutorial/writing-in-typst#bibliography
// El formato es Hayagriva 
// https://github.com/typst/hayagriva/blob/main/docs/file-format.md
// citing things with reference syntax (@key) or explicit calls to the citation function (#cite(<key>)). 
// más info en https://typst.app/docs/reference/model/bibliography/
#bibliography("bibliografia.yml")
