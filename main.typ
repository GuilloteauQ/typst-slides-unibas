#import "theme.typ": *

#show: unibas-theme.with()

#let pres_title = "My awesome topic"
#let presenter = "Quentin Guilloteau"

#let dslide(raw-font-size: 20pt, ..args) = {
  show raw: set text(font: "Inconsolata", weight: "semibold", size: raw-font-size)
  slide(presenter: presenter, presentation-title: pres_title, ..args)
}

#title-slide(title: pres_title, author: presenter)



#dslide(title: "A hilarious slide")[
    You didnt expect that!
]

#new-section-slide("Intro")

#dslide(title: "A second slide")[
    This is a second slide
]

#dslide(title: "A slide with enum")[
    - foo
    - bar
        - plop
        - plap
    - baz
]

#new-section-slide("Conclusion")

#dslide(title: "This is the end")[
    The end
]
