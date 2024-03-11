#import "@preview/polylux:0.3.1": *


#let unibas-mint = rgb("#a5d7d2")
#let unibas-mint-light = rgb("#c0e3df")

#let unibas-theme(aspect-ratio: "16-9",
																	 body) = {


  set page(
    paper: "presentation-" + aspect-ratio,
    fill: white,
				margin: 0em,
				header: none,
				footer: none,
  )
  set text(fill: white.darken(90%), size: 30pt, font: "Fira Sans")

  body
}

#let title-slide(title: [], author: []) = {
  polylux-slide({
    set align(center + horizon)
    smallcaps(strong(title))
    parbreak()
    text(size: .7em, author)
  })
}

#let slide(title: none, 
											presentation-title: [],
											presenter: [],
           body) = {
  let header = {
    set align(top)
    if title != none {
						block(width: 100%, height: 97.5%, inset: 0.8em, above: 0pt, below: 0pt, breakable: false, text(fill: black, size: 1.2em, title) )
					 line(start: (2.5%, 0%), length: 95%, stroke: (paint: unibas-mint, thickness: 2pt, dash: "loosely-dashed"))
    } else { [] }
  }

		let footer = stack(
				block(width:100%, height: 100%, breakable:false, 
						grid(columns: (65%, 25%, 10%), gutter: 0cm,
								block(fill: unibas-mint, width: 100%, height: 100%, text(fill: black, presentation-title, size: 0.7em)),
								block(fill: unibas-mint-light, width: 100%, height: 100%, align(center, text(fill: black, presenter, size: 0.7em))),
								block(fill: unibas-mint, width: 100%, height: 100%, align(center, text(fill: black, logic.logical-slide.display() + [/] + utils.last-slide-number, size: 0.8em))),
				)))

  set page(
    header: header,
				footer: footer,
    margin: (top: 3em, bottom: 1em),
  )

  let content = {
    show: align.with(horizon)
    show: pad.with(1em)
    set text(fill: black)
    body 
  }
  polylux-slide(content)
}
