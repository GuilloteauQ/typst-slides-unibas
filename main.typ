#import "theme.typ": *

#show: unibas-theme.with()


#let dslide(raw-font-size: 20pt, ..args) = {
  show raw: set text(font: "Inconsolata", weight: "semibold", size: raw-font-size)
  slide(presenter: [Quentin Guilloteau], presentation-title: [My awesome topic], ..args)
}

#title-slide(title: [My awesome topic], author: [A really funny guy])


#dslide(title: "A hilarious slide")[
  You didn't expect that!
]

#dslide(title: "A second slide")[
This is a second slide
]
