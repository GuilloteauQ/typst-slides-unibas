#import "theme.typ": *

#show: unibas-theme.with()

#let pres_title = "Longevity of Artifacts in Leading Parallel and Distributed Systems Conferences: a Review of the State of the practice in 2023"
#let short_title = "Longevity of Artifacts: a Review of the State of the practice in 2023"
//My awesome topic which has a very very long title"
#let presenter = "Quentin Guilloteau"

#let authors = (
  (name: [Quentin Guilloteau], affiliation: [University of Basel, Switzerland], is_presenter: true), 
  (name: [Florina M. Ciorba], affiliation: [University of Basel, Switzerland], is_presenter: false), 
  (name: [Millian Poquet], affiliation: [Univ. Toulouse, CNRS, IRIT], is_presenter: false), 
  (name: [Dorian Goepp], affiliation: [Univ. Grenoble Alpes, INRIA, CNRS, LIG], is_presenter: false), 
  (name: [Olivier Richard], affiliation: [Univ. Grenoble Alpes, INRIA, CNRS, LIG], is_presenter: false), 
)

#let dslide(raw-font-size: 20pt, ..args) = {
  show raw: set text(font: "Inconsolata", weight: "semibold", size: raw-font-size)
  slide(presenter: presenter, presentation-title: short_title, ..args)
}

#title-slide(title: pres_title, authors: authors)



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
