#let chapter_counter = counter("chapter")

#let title_page(title, course, body) = {
  block(
    height:20%,
    fill:none
  )
  align(center, text(25pt)[*#course*])
  align(center, text(20pt)[*#title*])
  block(
    height: 30%, 
    fill: none
  )
  pagebreak(weak: false)

  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(
    title: [Содержание],
    fill: line(length: 100%),
    indent: 2em,
  )
  pagebreak(weak: false)

  body
}

#let page_settings(doc) = [
  #set page(
    paper: "a4",
    margin: (
      top: 1.5cm, 
      left: 1.5cm,
      right: 1.5cm,
      bottom: 2.0cm,
    ),
  )
  #set text(
    font: "New Computer Modern",
  )

  #show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  
  #show raw.where(block: true): block.with(
    fill: luma(240),
    inset: 10pt,
    radius: 4pt,
  )

  #doc
]

#let footer_header(title, course, body) = {
  set page(
    footer: locate(
      loc => if (counter(page).at(loc).first() <= 2){
        none
      } else {
        let page_number = counter(page).at(loc).first()
        [#set align(center); #page_number]
      }
    ),
  )
  
  body
}
